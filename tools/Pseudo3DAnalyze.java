import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.ClassDef;
import org.jf.dexlib2.iface.MultiDexContainer;
import org.jf.dexlib2.iface.ExceptionHandler;
import org.jf.dexlib2.iface.Field;
import org.jf.dexlib2.iface.Method;
import org.jf.dexlib2.iface.MethodImplementation;
import org.jf.dexlib2.iface.MethodParameter;
import org.jf.dexlib2.iface.TryBlock;
import org.jf.dexlib2.iface.instruction.formats.ArrayPayload;
import org.jf.dexlib2.iface.instruction.FiveRegisterInstruction;
import org.jf.dexlib2.iface.instruction.Instruction;
import org.jf.dexlib2.iface.instruction.NarrowLiteralInstruction;
import org.jf.dexlib2.iface.instruction.OffsetInstruction;
import org.jf.dexlib2.iface.instruction.OneRegisterInstruction;
import org.jf.dexlib2.iface.instruction.ReferenceInstruction;
import org.jf.dexlib2.iface.instruction.SwitchElement;
import org.jf.dexlib2.iface.instruction.SwitchPayload;
import org.jf.dexlib2.iface.instruction.ThreeRegisterInstruction;
import org.jf.dexlib2.iface.instruction.TwoRegisterInstruction;
import org.jf.dexlib2.iface.instruction.WideLiteralInstruction;
import org.jf.dexlib2.iface.reference.FieldReference;
import org.jf.dexlib2.iface.reference.MethodReference;
import org.jf.dexlib2.iface.reference.Reference;
import org.jf.dexlib2.iface.reference.StringReference;
import org.jf.dexlib2.iface.reference.TypeReference;
import org.jf.dexlib2.iface.value.BooleanEncodedValue;
import org.jf.dexlib2.iface.value.ByteEncodedValue;
import org.jf.dexlib2.iface.value.CharEncodedValue;
import org.jf.dexlib2.iface.value.DoubleEncodedValue;
import org.jf.dexlib2.iface.value.EncodedValue;
import org.jf.dexlib2.iface.value.FloatEncodedValue;
import org.jf.dexlib2.iface.value.IntEncodedValue;
import org.jf.dexlib2.iface.value.LongEncodedValue;
import org.jf.dexlib2.iface.value.ShortEncodedValue;
import org.jf.dexlib2.iface.value.StringEncodedValue;
import org.jf.dexlib2.iface.value.TypeEncodedValue;
// (writer 侧 API 不在 slim jar 中;合并/导出走 smali 文本路线,本工具专注“解析”)

import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.*;

/**
 * 伪3D mod dex vs 整合包 dex 对比/合并工具(dexlib2)。
 *
 * report 模式:逐类对比(mod 的 21 个类 vs 包内同类)——字段/方法(指令级)差异明细 + 引用完整性检查。
 * (合并/导出走 smali 文本路线。)
 *
 * 用法:
 *   Pseudo3DAnalyze report <modDex> <reportOutTxt> <packDex1> [packDex2 ...]
 *
 * 注:合并结果建议再做一轮 baksmali -> smali 往返(smali 汇编器负责成员排序规范化)。
 */
public class Pseudo3DAnalyze {

    static final Opcodes OPS = Opcodes.forApi(29);
    static final int MAX_DETAIL = 40; // 每类最多列出的差异条数

    static final String[] WL_PREFIX = {
            "Ljava/", "Ljavax/", "Landroid/", "Landroidx/", "Ldalvik/", "Lsun/",
            "Lorg/w3c/", "Lorg/xml/", "Lorg/json/", "Lorg/intellij/", "Lorg/jetbrains/",
            "Ljunit/", "Lorg/junit/", "Lkotlin/", "Lkotlinx/", "Lcom/google/", "Lorg/apache/"
    };

