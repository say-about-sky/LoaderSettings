import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.iface.ClassDef;
import org.jf.dexlib2.iface.Method;
import org.jf.dexlib2.iface.instruction.Instruction;
import org.jf.dexlib2.iface.instruction.ReferenceInstruction;
import org.jf.dexlib2.iface.reference.Reference;

import java.io.File;
import java.util.Set;
import java.util.TreeSet;

/**
 * 引用定位工具:扫描 dex,列出引用了目标成员(子串匹配)的类与方法。
 * 用法: RefFind <dex> <子串1> [子串2] ...
 */
public class RefFind {
    public static void main(String[] args) throws Exception {
        if (args.length < 2) {
            System.out.println("usage: RefFind <dex> <substr...>");
            return;
        }
        org.jf.dexlib2.dexbacked.DexBackedDexFile dex =
                new org.jf.dexlib2.dexbacked.DexBackedDexFile(Opcodes.forApi(29),
                        java.nio.file.Files.readAllBytes(new File(args[0]).toPath()));
        Set<String> out = new TreeSet<>();
        for (ClassDef cd : dex.getClasses()) {
            for (Method m : cd.getMethods()) {
                if (m.getImplementation() == null) continue;
                for (Instruction ins : m.getImplementation().getInstructions()) {
                    if (!(ins instanceof ReferenceInstruction)) continue;
                    Reference r = ((ReferenceInstruction) ins).getReference();
                    if (r == null) continue;
                    String s = r.toString();
                    boolean hit = false;
                    for (int i = 1; i < args.length && !hit; i++) {
                        if (s.contains(args[i])) hit = true;
                    }
                    if (hit) {
                        String define = cd.getType() + " -> " + m.getName() + "  >> " + s;
                        out.add(define);
                    }
                }
            }
        }
        for (String s : out) System.out.println(s);
        System.out.println("total=" + out.size());
    }
}
