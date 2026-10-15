package q;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: KeyCycleOscillator.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f33720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f33721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f33722c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f33723d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f33724e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ArrayList<b> f33725f = new ArrayList<>();

    /* JADX INFO: compiled from: KeyCycleOscillator.java */
    static class a {
        public double a(float f10) {
            throw null;
        }
    }

    /* JADX INFO: compiled from: KeyCycleOscillator.java */
    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f33726a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f33727b;
    }

    public float a(float f10) {
        return (float) this.f33720a.a(f10);
    }

    public String toString() {
        String str = this.f33721b;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<b> it = this.f33725f.iterator();
        while (it.hasNext()) {
            str = str + "[" + it.next().f33726a + " , " + decimalFormat.format(r3.f33727b) + "] ";
        }
        return str;
    }
}