    public static void main(String[] args) throws Exception {
        if (args.length < 4) {
            System.out.println("usage: Pseudo3DAnalyze report <modDex> <reportOutTxt> <packDex...>");
            return;
        }
        String mode = args[0];
        File modF = new File(args[1]);
        File outF = new File(args[2]);
        List<File> packFs = new ArrayList<>();
        for (int i = 3; i < args.length; i++) packFs.add(new File(args[i]));

        List<DexBackedDexFile> modDexes = loadAll(modF);
        Map<String, ClassDef> packClasses = new HashMap<>();
        int packCount = 0;
        for (File f : packFs) {
            for (DexBackedDexFile d : loadAll(f)) {
                for (ClassDef c : d.getClasses()) {
                    packCount++;
                    packClasses.putIfAbsent(c.getType(), c);
                }
            }
        }

        List<ClassDef> modClasses = new ArrayList<>();
        for (DexBackedDexFile d : modDexes) for (ClassDef c : d.getClasses()) modClasses.add(c);
        modClasses.sort(Comparator.comparing(ClassDef::getType));

        StringBuilder rep = new StringBuilder();
        rep.append("Pseudo3DAnalyze 报告\n");
        rep.append("mod dex : ").append(modF.getPath()).append("   (classes=").append(modClasses.size()).append(")\n");
        rep.append("pack dex: ");
        for (File f : packFs) rep.append(f.getName()).append(' ');
        rep.append("  (class_defs=").append(packCount).append(", 去重后=").append(packClasses.size()).append(")\n\n");

        int nDiffClasses = 0, nNewClasses = 0;
        int mChanged = 0, mAdded = 0, mRemoved = 0;
        int fAdded = 0, fRemoved = 0, fChanged = 0;
        int mTotal = 0, fTotal = 0;

        for (ClassDef mc : modClasses) {
            String simple = simpleName(mc.getType());
            ClassDef pc = packClasses.get(mc.getType());
            if (pc == null) {
                nNewClasses++;
                rep.append("【").append(simple).append("】 *** 新增类(包内不存在)→ 整体采用 mod 版 ***\n\n");
                continue;
            }

            StringBuilder cd = new StringBuilder();
            int clsDiffs = 0;

            // ---- 类元信息 ----
            if (pc.getAccessFlags() != mc.getAccessFlags())
                cd.append("  class.access: ").append(Integer.toHexString(pc.getAccessFlags()))
                  .append(" -> ").append(Integer.toHexString(mc.getAccessFlags())).append('\n');
            if (!Objects.equals(pc.getSuperclass(), mc.getSuperclass()))
                cd.append("  class.super: ").append(pc.getSuperclass()).append(" -> ").append(mc.getSuperclass()).append('\n');
            List<String> pi = new ArrayList<>(pc.getInterfaces()), mi2 = new ArrayList<>(mc.getInterfaces());
            Collections.sort(pi); Collections.sort(mi2);
            if (!pi.equals(mi2))
                cd.append("  class.interfaces: ").append(pi).append(" -> ").append(mi2).append('\n');

            // ---- 字段 ----
            Map<String, Field> pf = new LinkedHashMap<>(), mf = new LinkedHashMap<>();
            for (Field f : allFields(pc)) pf.put(f.getName(), f);
            for (Field f : allFields(mc)) mf.put(f.getName(), f);
            int fAdd = 0, fRem = 0, fChg = 0;
            int shownF = 0;
            for (String n : mf.keySet()) {
                Field a = pf.get(n), b = mf.get(n);
                if (a == null) {
                    fAdd++;
                    if (shownF++ < MAX_DETAIL) cd.append("  + 字段 ").append(n).append(':').append(b.getType())
                            .append(" = ").append(ev(b.getInitialValue())).append(" (仅 mod)\n");
                } else if (!a.getType().equals(b.getType()) || a.getAccessFlags() != b.getAccessFlags()
                        || !Objects.equals(ev(a.getInitialValue()), ev(b.getInitialValue()))) {
                    fChg++;
                    if (shownF++ < MAX_DETAIL) {
                        cd.append("  ~ 字段 ").append(n).append(':').append(a.getType())
                          .append(" = ").append(ev(a.getInitialValue())).append("  ->  ")
                          .append(b.getType()).append(" = ").append(ev(b.getInitialValue()));
                        if (a.getAccessFlags() != b.getAccessFlags())
                            cd.append(" [access 0x").append(Integer.toHexString(a.getAccessFlags()))
                              .append(" -> 0x").append(Integer.toHexString(b.getAccessFlags())).append(']');
                        cd.append('\n');
                    }
                }
            }
            for (String n : pf.keySet()) {
                if (!mf.containsKey(n)) {
                    fRem++;
                    if (shownF++ < MAX_DETAIL) cd.append("  - 字段 ").append(n).append(':').append(pf.get(n).getType()).append(" (仅 pack)\n");
                }
            }

            // ---- 方法 ----
            Map<String, Method> pm = new LinkedHashMap<>(), mm = new LinkedHashMap<>();
            for (Method m : pc.getMethods()) pm.put(sig(m), m);
            for (Method m : mc.getMethods()) mm.put(sig(m), m);
            int mAdd = 0, mRem = 0, mChg = 0;
            int shownM = 0;
            for (Map.Entry<String, Method> e : mm.entrySet()) {
                Method a = pm.get(e.getKey()), b = e.getValue();
                if (a == null) {
                    mAdd++;
                    if (shownM++ < MAX_DETAIL) cd.append("  + 方法 ").append(fmtMeth(b)).append(" (仅 mod)\n");
                } else {
                    String fa = fp(a), fb = fp(b);
                    if (!fa.equals(fb)) {
                        mChg++;
                        if (shownM++ < MAX_DETAIL) {
                            cd.append("  ~ 方法 ").append(fmtMeth(b))
                              .append("  insns ").append(countInsns(a)).append(" -> ").append(countInsns(b))
                              .append(", regs ").append(regCount(a)).append(" -> ").append(regCount(b));
                            String[] la = fa.split("\n", -1), lb = fb.split("\n", -1);
                            int i = 0;
                            while (i < la.length && i < lb.length && la[i].equals(lb[i])) i++;
                            cd.append(", 首差@#").append(i).append('\n');
                            cd.append("       pack: ").append(orDash(i < la.length ? la[i] : "<end>")).append('\n');
                            cd.append("       mod : ").append(orDash(i < lb.length ? lb[i] : "<end>")).append('\n');
                            Set<String> rad = refMembers(a), rbd = refMembers(b);
                            List<String> addR = new ArrayList<>(), delR = new ArrayList<>();
                            for (String s : rbd) if (!rad.contains(s)) addR.add(s);
                            for (String s : rad) if (!rbd.contains(s)) delR.add(s);
                            if (!addR.isEmpty()) cd.append("       +引用: ").append(joinShort(addR)).append('\n');
                            if (!delR.isEmpty()) cd.append("       -引用: ").append(joinShort(delR)).append('\n');
                        }
                    }
                }
            }
            for (String k : pm.keySet()) {
                if (!mm.containsKey(k)) {
                    mRem++;
                    if (shownM++ < MAX_DETAIL) cd.append("  - 方法 ").append(fmtMeth(pm.get(k))).append(" (仅 pack)\n");
                }
            }

            mTotal += mm.size(); fTotal += mf.size();
            if (fAdd + fRem + fChg + mAdd + mRem + mChg + clsDiffs > 0 || cd.length() > 0) {
                nDiffClasses++;
                rep.append("【").append(simple).append("】 方法 pack=").append(pm.size()).append(" mod=").append(mm.size()).append(" —— ")
                   .append("字段 +").append(fAdd).append("/-").append(fRem).append("/~").append(fChg)
                   .append(" ; 方法 +").append(mAdd).append("/-").append(mRem).append("/~").append(mChg).append('\n');
                rep.append(cd);
                rep.append('\n');
            } else {
                rep.append("【").append(simple).append("】 OK(与包内完全一致)\n\n");
            }
            mChanged += mChg; mAdded += mAdd; mRemoved += mRem;
            fAdded += fAdd; fRemoved += fRem; fChanged += fChg;
        }

        rep.append("===== 汇总 =====\n");
        rep.append("mod 类=").append(modClasses.size()).append("  新增类=").append(nNewClasses)
           .append("  有差异类=").append(nDiffClasses)
           .append("  方法: 修改=").append(mChanged).append(" 新增=").append(mAdded).append(" 移除=").append(mRemoved)
           .append(" (mod 方法总数=").append(mTotal).append(")\n");
        rep.append("字段: 新增=").append(fAdded).append(" 修改=").append(fChanged).append(" 移除=").append(fRemoved)
           .append(" (mod 字段总数=").append(fTotal).append(")\n\n");

        // ---- 引用完整性 ----
        Map<String, ClassDef> resolveIdx = new HashMap<>(packClasses);
        for (ClassDef c : modClasses) resolveIdx.put(c.getType(), c);
        Map<String, Set<String>> memberCache = new HashMap<>();
        List<String> unresolved = new ArrayList<>();
        Set<String> seen = new HashSet<>();
        int refCount = 0;
        for (ClassDef mc : modClasses) {
            if (mc.getSuperclass() != null) { refCount++; chkType(mc.getSuperclass(), resolveIdx, unresolved, seen); }
            for (String itf : mc.getInterfaces()) { refCount++; chkType(itf, resolveIdx, unresolved, seen); }
            for (Field f : allFields(mc)) { refCount++; chkType(f.getType(), resolveIdx, unresolved, seen); }
            for (Method m : mc.getMethods()) {
                refCount++;
                chkType(m.getReturnType(), resolveIdx, unresolved, seen);
                for (MethodParameter p : m.getParameters()) { refCount++; chkType(p.getType(), resolveIdx, unresolved, seen); }
                MethodImplementation mi = m.getImplementation();
                if (mi == null) continue;
                for (Instruction in : mi.getInstructions()) {
                    if (!(in instanceof ReferenceInstruction)) continue;
                    refCount++;
                    Reference r = ((ReferenceInstruction) in).getReference();
                    if (r instanceof MethodReference) {
                        MethodReference mr = (MethodReference) r;
                        ClassDef t = resolveIdx.get(mr.getDefiningClass());
                        if (t == null) { if (!isWhitelisted(mr.getDefiningClass())) add1(unresolved, seen, "缺类(方法): " + mr.getDefiningClass()); }
                        else if (!members(t, resolveIdx, memberCache).contains("M:" + mr.getName() + "(" + joinCSA(mr.getParameterTypes()) + ")" + mr.getReturnType()))
                            add1(unresolved, seen, "缺方法: " + mr.getDefiningClass() + "->" + mr.getName() + "(" + joinCSA(mr.getParameterTypes()) + ")" + mr.getReturnType());
                    } else if (r instanceof FieldReference) {
                        FieldReference fr = (FieldReference) r;
                        ClassDef t = resolveIdx.get(fr.getDefiningClass());
                        if (t == null) { if (!isWhitelisted(fr.getDefiningClass())) add1(unresolved, seen, "缺类(字段): " + fr.getDefiningClass()); }
                        else if (!members(t, resolveIdx, memberCache).contains("F:" + fr.getName() + ":" + fr.getType()))
                            add1(unresolved, seen, "缺字段: " + fr.getDefiningClass() + "->" + fr.getName() + ":" + fr.getType());
                    } else if (r instanceof TypeReference) {
                        chkType(((TypeReference) r).getType(), resolveIdx, unresolved, seen);
                    }
                }
                for (TryBlock<? extends ExceptionHandler> tb : mi.getTryBlocks())
                    for (ExceptionHandler h : tb.getExceptionHandlers())
                        if (h.getExceptionType() != null) chkType(h.getExceptionType(), resolveIdx, unresolved, seen);
            }
        }
        rep.append("===== 引用完整性(mod 21 类,共 ").append(refCount).append(" 个引用) =====\n");
        if (unresolved.isEmpty()) rep.append("全部可解析 ✓(方法/字段/类型引用均能在 包 dex ∪ mod dex 中找到)\n");
        else {
            rep.append("未解析引用 ").append(unresolved.size()).append(" 个:\n");
            for (String u : unresolved) rep.append("  ").append(u).append('\n');
        }

        rep.append("\n(注:合并/重建走 smali 文本路线——报告确认差异后,按差异清单在 smali 上处理。)\n");

        Files.write(outF.toPath(), rep.toString().getBytes(StandardCharsets.UTF_8));

        // ASCII 概要(控制台安全)
        System.out.println("REPORT: mod_classes=" + modClasses.size()
                + " new=" + nNewClasses
                + " diff_classes=" + nDiffClasses
                + " methods(chg/add/rem)=" + mChanged + "/" + mAdded + "/" + mRemoved
                + " fields(add/chg/rem)=" + fAdded + "/" + fChanged + "/" + fRemoved
                + " unresolved_refs=" + unresolved.size());
    }

