package p;

import com.vungle.mediation.BuildConfig;
import java.util.Arrays;
import p.b;

/* JADX INFO: compiled from: ArrayLinkedVariables.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements b.a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static float f33415l = 0.001f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f33417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final c f33418c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f33416a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f33419d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private i f33420e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f33421f = new int[8];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int[] f33422g = new int[8];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float[] f33423h = new float[8];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f33424i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f33425j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f33426k = false;

    a(b bVar, c cVar) {
        this.f33417b = bVar;
        this.f33418c = cVar;
    }

    @Override // p.b.a
    public final void a(i iVar, float f10) {
        if (f10 == 0.0f) {
            h(iVar, true);
            return;
        }
        int i10 = this.f33424i;
        if (i10 == -1) {
            this.f33424i = 0;
            this.f33423h[0] = f10;
            this.f33421f[0] = iVar.f33478q;
            this.f33422g[0] = -1;
            iVar.A++;
            iVar.c(this.f33417b);
            this.f33416a++;
            if (this.f33426k) {
                return;
            }
            int i11 = this.f33425j + 1;
            this.f33425j = i11;
            int[] iArr = this.f33421f;
            if (i11 >= iArr.length) {
                this.f33426k = true;
                this.f33425j = iArr.length - 1;
                return;
            }
            return;
        }
        int i12 = -1;
        for (int i13 = 0; i10 != -1 && i13 < this.f33416a; i13++) {
            int[] iArr2 = this.f33421f;
            int i14 = iArr2[i10];
            int i15 = iVar.f33478q;
            if (i14 == i15) {
                this.f33423h[i10] = f10;
                return;
            }
            if (iArr2[i10] < i15) {
                i12 = i10;
            }
            i10 = this.f33422g[i10];
        }
        int length = this.f33425j;
        int i16 = length + 1;
        if (this.f33426k) {
            int[] iArr3 = this.f33421f;
            if (iArr3[length] != -1) {
                length = iArr3.length;
            }
        } else {
            length = i16;
        }
        int[] iArr4 = this.f33421f;
        if (length >= iArr4.length && this.f33416a < iArr4.length) {
            int i17 = 0;
            while (true) {
                int[] iArr5 = this.f33421f;
                if (i17 >= iArr5.length) {
                    break;
                }
                if (iArr5[i17] == -1) {
                    length = i17;
                    break;
                }
                i17++;
            }
        }
        int[] iArr6 = this.f33421f;
        if (length >= iArr6.length) {
            length = iArr6.length;
            int i18 = this.f33419d * 2;
            this.f33419d = i18;
            this.f33426k = false;
            this.f33425j = length - 1;
            this.f33423h = Arrays.copyOf(this.f33423h, i18);
            this.f33421f = Arrays.copyOf(this.f33421f, this.f33419d);
            this.f33422g = Arrays.copyOf(this.f33422g, this.f33419d);
        }
        this.f33421f[length] = iVar.f33478q;
        this.f33423h[length] = f10;
        if (i12 != -1) {
            int[] iArr7 = this.f33422g;
            iArr7[length] = iArr7[i12];
            iArr7[i12] = length;
        } else {
            this.f33422g[length] = this.f33424i;
            this.f33424i = length;
        }
        iVar.A++;
        iVar.c(this.f33417b);
        int i19 = this.f33416a + 1;
        this.f33416a = i19;
        if (!this.f33426k) {
            this.f33425j++;
        }
        int[] iArr8 = this.f33421f;
        if (i19 >= iArr8.length) {
            this.f33426k = true;
        }
        if (this.f33425j >= iArr8.length) {
            this.f33426k = true;
            this.f33425j = iArr8.length - 1;
        }
    }

    @Override // p.b.a
    public void b(i iVar, float f10, boolean z10) {
        float f11 = f33415l;
        if (f10 <= (-f11) || f10 >= f11) {
            int i10 = this.f33424i;
            if (i10 == -1) {
                this.f33424i = 0;
                this.f33423h[0] = f10;
                this.f33421f[0] = iVar.f33478q;
                this.f33422g[0] = -1;
                iVar.A++;
                iVar.c(this.f33417b);
                this.f33416a++;
                if (this.f33426k) {
                    return;
                }
                int i11 = this.f33425j + 1;
                this.f33425j = i11;
                int[] iArr = this.f33421f;
                if (i11 >= iArr.length) {
                    this.f33426k = true;
                    this.f33425j = iArr.length - 1;
                    return;
                }
                return;
            }
            int i12 = -1;
            for (int i13 = 0; i10 != -1 && i13 < this.f33416a; i13++) {
                int[] iArr2 = this.f33421f;
                int i14 = iArr2[i10];
                int i15 = iVar.f33478q;
                if (i14 == i15) {
                    float[] fArr = this.f33423h;
                    float f12 = fArr[i10] + f10;
                    float f13 = f33415l;
                    if (f12 > (-f13) && f12 < f13) {
                        f12 = 0.0f;
                    }
                    fArr[i10] = f12;
                    if (f12 == 0.0f) {
                        if (i10 == this.f33424i) {
                            this.f33424i = this.f33422g[i10];
                        } else {
                            int[] iArr3 = this.f33422g;
                            iArr3[i12] = iArr3[i10];
                        }
                        if (z10) {
                            iVar.g(this.f33417b);
                        }
                        if (this.f33426k) {
                            this.f33425j = i10;
                        }
                        iVar.A--;
                        this.f33416a--;
                        return;
                    }
                    return;
                }
                if (iArr2[i10] < i15) {
                    i12 = i10;
                }
                i10 = this.f33422g[i10];
            }
            int length = this.f33425j;
            int i16 = length + 1;
            if (this.f33426k) {
                int[] iArr4 = this.f33421f;
                if (iArr4[length] != -1) {
                    length = iArr4.length;
                }
            } else {
                length = i16;
            }
            int[] iArr5 = this.f33421f;
            if (length >= iArr5.length && this.f33416a < iArr5.length) {
                int i17 = 0;
                while (true) {
                    int[] iArr6 = this.f33421f;
                    if (i17 >= iArr6.length) {
                        break;
                    }
                    if (iArr6[i17] == -1) {
                        length = i17;
                        break;
                    }
                    i17++;
                }
            }
            int[] iArr7 = this.f33421f;
            if (length >= iArr7.length) {
                length = iArr7.length;
                int i18 = this.f33419d * 2;
                this.f33419d = i18;
                this.f33426k = false;
                this.f33425j = length - 1;
                this.f33423h = Arrays.copyOf(this.f33423h, i18);
                this.f33421f = Arrays.copyOf(this.f33421f, this.f33419d);
                this.f33422g = Arrays.copyOf(this.f33422g, this.f33419d);
            }
            this.f33421f[length] = iVar.f33478q;
            this.f33423h[length] = f10;
            if (i12 != -1) {
                int[] iArr8 = this.f33422g;
                iArr8[length] = iArr8[i12];
                iArr8[i12] = length;
            } else {
                this.f33422g[length] = this.f33424i;
                this.f33424i = length;
            }
            iVar.A++;
            iVar.c(this.f33417b);
            this.f33416a++;
            if (!this.f33426k) {
                this.f33425j++;
            }
            int i19 = this.f33425j;
            int[] iArr9 = this.f33421f;
            if (i19 >= iArr9.length) {
                this.f33426k = true;
                this.f33425j = iArr9.length - 1;
            }
        }
    }

    @Override // p.b.a
    public int c() {
        return this.f33416a;
    }

    @Override // p.b.a
    public final void clear() {
        int i10 = this.f33424i;
        for (int i11 = 0; i10 != -1 && i11 < this.f33416a; i11++) {
            i iVar = this.f33418c.f33436d[this.f33421f[i10]];
            if (iVar != null) {
                iVar.g(this.f33417b);
            }
            i10 = this.f33422g[i10];
        }
        this.f33424i = -1;
        this.f33425j = -1;
        this.f33426k = false;
        this.f33416a = 0;
    }

    @Override // p.b.a
    public i d(int i10) {
        int i11 = this.f33424i;
        for (int i12 = 0; i11 != -1 && i12 < this.f33416a; i12++) {
            if (i12 == i10) {
                return this.f33418c.f33436d[this.f33421f[i11]];
            }
            i11 = this.f33422g[i11];
        }
        return null;
    }

    @Override // p.b.a
    public void e() {
        int i10 = this.f33424i;
        for (int i11 = 0; i10 != -1 && i11 < this.f33416a; i11++) {
            float[] fArr = this.f33423h;
            fArr[i10] = fArr[i10] * (-1.0f);
            i10 = this.f33422g[i10];
        }
    }

    @Override // p.b.a
    public float f(int i10) {
        int i11 = this.f33424i;
        for (int i12 = 0; i11 != -1 && i12 < this.f33416a; i12++) {
            if (i12 == i10) {
                return this.f33423h[i11];
            }
            i11 = this.f33422g[i11];
        }
        return 0.0f;
    }

    @Override // p.b.a
    public float g(b bVar, boolean z10) {
        float fJ = j(bVar.f33427a);
        h(bVar.f33427a, z10);
        b.a aVar = bVar.f33431e;
        int iC = aVar.c();
        for (int i10 = 0; i10 < iC; i10++) {
            i iVarD = aVar.d(i10);
            b(iVarD, aVar.j(iVarD) * fJ, z10);
        }
        return fJ;
    }

    @Override // p.b.a
    public final float h(i iVar, boolean z10) {
        if (this.f33420e == iVar) {
            this.f33420e = null;
        }
        int i10 = this.f33424i;
        if (i10 == -1) {
            return 0.0f;
        }
        int i11 = 0;
        int i12 = -1;
        while (i10 != -1 && i11 < this.f33416a) {
            if (this.f33421f[i10] == iVar.f33478q) {
                if (i10 == this.f33424i) {
                    this.f33424i = this.f33422g[i10];
                } else {
                    int[] iArr = this.f33422g;
                    iArr[i12] = iArr[i10];
                }
                if (z10) {
                    iVar.g(this.f33417b);
                }
                iVar.A--;
                this.f33416a--;
                this.f33421f[i10] = -1;
                if (this.f33426k) {
                    this.f33425j = i10;
                }
                return this.f33423h[i10];
            }
            i11++;
            i12 = i10;
            i10 = this.f33422g[i10];
        }
        return 0.0f;
    }

    @Override // p.b.a
    public boolean i(i iVar) {
        int i10 = this.f33424i;
        if (i10 == -1) {
            return false;
        }
        for (int i11 = 0; i10 != -1 && i11 < this.f33416a; i11++) {
            if (this.f33421f[i10] == iVar.f33478q) {
                return true;
            }
            i10 = this.f33422g[i10];
        }
        return false;
    }

    @Override // p.b.a
    public final float j(i iVar) {
        int i10 = this.f33424i;
        for (int i11 = 0; i10 != -1 && i11 < this.f33416a; i11++) {
            if (this.f33421f[i10] == iVar.f33478q) {
                return this.f33423h[i10];
            }
            i10 = this.f33422g[i10];
        }
        return 0.0f;
    }

    @Override // p.b.a
    public void k(float f10) {
        int i10 = this.f33424i;
        for (int i11 = 0; i10 != -1 && i11 < this.f33416a; i11++) {
            float[] fArr = this.f33423h;
            fArr[i10] = fArr[i10] / f10;
            i10 = this.f33422g[i10];
        }
    }

    public String toString() {
        int i10 = this.f33424i;
        String str = BuildConfig.FLAVOR;
        for (int i11 = 0; i10 != -1 && i11 < this.f33416a; i11++) {
            str = ((str + " -> ") + this.f33423h[i10] + " : ") + this.f33418c.f33436d[this.f33421f[i10]];
            i10 = this.f33422g[i10];
        }
        return str;
    }
}
