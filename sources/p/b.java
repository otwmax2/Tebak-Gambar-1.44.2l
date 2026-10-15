package p;

import com.facebook.appevents.UserDataStore;
import java.util.ArrayList;
import p.d;
import p.i;

/* JADX INFO: compiled from: ArrayRow.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements d.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f33431e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    i f33427a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f33428b = 0.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f33429c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ArrayList<i> f33430d = new ArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f33432f = false;

    /* JADX INFO: compiled from: ArrayRow.java */
    public interface a {
        void a(i iVar, float f10);

        void b(i iVar, float f10, boolean z10);

        int c();

        void clear();

        i d(int i10);

        void e();

        float f(int i10);

        float g(b bVar, boolean z10);

        float h(i iVar, boolean z10);

        boolean i(i iVar);

        float j(i iVar);

        void k(float f10);
    }

    public b() {
    }

    private boolean u(i iVar, d dVar) {
        return iVar.A <= 1;
    }

    private i w(boolean[] zArr, i iVar) {
        i.a aVar;
        int iC = this.f33431e.c();
        i iVar2 = null;
        float f10 = 0.0f;
        for (int i10 = 0; i10 < iC; i10++) {
            float f11 = this.f33431e.f(i10);
            if (f11 < 0.0f) {
                i iVarD = this.f33431e.d(i10);
                if ((zArr == null || !zArr[iVarD.f33478q]) && iVarD != iVar && (((aVar = iVarD.f33485x) == i.a.SLACK || aVar == i.a.ERROR) && f11 < f10)) {
                    f10 = f11;
                    iVar2 = iVarD;
                }
            }
        }
        return iVar2;
    }

    public void A(d dVar, i iVar, boolean z10) {
        if (iVar == null || !iVar.f33482u) {
            return;
        }
        this.f33428b += iVar.f33481t * this.f33431e.j(iVar);
        this.f33431e.h(iVar, z10);
        if (z10) {
            iVar.g(this);
        }
        if (d.f33439t && this.f33431e.c() == 0) {
            this.f33432f = true;
            dVar.f33446a = true;
        }
    }

    public void B(d dVar, b bVar, boolean z10) {
        this.f33428b += bVar.f33428b * this.f33431e.g(bVar, z10);
        if (z10) {
            bVar.f33427a.g(this);
        }
        if (d.f33439t && this.f33427a != null && this.f33431e.c() == 0) {
            this.f33432f = true;
            dVar.f33446a = true;
        }
    }

    public void C(d dVar, i iVar, boolean z10) {
        if (iVar == null || !iVar.B) {
            return;
        }
        float fJ = this.f33431e.j(iVar);
        this.f33428b += iVar.D * fJ;
        this.f33431e.h(iVar, z10);
        if (z10) {
            iVar.g(this);
        }
        this.f33431e.b(dVar.f33459n.f33436d[iVar.C], fJ, z10);
        if (d.f33439t && this.f33431e.c() == 0) {
            this.f33432f = true;
            dVar.f33446a = true;
        }
    }

    public void D(d dVar) {
        if (dVar.f33452g.length == 0) {
            return;
        }
        boolean z10 = false;
        while (!z10) {
            int iC = this.f33431e.c();
            for (int i10 = 0; i10 < iC; i10++) {
                i iVarD = this.f33431e.d(i10);
                if (iVarD.f33479r != -1 || iVarD.f33482u || iVarD.B) {
                    this.f33430d.add(iVarD);
                }
            }
            int size = this.f33430d.size();
            if (size > 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    i iVar = this.f33430d.get(i11);
                    if (iVar.f33482u) {
                        A(dVar, iVar, true);
                    } else if (iVar.B) {
                        C(dVar, iVar, true);
                    } else {
                        B(dVar, dVar.f33452g[iVar.f33479r], true);
                    }
                }
                this.f33430d.clear();
            } else {
                z10 = true;
            }
        }
        if (d.f33439t && this.f33427a != null && this.f33431e.c() == 0) {
            this.f33432f = true;
            dVar.f33446a = true;
        }
    }

    @Override // p.d.a
    public void a(i iVar) {
        int i10 = iVar.f33480s;
        float f10 = 1.0f;
        if (i10 != 1) {
            if (i10 == 2) {
                f10 = 1000.0f;
            } else if (i10 == 3) {
                f10 = 1000000.0f;
            } else if (i10 == 4) {
                f10 = 1.0E9f;
            } else if (i10 == 5) {
                f10 = 1.0E12f;
            }
        }
        this.f33431e.a(iVar, f10);
    }

    @Override // p.d.a
    public i b(d dVar, boolean[] zArr) {
        return w(zArr, null);
    }

    @Override // p.d.a
    public void c(d.a aVar) {
        if (aVar instanceof b) {
            b bVar = (b) aVar;
            this.f33427a = null;
            this.f33431e.clear();
            for (int i10 = 0; i10 < bVar.f33431e.c(); i10++) {
                this.f33431e.b(bVar.f33431e.d(i10), bVar.f33431e.f(i10), true);
            }
        }
    }

    @Override // p.d.a
    public void clear() {
        this.f33431e.clear();
        this.f33427a = null;
        this.f33428b = 0.0f;
    }

    public b d(d dVar, int i10) {
        this.f33431e.a(dVar.o(i10, "ep"), 1.0f);
        this.f33431e.a(dVar.o(i10, UserDataStore.EMAIL), -1.0f);
        return this;
    }

    b e(i iVar, int i10) {
        this.f33431e.a(iVar, i10);
        return this;
    }

    boolean f(d dVar) {
        boolean z10;
        i iVarG = g(dVar);
        if (iVarG == null) {
            z10 = true;
        } else {
            x(iVarG);
            z10 = false;
        }
        if (this.f33431e.c() == 0) {
            this.f33432f = true;
        }
        return z10;
    }

    i g(d dVar) {
        int iC = this.f33431e.c();
        i iVar = null;
        i iVar2 = null;
        boolean z10 = false;
        boolean z11 = false;
        float f10 = 0.0f;
        float f11 = 0.0f;
        for (int i10 = 0; i10 < iC; i10++) {
            float f12 = this.f33431e.f(i10);
            i iVarD = this.f33431e.d(i10);
            if (iVarD.f33485x == i.a.UNRESTRICTED) {
                if (iVar == null || f10 > f12) {
                    boolean zU = u(iVarD, dVar);
                    z10 = zU;
                    f10 = f12;
                    iVar = iVarD;
                } else if (!z10 && u(iVarD, dVar)) {
                    f10 = f12;
                    iVar = iVarD;
                    z10 = true;
                }
            } else if (iVar == null && f12 < 0.0f) {
                if (iVar2 == null || f11 > f12) {
                    boolean zU2 = u(iVarD, dVar);
                    z11 = zU2;
                    f11 = f12;
                    iVar2 = iVarD;
                } else if (!z11 && u(iVarD, dVar)) {
                    f11 = f12;
                    iVar2 = iVarD;
                    z11 = true;
                }
            }
        }
        return iVar != null ? iVar : iVar2;
    }

    @Override // p.d.a
    public i getKey() {
        return this.f33427a;
    }

    b h(i iVar, i iVar2, int i10, float f10, i iVar3, i iVar4, int i11) {
        if (iVar2 == iVar3) {
            this.f33431e.a(iVar, 1.0f);
            this.f33431e.a(iVar4, 1.0f);
            this.f33431e.a(iVar2, -2.0f);
            return this;
        }
        if (f10 == 0.5f) {
            this.f33431e.a(iVar, 1.0f);
            this.f33431e.a(iVar2, -1.0f);
            this.f33431e.a(iVar3, -1.0f);
            this.f33431e.a(iVar4, 1.0f);
            if (i10 > 0 || i11 > 0) {
                this.f33428b = (-i10) + i11;
            }
        } else if (f10 <= 0.0f) {
            this.f33431e.a(iVar, -1.0f);
            this.f33431e.a(iVar2, 1.0f);
            this.f33428b = i10;
        } else if (f10 >= 1.0f) {
            this.f33431e.a(iVar4, -1.0f);
            this.f33431e.a(iVar3, 1.0f);
            this.f33428b = -i11;
        } else {
            float f11 = 1.0f - f10;
            this.f33431e.a(iVar, f11 * 1.0f);
            this.f33431e.a(iVar2, f11 * (-1.0f));
            this.f33431e.a(iVar3, (-1.0f) * f10);
            this.f33431e.a(iVar4, 1.0f * f10);
            if (i10 > 0 || i11 > 0) {
                this.f33428b = ((-i10) * f11) + (i11 * f10);
            }
        }
        return this;
    }

    b i(i iVar, int i10) {
        this.f33427a = iVar;
        float f10 = i10;
        iVar.f33481t = f10;
        this.f33428b = f10;
        this.f33432f = true;
        return this;
    }

    @Override // p.d.a
    public boolean isEmpty() {
        return this.f33427a == null && this.f33428b == 0.0f && this.f33431e.c() == 0;
    }

    b j(i iVar, i iVar2, float f10) {
        this.f33431e.a(iVar, -1.0f);
        this.f33431e.a(iVar2, f10);
        return this;
    }

    public b k(i iVar, i iVar2, i iVar3, i iVar4, float f10) {
        this.f33431e.a(iVar, -1.0f);
        this.f33431e.a(iVar2, 1.0f);
        this.f33431e.a(iVar3, f10);
        this.f33431e.a(iVar4, -f10);
        return this;
    }

    public b l(float f10, float f11, float f12, i iVar, i iVar2, i iVar3, i iVar4) {
        this.f33428b = 0.0f;
        if (f11 == 0.0f || f10 == f12) {
            this.f33431e.a(iVar, 1.0f);
            this.f33431e.a(iVar2, -1.0f);
            this.f33431e.a(iVar4, 1.0f);
            this.f33431e.a(iVar3, -1.0f);
        } else if (f10 == 0.0f) {
            this.f33431e.a(iVar, 1.0f);
            this.f33431e.a(iVar2, -1.0f);
        } else if (f12 == 0.0f) {
            this.f33431e.a(iVar3, 1.0f);
            this.f33431e.a(iVar4, -1.0f);
        } else {
            float f13 = (f10 / f11) / (f12 / f11);
            this.f33431e.a(iVar, 1.0f);
            this.f33431e.a(iVar2, -1.0f);
            this.f33431e.a(iVar4, f13);
            this.f33431e.a(iVar3, -f13);
        }
        return this;
    }

    public b m(i iVar, int i10) {
        if (i10 < 0) {
            this.f33428b = i10 * (-1);
            this.f33431e.a(iVar, 1.0f);
        } else {
            this.f33428b = i10;
            this.f33431e.a(iVar, -1.0f);
        }
        return this;
    }

    public b n(i iVar, i iVar2, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.f33428b = i10;
        }
        if (z10) {
            this.f33431e.a(iVar, 1.0f);
            this.f33431e.a(iVar2, -1.0f);
        } else {
            this.f33431e.a(iVar, -1.0f);
            this.f33431e.a(iVar2, 1.0f);
        }
        return this;
    }

    public b o(i iVar, i iVar2, i iVar3, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.f33428b = i10;
        }
        if (z10) {
            this.f33431e.a(iVar, 1.0f);
            this.f33431e.a(iVar2, -1.0f);
            this.f33431e.a(iVar3, -1.0f);
        } else {
            this.f33431e.a(iVar, -1.0f);
            this.f33431e.a(iVar2, 1.0f);
            this.f33431e.a(iVar3, 1.0f);
        }
        return this;
    }

    public b p(i iVar, i iVar2, i iVar3, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.f33428b = i10;
        }
        if (z10) {
            this.f33431e.a(iVar, 1.0f);
            this.f33431e.a(iVar2, -1.0f);
            this.f33431e.a(iVar3, 1.0f);
        } else {
            this.f33431e.a(iVar, -1.0f);
            this.f33431e.a(iVar2, 1.0f);
            this.f33431e.a(iVar3, -1.0f);
        }
        return this;
    }

    public b q(i iVar, i iVar2, i iVar3, i iVar4, float f10) {
        this.f33431e.a(iVar3, 0.5f);
        this.f33431e.a(iVar4, 0.5f);
        this.f33431e.a(iVar, -0.5f);
        this.f33431e.a(iVar2, -0.5f);
        this.f33428b = -f10;
        return this;
    }

    void r() {
        float f10 = this.f33428b;
        if (f10 < 0.0f) {
            this.f33428b = f10 * (-1.0f);
            this.f33431e.e();
        }
    }

    boolean s() {
        i iVar = this.f33427a;
        return iVar != null && (iVar.f33485x == i.a.UNRESTRICTED || this.f33428b >= 0.0f);
    }

    boolean t(i iVar) {
        return this.f33431e.i(iVar);
    }

    public String toString() {
        return z();
    }

    public i v(i iVar) {
        return w(null, iVar);
    }

    void x(i iVar) {
        i iVar2 = this.f33427a;
        if (iVar2 != null) {
            this.f33431e.a(iVar2, -1.0f);
            this.f33427a.f33479r = -1;
            this.f33427a = null;
        }
        float fH = this.f33431e.h(iVar, true) * (-1.0f);
        this.f33427a = iVar;
        if (fH == 1.0f) {
            return;
        }
        this.f33428b /= fH;
        this.f33431e.k(fH);
    }

    public void y() {
        this.f33427a = null;
        this.f33431e.clear();
        this.f33428b = 0.0f;
        this.f33432f = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    java.lang.String z() {
        /*
            Method dump skipped, instruction units count: 258
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p.b.z():java.lang.String");
    }

    public b(c cVar) {
        this.f33431e = new p.a(this, cVar);
    }
}