    // ---------- helpers ----------

    static List<DexBackedDexFile> loadAll(File f) throws Exception {
        List<DexBackedDexFile> out = new ArrayList<>();
        MultiDexContainer<? extends DexBackedDexFile> c = DexFileFactory.loadDexContainer(f, OPS);
        for (String n : c.getDexEntryNames()) out.add(c.getEntry(n).getDexFile());
        return out;
    }

    static List<Field> allFields(ClassDef c) {
        List<Field> l = new ArrayList<>();
        for (Field f : c.getStaticFields()) l.add(f);
        for (Field f : c.getInstanceFields()) l.add(f);
        return l;
    }

    /** mod 版本相对 pack 版本新增/删除的“成员级引用”(类名已简化为末段)。 */
    static Set<String> refMembers(Method m) {
        Set<String> s = new TreeSet<>();
        MethodImplementation mi = m.getImplementation();
        if (mi == null) return s;
        for (Instruction in : mi.getInstructions()) {
            if (!(in instanceof ReferenceInstruction)) continue;
            Reference r = ((ReferenceInstruction) in).getReference();
            if (r instanceof MethodReference) {
                MethodReference mr = (MethodReference) r;
                s.add(simpleName(mr.getDefiningClass()) + "->" + mr.getName());
            } else if (r instanceof FieldReference) {
                FieldReference fr = (FieldReference) r;
                s.add(simpleName(fr.getDefiningClass()) + "->" + fr.getName());
            } else if (r instanceof TypeReference) {
                s.add(simpleName(((TypeReference) r).getType()));
            }
        }
        return s;
    }

