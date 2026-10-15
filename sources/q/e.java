package q;

import java.text.DecimalFormat;

/* JADX INFO: compiled from: SplineSet.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a f33728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int[] f33729b = new int[10];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected float[] f33730c = new float[10];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f33731d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f33732e;

    public float a(float f10) {
        return (float) this.f33728a.a(f10, 0);
    }

    public String toString() {
        String str = this.f33732e;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i10 = 0; i10 < this.f33731d; i10++) {
            str = str + "[" + this.f33729b[i10] + " , " + decimalFormat.format(this.f33730c[i10]) + "] ";
        }
        return str;
    }
}
