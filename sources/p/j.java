package p;

import com.facebook.appevents.integrity.IntegrityManager;
import java.util.Arrays;
import p.b;

/* JADX INFO: compiled from: SolverVariableValues.java */
/* JADX INFO: loaded from: classes.dex */
public class j implements b.a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static float f33494n = 0.001f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f33495a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f33496b = 16;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f33497c = 16;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int[] f33498d = new int[16];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int[] f33499e = new int[16];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int[] f33500f = new int[16];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float[] f33501g = new float[16];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int[] f33502h = new int[16];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int[] f33503i = new int[16];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f33504j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f33505k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final b f33506l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected final c f33507m;

    j(b bVar, c cVar) {
        this.f33506l = bVar;
        this.f33507m = cVar;
        clear();
    }

    private void l(i iVar, int i10) {
        int[] iArr;
        int i11 = iVar.f33478q % this.f33497c;
        int[] iArr2 = this.f33498d;
        int i12 = iArr2[i11];
        if (i12 == -1) {
            iArr2[i11] = i10;
        } else {
            while (true) {
                iArr = this.f33499e;
                if (iArr[i12] == -1) {
                    break;
                } else {
                    i12 = iArr[i12];
                }
            }
            iArr[i12] = i10;
        }
        this.f33499e[i10] = -1;
    }

    private void m(int i10, i iVar, float f10) {
        this.f33500f[i10] = iVar.f33478q;
        this.f33501g[i10] = f10;
        this.f33502h[i10] = -1;
        this.f33503i[i10] = -1;
        iVar.c(this.f33506l);
        iVar.A++;
        this.f33504j++;
    }

    private int n() {
        for (int i10 = 0; i10 < this.f33496b; i10++) {
            if (this.f33500f[i10] == -1) {
                return i10;
            }
        }
        return -1;
    }

    private void o() {
        int i10 = this.f33496b * 2;
        this.f33500f = Arrays.copyOf(this.f33500f, i10);
        this.f33501g = Arrays.copyOf(this.f33501g, i10);
        this.f33502h = Arrays.copyOf(this.f33502h, i10);
        this.f33503i = Arrays.copyOf(this.f33503i, i10);
        this.f33499e = Arrays.copyOf(this.f33499e, i10);
        for (int i11 = this.f33496b; i11 < i10; i11++) {
            this.f33500f[i11] = -1;
            this.f33499e[i11] = -1;
        }
        this.f33496b = i10;
    }

    private void q(int i10, i iVar, float f10) {
        int iN = n();
        m(iN, iVar, f10);
        if (i10 != -1) {
            this.f33502h[iN] = i10;
            int[] iArr = this.f33503i;
            iArr[iN] = iArr[i10];
            iArr[i10] = iN;
        } else {
            this.f33502h[iN] = -1;
            if (this.f33504j > 0) {
                this.f33503i[iN] = this.f33505k;
                this.f33505k = iN;
            } else {
                this.f33503i[iN] = -1;
            }
        }
        int[] iArr2 = this.f33503i;
        if (iArr2[iN] != -1) {
            this.f33502h[iArr2[iN]] = iN;
        }
        l(iVar, iN);
    }

    private void r(i iVar) {
        int[] iArr;
        int i10 = iVar.f33478q;
        int i11 = i10 % this.f33497c;
        int[] iArr2 = this.f33498d;
        int i12 = iArr2[i11];
        if (i12 == -1) {
            return;
        }
        if (this.f33500f[i12] == i10) {
            int[] iArr3 = this.f33499e;
            iArr2[i11] = iArr3[i12];
            iArr3[i12] = -1;
            return;
        }
        while (true) {
            iArr = this.f33499e;
            if (iArr[i12] == -1 || this.f33500f[iArr[i12]] == i10) {
                break;
            } else {
                i12 = iArr[i12];
            }
        }
        int i13 = iArr[i12];
        if (i13 == -1 || this.f33500f[i13] != i10) {
            return;
        }
        iArr[i12] = iArr[i13];
        iArr[i13] = -1;
    }

    @Override // p.b.a
    public void a(i iVar, float f10) {
        float f11 = f33494n;
        if (f10 > (-f11) && f10 < f11) {
            h(iVar, true);
            return;
        }
        if (this.f33504j == 0) {
            m(0, iVar, f10);
            l(iVar, 0);
            this.f33505k = 0;
            return;
        }
        int iP = p(iVar);
        if (iP != -1) {
            this.f33501g[iP] = f10;
            return;
        }
        if (this.f33504j + 1 >= this.f33496b) {
            o();
        }
        int i10 = this.f33504j;
        int i11 = this.f33505k;
        int i12 = -1;
        for (int i13 = 0; i13 < i10; i13++) {
            int[] iArr = this.f33500f;
            int i14 = iArr[i11];
            int i15 = iVar.f33478q;
            if (i14 == i15) {
                this.f33501g[i11] = f10;
                return;
            }
            if (iArr[i11] < i15) {
                i12 = i11;
            }
            i11 = this.f33503i[i11];
            if (i11 == -1) {
                break;
            }
        }
        q(i12, iVar, f10);
    }

    @Override // p.b.a
    public void b(i iVar, float f10, boolean z10) {
        float f11 = f33494n;
        if (f10 <= (-f11) || f10 >= f11) {
            int iP = p(iVar);
            if (iP == -1) {
                a(iVar, f10);
                return;
            }
            float[] fArr = this.f33501g;
            fArr[iP] = fArr[iP] + f10;
            float f12 = fArr[iP];
            float f13 = f33494n;
            if (f12 <= (-f13) || fArr[iP] >= f13) {
                return;
            }
            fArr[iP] = 0.0f;
            h(iVar, z10);
        }
    }

    @Override // p.b.a
    public int c() {
        return this.f33504j;
    }

    @Override // p.b.a
    public void clear() {
        int i10 = this.f33504j;
        for (int i11 = 0; i11 < i10; i11++) {
            i iVarD = d(i11);
            if (iVarD != null) {
                iVarD.g(this.f33506l);
            }
        }
        for (int i12 = 0; i12 < this.f33496b; i12++) {
            this.f33500f[i12] = -1;
            this.f33499e[i12] = -1;
        }
        for (int i13 = 0; i13 < this.f33497c; i13++) {
            this.f33498d[i13] = -1;
        }
        this.f33504j = 0;
        this.f33505k = -1;
    }

    @Override // p.b.a
    public i d(int i10) {
        int i11 = this.f33504j;
        if (i11 == 0) {
            return null;
        }
        int i12 = this.f33505k;
        for (int i13 = 0; i13 < i11; i13++) {
            if (i13 == i10 && i12 != -1) {
                return this.f33507m.f33436d[this.f33500f[i12]];
            }
            i12 = this.f33503i[i12];
            if (i12 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // p.b.a
    public void e() {
        int i10 = this.f33504j;
        int i11 = this.f33505k;
        for (int i12 = 0; i12 < i10; i12++) {
            float[] fArr = this.f33501g;
            fArr[i11] = fArr[i11] * (-1.0f);
            i11 = this.f33503i[i11];
            if (i11 == -1) {
                return;
            }
        }
    }

    @Override // p.b.a
    public float f(int i10) {
        int i11 = this.f33504j;
        int i12 = this.f33505k;
        for (int i13 = 0; i13 < i11; i13++) {
            if (i13 == i10) {
                return this.f33501g[i12];
            }
            i12 = this.f33503i[i12];
            if (i12 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // p.b.a
    public float g(b bVar, boolean z10) {
        float fJ = j(bVar.f33427a);
        h(bVar.f33427a, z10);
        j jVar = (j) bVar.f33431e;
        int iC = jVar.c();
        int i10 = 0;
        int i11 = 0;
        while (i10 < iC) {
            int[] iArr = jVar.f33500f;
            if (iArr[i11] != -1) {
                b(this.f33507m.f33436d[iArr[i11]], jVar.f33501g[i11] * fJ, z10);
                i10++;
            }
            i11++;
        }
        return fJ;
    }

    @Override // p.b.a
    public float h(i iVar, boolean z10) {
        int iP = p(iVar);
        if (iP == -1) {
            return 0.0f;
        }
        r(iVar);
        float f10 = this.f33501g[iP];
        if (this.f33505k == iP) {
            this.f33505k = this.f33503i[iP];
        }
        this.f33500f[iP] = -1;
        int[] iArr = this.f33502h;
        if (iArr[iP] != -1) {
            int[] iArr2 = this.f33503i;
            iArr2[iArr[iP]] = iArr2[iP];
        }
        int[] iArr3 = this.f33503i;
        if (iArr3[iP] != -1) {
            iArr[iArr3[iP]] = iArr[iP];
        }
        this.f33504j--;
        iVar.A--;
        if (z10) {
            iVar.g(this.f33506l);
        }
        return f10;
    }

    @Override // p.b.a
    public boolean i(i iVar) {
        return p(iVar) != -1;
    }

    @Override // p.b.a
    public float j(i iVar) {
        int iP = p(iVar);
        if (iP != -1) {
            return this.f33501g[iP];
        }
        return 0.0f;
    }

    @Override // p.b.a
    public void k(float f10) {
        int i10 = this.f33504j;
        int i11 = this.f33505k;
        for (int i12 = 0; i12 < i10; i12++) {
            float[] fArr = this.f33501g;
            fArr[i11] = fArr[i11] / f10;
            i11 = this.f33503i[i11];
            if (i11 == -1) {
                return;
            }
        }
    }

    public int p(i iVar) {
        int[] iArr;
        if (this.f33504j != 0 && iVar != null) {
            int i10 = iVar.f33478q;
            int i11 = this.f33498d[i10 % this.f33497c];
            if (i11 == -1) {
                return -1;
            }
            if (this.f33500f[i11] == i10) {
                return i11;
            }
            while (true) {
                iArr = this.f33499e;
                if (iArr[i11] == -1 || this.f33500f[iArr[i11]] == i10) {
                    break;
                }
                i11 = iArr[i11];
            }
            if (iArr[i11] != -1 && this.f33500f[iArr[i11]] == i10) {
                return iArr[i11];
            }
        }
        return -1;
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i10 = this.f33504j;
        for (int i11 = 0; i11 < i10; i11++) {
            i iVarD = d(i11);
            if (iVarD != null) {
                String str2 = str + iVarD + " = " + f(i11) + " ";
                int iP = p(iVarD);
                String str3 = str2 + "[p: ";
                String str4 = (this.f33502h[iP] != -1 ? str3 + this.f33507m.f33436d[this.f33500f[this.f33502h[iP]]] : str3 + IntegrityManager.INTEGRITY_TYPE_NONE) + ", n: ";
                str = (this.f33503i[iP] != -1 ? str4 + this.f33507m.f33436d[this.f33500f[this.f33503i[iP]]] : str4 + IntegrityManager.INTEGRITY_TYPE_NONE) + "]";
            }
        }
        return str + " }";
    }
}