    static String joinShort(Collection<String> c) {
        StringBuilder sb = new StringBuilder();
        int n = 0;
        for (String s : c) { if (n > 0) sb.append(", "); sb.append(s); if (++n >= 14) { sb.append(", …"); break; } }
        return sb.toString();
    }

    static boolean isWhitelisted(String t) {
        for (String w : WL_PREFIX) if (t.startsWith(w)) return true;
        return false;
    }

    static void chkType(String t, Map<String, ClassDef> idx, List<String> out, Set<String> seen) {
        if (t == null) return;
        if (t.startsWith("[")) { chkType(t.substring(1), idx, out, seen); return; }
        if (!t.startsWith("L")) return;
        if (idx.containsKey(t)) return;
        if (isWhitelisted(t)) return;
        add1(out, seen, "缺类型: " + t);
    }

    static void add1(List<String> out, Set<String> seen, String s) { if (seen.add(s)) out.add(s); }

    static Set<String> members(ClassDef c, Map<String, ClassDef> idx, Map<String, Set<String>> cache) {
        Set<String> s = cache.get(c.getType());
        if (s != null) return s;
        s = new HashSet<>();
        collectMembers(c, idx, s, new HashSet<>());
        cache.put(c.getType(), s);
        return s;
    }

    static void collectMembers(ClassDef c, Map<String, ClassDef> idx, Set<String> s, Set<String> visited) {
        if (c == null || !visited.add(c.getType())) return;
        for (Method m : c.getMethods()) s.add("M:" + m.getName() + "(" + joinCSA(protoParams(m)) + ")" + m.getReturnType());
        for (Field f : allFields(c)) s.add("F:" + f.getName() + ":" + f.getType());
        if (c.getSuperclass() != null) collectMembers(idx.get(c.getSuperclass()), idx, s, visited);
        for (String itf : c.getInterfaces()) collectMembers(idx.get(itf), idx, s, visited);
    }

