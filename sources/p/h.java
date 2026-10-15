package p;

import com.vungle.mediation.BuildConfig;
import java.util.Arrays;
import java.util.Comparator;
import p.b;

/* JADX INFO: compiled from: PriorityGoalRow.java */
/* JADX INFO: loaded from: classes.dex */
public class h extends p.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f33466g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private i[] f33467h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private i[] f33468i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f33469j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    b f33470k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    c f33471l;

    /* JADX INFO: compiled from: PriorityGoalRow.java */
    class a implements Comparator<i> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(i iVar, i iVar2) {
            return iVar.f33478q - iVar2.f33478q;
        }
    }

    /* JADX INFO: compiled from: PriorityGoalRow.java */
    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        i f33473a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        h f33474b;

        public b(h hVar) {
            this.f33474b = hVar;
        }

        public boolean a(i iVar, float f10) {
            boolean z10 = true;
            if (!this.f33473a.f33476o) {
                for (int i10 = 0; i10 < 9; i10++) {
                    float f11 = iVar.f33484w[i10];
                    if (f11 != 0.0f) {
                        float f12 = f11 * f10;
                        if (Math.abs(f12) < 1.0E-4f) {
                            f12 = 0.0f;
                        }
                        this.f33473a.f33484w[i10] = f12;
                    } else {
                        this.f33473a.f33484w[i10] = 0.0f;
                    }
                }
                return true;
            }
            for (int i11 = 0; i11 < 9; i11++) {
                float[] fArr = this.f33473a.f33484w;
                fArr[i11] = fArr[i11] + (iVar.f33484w[i11] * f10);
                if (Math.abs(fArr[i11]) < 1.0E-4f) {
                    this.f33473a.f33484w[i11] = 0.0f;
                } else {
                    z10 = false;
                }
            }
            if (z10) {
                h.this.G(this.f33473a);
            }
            return false;
        }

        public void b(i iVar) {
            this.f33473a = iVar;
        }

        public final boolean c() {
            for (int i10 = 8; i10 >= 0; i10--) {
                float f10 = this.f33473a.f33484w[i10];
                if (f10 > 0.0f) {
                    return false;
                }
                if (f10 < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean d(i iVar) {
            int i10 = 8;
            while (true) {
                if (i10 < 0) {
                    break;
                }
                float f10 = iVar.f33484w[i10];
                float f11 = this.f33473a.f33484w[i10];
                if (f11 == f10) {
                    i10--;
                } else if (f11 < f10) {
                    return true;
                }
            }
            return false;
        }

        public void e() {
            Arrays.fill(this.f33473a.f33484w, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            if (this.f33473a != null) {
                for (int i10 = 0; i10 < 9; i10++) {
                    str = str + this.f33473a.f33484w[i10] + " ";
                }
            }
            return str + "] " + this.f33473a;
        }
    }

    public h(c cVar) {
        super(cVar);
        this.f33466g = 128;
        this.f33467h = new i[128];
        this.f33468i = new i[128];
        this.f33469j = 0;
        this.f33470k = new b(this);
        this.f33471l = cVar;
    }

    private final void F(i iVar) {
        int i10;
        int i11 = this.f33469j + 1;
        i[] iVarArr = this.f33467h;
        if (i11 > iVarArr.length) {
            i[] iVarArr2 = (i[]) Arrays.copyOf(iVarArr, iVarArr.length * 2);
            this.f33467h = iVarArr2;
            this.f33468i = (i[]) Arrays.copyOf(iVarArr2, iVarArr2.length * 2);
        }
        i[] iVarArr3 = this.f33467h;
        int i12 = this.f33469j;
        iVarArr3[i12] = iVar;
        int i13 = i12 + 1;
        this.f33469j = i13;
        if (i13 > 1 && iVarArr3[i13 - 1].f33478q > iVar.f33478q) {
            int i14 = 0;
            while (true) {
                i10 = this.f33469j;
                if (i14 >= i10) {
                    break;
                }
                this.f33468i[i14] = this.f33467h[i14];
                i14++;
            }
            Arrays.sort(this.f33468i, 0, i10, new a());
            for (int i15 = 0; i15 < this.f33469j; i15++) {
                this.f33467h[i15] = this.f33468i[i15];
            }
        }
        iVar.f33476o = true;
        iVar.c(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(i iVar) {
        int i10 = 0;
        while (i10 < this.f33469j) {
            if (this.f33467h[i10] == iVar) {
                while (true) {
                    int i11 = this.f33469j;
                    if (i10 >= i11 - 1) {
                        this.f33469j = i11 - 1;
                        iVar.f33476o = false;
                        return;
                    } else {
                        i[] iVarArr = this.f33467h;
                        int i12 = i10 + 1;
                        iVarArr[i10] = iVarArr[i12];
                        i10 = i12;
                    }
                }
            } else {
                i10++;
            }
        }
    }

    @Override // p.b
    public void B(d dVar, p.b bVar, boolean z10) {
        i iVar = bVar.f33427a;
        if (iVar == null) {
            return;
        }
        b.a aVar = bVar.f33431e;
        int iC = aVar.c();
        for (int i10 = 0; i10 < iC; i10++) {
            i iVarD = aVar.d(i10);
            float f10 = aVar.f(i10);
            this.f33470k.b(iVarD);
            if (this.f33470k.a(iVar, f10)) {
                F(iVarD);
            }
            this.f33428b += bVar.f33428b * f10;
        }
        G(iVar);
    }

    @Override // p.b, p.d.a
    public void a(i iVar) {
        this.f33470k.b(iVar);
        this.f33470k.e();
        iVar.f33484w[iVar.f33480s] = 1.0f;
        F(iVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    @Override // p.b, p.d.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public p.i b(p.d r5, boolean[] r6) {
        /*
            r4 = this;
            r5 = -1
            r0 = 0
            r1 = -1
        L3:
            int r2 = r4.f33469j
            if (r0 >= r2) goto L32
            p.i[] r2 = r4.f33467h
            r2 = r2[r0]
            int r3 = r2.f33478q
            boolean r3 = r6[r3]
            if (r3 == 0) goto L12
            goto L2f
        L12:
            p.h$b r3 = r4.f33470k
            r3.b(r2)
            if (r1 != r5) goto L22
            p.h$b r2 = r4.f33470k
            boolean r2 = r2.c()
            if (r2 == 0) goto L2f
            goto L2e
        L22:
            p.h$b r2 = r4.f33470k
            p.i[] r3 = r4.f33467h
            r3 = r3[r1]
            boolean r2 = r2.d(r3)
            if (r2 == 0) goto L2f
        L2e:
            r1 = r0
        L2f:
            int r0 = r0 + 1
            goto L3
        L32:
            if (r1 != r5) goto L36
            r5 = 0
            return r5
        L36:
            p.i[] r5 = r4.f33467h
            r5 = r5[r1]
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: p.h.b(p.d, boolean[]):p.i");
    }

    @Override // p.b, p.d.a
    public void clear() {
        this.f33469j = 0;
        this.f33428b = 0.0f;
    }

    @Override // p.b, p.d.a
    public boolean isEmpty() {
        return this.f33469j == 0;
    }

    @Override // p.b
    public String toString() {
        String str = BuildConfig.FLAVOR + " goal -> (" + this.f33428b + ") : ";
        for (int i10 = 0; i10 < this.f33469j; i10++) {
            this.f33470k.b(this.f33467h[i10]);
            str = str + this.f33470k + " ";
        }
        return str;
    }
}
