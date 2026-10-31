package com.saysky.ui.kit;

import java.util.ArrayList;
import java.util.List;

import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Value;
import com.badlogic.gdx.graphics.Color;

/**
 * Native pie chart ({@code PieChart}) fed from plain arrays.
 *
 * <p>Shares are normalised by the game renderer; pass raw values (counts, weights, …).</p>
 */
public final class UiPie extends PieChart implements UiElem<UiPie> {

    private final Data data;

    public UiPie(int x, int y, int size, float[] values, Color[] colors) {
        this(x, y, size, size, values, colors);
    }

    public UiPie(int x, int y, int width, int height, float[] values, Color[] colors) {
        super(x, y, width, height, null, null);
        data = new Data(values, colors);
        this.pieChartData = data;
    }

    /** Replaces the slice values in place (no re-mount needed). */
    public UiPie values(float[] values) {
        data.update(values);
        return this;
    }

    @Override
    public MenuElement element() {
        return this;
    }

    @Override
    public UiPie self() {
        return this;
    }

    /** Colour provider: slice i uses {@code colors[i % colors.length]}. */
    static final class Data extends PieChart_Data {

        private final List<PieChart_Value> values = new ArrayList<PieChart_Value>();
        private float[] r = new float[0];
        private float[] g = new float[0];
        private float[] b = new float[0];

        Data(float[] raw, Color[] colors) {
            super();
            update(raw);
            this.r = new float[colors == null ? 0 : colors.length];
            this.g = new float[colors == null ? 0 : colors.length];
            this.b = new float[colors == null ? 0 : colors.length];
            if (colors != null) {
                for (int i = 0; i < colors.length; i++) {
                    Color c = colors[i] == null ? new Color(0.43f, 0.43f, 0.43f, 1f) : colors[i];
                    r[i] = c.r;
                    g[i] = c.g;
                    b[i] = c.b;
                }
            }
        }

        void update(float[] raw) {
            values.clear();
            if (raw != null) {
                for (int i = 0; i < raw.length; i++) {
                    if (raw[i] > 0.0001f) {
                        values.add(new PieChart_Value(i, raw[i]));
                    }
                }
            }
            if (values.isEmpty()) {
                values.add(new PieChart_Value(-1, 1f));
            }
        }

        @Override
        public void addPieChartValues(PieChart_Value value) {
        }

        @Override
        public int getPieChartValuesSize() {
            return values.size();
        }

        @Override
        public PieChart_Value getPieChartValue(int i) {
            return i < 0 || i >= values.size() ? null : values.get(i);
        }

        @Override
        public void sortAndBuild_PieChartValues() {
        }

        private int dataId(int i) {
            PieChart_Value v = getPieChartValue(i);
            return v == null ? -1 : v.getDataID();
        }

        @Override
        public float getPieChartValue_ColorR(int i) {
            int id = dataId(i);
            return id >= 0 && id < r.length ? r[id] : 0.43f;
        }

        @Override
        public float getPieChartValue_ColorG(int i) {
            int id = dataId(i);
            return id >= 0 && id < g.length ? g[id] : 0.43f;
        }

        @Override
        public float getPieChartValue_ColorB(int i) {
            int id = dataId(i);
            return id >= 0 && id < b.length ? b[id] : 0.43f;
        }
    }
}