    static List<String> protoParams(Method m) {
        List<String> l = new ArrayList<>();
        for (MethodParameter p : m.getParameters()) l.add(p.getType());
        return l;
    }

    static List<String> protoParams(MethodReference m) {
        List<String> l = new ArrayList<>();
        for (CharSequence p : m.getParameterTypes()) l.add(p.toString());
        return l;
    }

    static String joinCSA(Iterable<? extends CharSequence> l) {
        StringBuilder sb = new StringBuilder();
        boolean first = true;
        for (CharSequence s : l) { if (!first) sb.append(','); first = false; sb.append(s); }
        return sb.toString();
    }

    static String simpleName(String t) {
        int i = t.lastIndexOf('/');
        String s = t.substring(i + 1);
        if (s.startsWith("L") && s.endsWith(";")) s = s.substring(1, s.length() - 1);
        else if (s.endsWith(";")) s = s.substring(0, s.length() - 1);
        return s;
    }

    static String sig(Method m) { return m.getName() + "(" + joinCSA(protoParams(m)) + ")" + m.getReturnType(); }

    static String fmtMeth(Method m) {
        StringBuilder sb = new StringBuilder(m.getName()).append('(');
        List<String> p = protoParams(m);
        for (int i = 0; i < p.size(); i++) { if (i > 0) sb.append(", "); sb.append(simpleName(p.get(i))); }
        return sb.append(")").append(simpleName(m.getReturnType())).toString();
    }

