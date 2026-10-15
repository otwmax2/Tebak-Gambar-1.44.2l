package q;

import java.lang.reflect.Array;
import java.text.DecimalFormat;

/* JADX INFO: compiled from: TimeCycleSplineSet.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a f33733a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f33737e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f33738f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected long f33741i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f33734b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int[] f33735c = new int[10];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected float[][] f33736d = (float[][]) Array.newInstance((Class<?>) float.class, 10, 3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected float[] f33739g = new float[3];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected boolean f33740h = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected float f33742j = Float.NaN;

    public String toString() {
        String str = this.f33738f;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i10 = 0; i10 < this.f33737e; i10++) {
            str = str + "[" + this.f33735c[i10] + " , " + decimalFormat.format(this.f33736d[i10]) + "] ";
        }
        return str;
    }
}
