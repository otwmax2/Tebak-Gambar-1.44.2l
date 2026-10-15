package p;

import com.vungle.mediation.BuildConfig;
import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: compiled from: SolverVariable.java */
/* JADX INFO: loaded from: classes.dex */
public class i implements Comparable<i> {
    private static int F = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f33476o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f33477p;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f33481t;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    a f33485x;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f33478q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f33479r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f33480s = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f33482u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    float[] f33483v = new float[9];

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    float[] f33484w = new float[9];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    b[] f33486y = new b[16];

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    int f33487z = 0;
    public int A = 0;
    boolean B = false;
    int C = -1;
    float D = 0.0f;
    HashSet<b> E = null;

    /* JADX INFO: compiled from: SolverVariable.java */
    public enum a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public i(a aVar, String str) {
        this.f33485x = aVar;
    }

    static void f() {
        F++;
    }

    public final void c(b bVar) {
        int i10 = 0;
        while (true) {
            int i11 = this.f33487z;
            if (i10 >= i11) {
                b[] bVarArr = this.f33486y;
                if (i11 >= bVarArr.length) {
                    this.f33486y = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                b[] bVarArr2 = this.f33486y;
                int i12 = this.f33487z;
                bVarArr2[i12] = bVar;
                this.f33487z = i12 + 1;
                return;
            }
            if (this.f33486y[i10] == bVar) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public int compareTo(i iVar) {
        return this.f33478q - iVar.f33478q;
    }

    public final void g(b bVar) {
        int i10 = this.f33487z;
        int i11 = 0;
        while (i11 < i10) {
            if (this.f33486y[i11] == bVar) {
                while (i11 < i10 - 1) {
                    b[] bVarArr = this.f33486y;
                    int i12 = i11 + 1;
                    bVarArr[i11] = bVarArr[i12];
                    i11 = i12;
                }
                this.f33487z--;
                return;
            }
            i11++;
        }
    }

    public void i() {
        this.f33477p = null;
        this.f33485x = a.UNKNOWN;
        this.f33480s = 0;
        this.f33478q = -1;
        this.f33479r = -1;
        this.f33481t = 0.0f;
        this.f33482u = false;
        this.B = false;
        this.C = -1;
        this.D = 0.0f;
        int i10 = this.f33487z;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f33486y[i11] = null;
        }
        this.f33487z = 0;
        this.A = 0;
        this.f33476o = false;
        Arrays.fill(this.f33484w, 0.0f);
    }

    public void j(d dVar, float f10) {
        this.f33481t = f10;
        this.f33482u = true;
        this.B = false;
        this.C = -1;
        this.D = 0.0f;
        int i10 = this.f33487z;
        this.f33479r = -1;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f33486y[i11].A(dVar, this, false);
        }
        this.f33487z = 0;
    }

    public void k(a aVar, String str) {
        this.f33485x = aVar;
    }

    public final void l(d dVar, b bVar) {
        int i10 = this.f33487z;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f33486y[i11].B(dVar, bVar, false);
        }
        this.f33487z = 0;
    }

    public String toString() {
        if (this.f33477p != null) {
            return BuildConfig.FLAVOR + this.f33477p;
        }
        return BuildConfig.FLAVOR + this.f33478q;
    }
}