    static int countInsns(Method m) {
        MethodImplementation mi = m.getImplementation();
        if (mi == null) return 0;
        int n = 0;
        for (Instruction ignored : mi.getInstructions()) n++;
        return n;
    }

    static int regCount(Method m) {
        MethodImplementation mi = m.getImplementation();
        return mi == null ? 0 : mi.getRegisterCount();
    }

    static String orDash(String s) {
        s = s.trim();
        return s.length() > 160 ? s.substring(0, 160) + "…" : s;
    }

    /** 方法体的规范化指纹(与调试信息无关;仅顺序指令 + try/catch)。 */
    static String fp(Method m) {
        MethodImplementation mi = m.getImplementation();
        if (mi == null) return "<no-code>";
        StringBuilder sb = new StringBuilder();
        sb.append("regs=").append(mi.getRegisterCount()).append('\n');
        for (Instruction in : mi.getInstructions()) {
            if (in.getOpcode() != null && "nop".equals(in.getOpcode().name)) continue;
            sb.append(insLine(in)).append('\n');
        }
        for (TryBlock<? extends ExceptionHandler> tb : mi.getTryBlocks()) {
            sb.append("try ").append(tb.getStartCodeAddress()).append('\n');
            for (ExceptionHandler h : tb.getExceptionHandlers())
                sb.append("  catch ").append(h.getExceptionType()).append(" -> ").append(h.getHandlerCodeAddress()).append('\n');
        }
        return sb.toString();
    }

    static String insLine(Instruction in) {
        StringBuilder sb = new StringBuilder();
        sb.append(in.getOpcode() == null ? "payload" : in.getOpcode().name);
        if (in instanceof FiveRegisterInstruction) {
            FiveRegisterInstruction r = (FiveRegisterInstruction) in;
            sb.append(" {v").append(r.getRegisterC()).append(",v").append(r.getRegisterD())
              .append(",v").append(r.getRegisterE()).append(",v").append(r.getRegisterF())
              .append(",v").append(r.getRegisterG()).append('}');
        } else if (in instanceof ThreeRegisterInstruction) {
            ThreeRegisterInstruction r = (ThreeRegisterInstruction) in;
            sb.append(" {v").append(r.getRegisterA()).append(",v").append(r.getRegisterB()).append(",v").append(r.getRegisterC()).append('}');
        } else if (in instanceof TwoRegisterInstruction) {
            TwoRegisterInstruction r = (TwoRegisterInstruction) in;
            sb.append(" {v").append(r.getRegisterA()).append(",v").append(r.getRegisterB()).append('}');
        } else if (in instanceof OneRegisterInstruction) {
            sb.append(" v").append(((OneRegisterInstruction) in).getRegisterA());
        }
        if (in instanceof NarrowLiteralInstruction) sb.append(" #").append(((NarrowLiteralInstruction) in).getNarrowLiteral());
        if (in instanceof WideLiteralInstruction) sb.append(" #").append(((WideLiteralInstruction) in).getWideLiteral());
        if (in instanceof ReferenceInstruction) sb.append(" ").append(refStr(((ReferenceInstruction) in).getReference()));
        if (in instanceof OffsetInstruction) sb.append(" @").append(((OffsetInstruction) in).getCodeOffset());
        if (in instanceof SwitchPayload) {
            sb.append(" switch[");
            for (SwitchElement e : ((SwitchPayload) in).getSwitchElements()) sb.append(e.getKey()).append("->").append(e.getOffset()).append(',');
            sb.append(']');
        }
        if (in instanceof ArrayPayload) {
            ArrayPayload ap = (ArrayPayload) in;
            sb.append(" array[w").append(ap.getElementWidth()).append("]:");
            for (Number n : ap.getArrayElements()) sb.append(n).append(',');
        }
        return sb.toString();
    }

    static String refStr(Reference r) {
        if (r instanceof MethodReference) {
            MethodReference m = (MethodReference) r;
            return m.getDefiningClass() + "->" + m.getName() + "(" + joinCSA(protoParams(m)) + ")" + m.getReturnType();
        }
        if (r instanceof FieldReference) {
            FieldReference f = (FieldReference) r;
            return f.getDefiningClass() + "->" + f.getName() + ":" + f.getType();
        }
        if (r instanceof TypeReference) return ((TypeReference) r).getType();
        if (r instanceof StringReference) {
            String s = ((StringReference) r).getString();
            return "\"" + (s.length() > 60 ? s.substring(0, 60) + "…" : s) + "\"";
        }
        return String.valueOf(r);
    }

    static String ev(EncodedValue v) {
        if (v == null) return "null";
        if (v instanceof IntEncodedValue) return Integer.toString(((IntEncodedValue) v).getValue());
        if (v instanceof LongEncodedValue) return ((LongEncodedValue) v).getValue() + "L";
        if (v instanceof BooleanEncodedValue) return Boolean.toString(((BooleanEncodedValue) v).getValue());
        if (v instanceof ByteEncodedValue) return Byte.toString(((ByteEncodedValue) v).getValue());
        if (v instanceof ShortEncodedValue) return Short.toString(((ShortEncodedValue) v).getValue());
        if (v instanceof CharEncodedValue) return Character.toString(((CharEncodedValue) v).getValue());
        if (v instanceof FloatEncodedValue) return ((FloatEncodedValue) v).getValue() + "f";
        if (v instanceof DoubleEncodedValue) return ((DoubleEncodedValue) v).getValue() + "d";
        if (v instanceof StringEncodedValue) return "\"" + ((StringEncodedValue) v).getValue() + "\"";
        if (v instanceof TypeEncodedValue) return ((TypeEncodedValue) v).getValue();
        return v.toString();
    }
}
