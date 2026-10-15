package androidx.core.content.res;

/* JADX INFO: compiled from: CamColor.java */
/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f2138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f2139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f2140c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f2141d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f2142e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f2143f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f2144g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f2145h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f2146i;

    a(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        this.f2138a = f10;
        this.f2139b = f11;
        this.f2140c = f12;
        this.f2141d = f13;
        this.f2142e = f14;
        this.f2143f = f15;
        this.f2144g = f16;
        this.f2145h = f17;
        this.f2146i = f18;
    }

    private static a b(float f10, float f11, float f12) {
        float f13 = 1000.0f;
        a aVar = null;
        float f14 = 1000.0f;
        float f15 = 100.0f;
        float f16 = 0.0f;
        while (Math.abs(f16 - f15) > 0.01f) {
            float f17 = ((f15 - f16) / 2.0f) + f16;
            int iP = e(f17, f11, f10).p();
            float fB = b.b(iP);
            float fAbs = Math.abs(f12 - fB);
            if (fAbs < 0.2f) {
                a aVarC = c(iP);
                float fA = aVarC.a(e(aVarC.k(), aVarC.i(), f10));
                if (fA <= 1.0f) {
                    aVar = aVarC;
                    f13 = fAbs;
                    f14 = fA;
                }
            }
            if (f13 == 0.0f && f14 == 0.0f) {
                break;
            }
            if (fB < f12) {
                f16 = f17;
            } else {
                f15 = f17;
            }
        }
        return aVar;
    }

    static a c(int i10) {
        return d(i10, l.f2183k);
    }

    static a d(int i10, l lVar) {
        float[] fArrF = b.f(i10);
        float[][] fArr = b.f2147a;
        float f10 = (fArrF[0] * fArr[0][0]) + (fArrF[1] * fArr[0][1]) + (fArrF[2] * fArr[0][2]);
        float f11 = (fArrF[0] * fArr[1][0]) + (fArrF[1] * fArr[1][1]) + (fArrF[2] * fArr[1][2]);
        float f12 = (fArrF[0] * fArr[2][0]) + (fArrF[1] * fArr[2][1]) + (fArrF[2] * fArr[2][2]);
        float f13 = lVar.i()[0] * f10;
        float f14 = lVar.i()[1] * f11;
        float f15 = lVar.i()[2] * f12;
        double dC = lVar.c() * Math.abs(f13);
        Double.isNaN(dC);
        float fPow = (float) Math.pow(dC / 100.0d, 0.42d);
        double dC2 = lVar.c() * Math.abs(f14);
        Double.isNaN(dC2);
        float fPow2 = (float) Math.pow(dC2 / 100.0d, 0.42d);
        double dC3 = lVar.c() * Math.abs(f15);
        Double.isNaN(dC3);
        float fPow3 = (float) Math.pow(dC3 / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f13) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f14) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f15) * 400.0f) * fPow3) / (fPow3 + 27.13f);
        double d10 = fSignum;
        Double.isNaN(d10);
        double d11 = fSignum2;
        Double.isNaN(d11);
        double d12 = (d10 * 11.0d) + (d11 * (-12.0d));
        double d13 = fSignum3;
        Double.isNaN(d13);
        double d14 = fSignum + fSignum2;
        Double.isNaN(d13);
        Double.isNaN(d14);
        float f16 = ((float) (d14 - (d13 * 2.0d))) / 9.0f;
        float f17 = fSignum2 * 20.0f;
        float f18 = (((fSignum * 20.0f) + f17) + (21.0f * fSignum3)) / 20.0f;
        float f19 = (((fSignum * 40.0f) + f17) + fSignum3) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f16, ((float) (d12 + d13)) / 11.0f)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f20 = fAtan2;
        float f21 = (3.1415927f * f20) / 180.0f;
        float fPow4 = ((float) Math.pow((f19 * lVar.f()) / lVar.a(), lVar.b() * lVar.j())) * 100.0f;
        float fD = lVar.d() * (4.0f / lVar.b()) * ((float) Math.sqrt(fPow4 / 100.0f)) * (lVar.a() + 4.0f);
        Double.isNaN(((double) f20) < 20.14d ? 360.0f + f20 : f20);
        float fPow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, lVar.e()), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((r9 * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * lVar.g()) * lVar.h()) * ((float) Math.sqrt((r3 * r3) + (f16 * f16)))) / (f18 + 0.305f), 0.9d));
        double d15 = fPow4;
        Double.isNaN(d15);
        float fSqrt = fPow5 * ((float) Math.sqrt(d15 / 100.0d));
        float fD2 = fSqrt * lVar.d();
        float fSqrt2 = ((float) Math.sqrt((fPow5 * lVar.b()) / (lVar.a() + 4.0f))) * 50.0f;
        float f22 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog = ((float) Math.log((0.0228f * fD2) + 1.0f)) * 43.85965f;
        double d16 = f21;
        return new a(f20, fSqrt, fPow4, fD, fD2, fSqrt2, f22, fLog * ((float) Math.cos(d16)), fLog * ((float) Math.sin(d16)));
    }

    private static a e(float f10, float f11, float f12) {
        return f(f10, f11, f12, l.f2183k);
    }

    private static a f(float f10, float f11, float f12, l lVar) {
        float fB = 4.0f / lVar.b();
        double d10 = f10;
        Double.isNaN(d10);
        float fSqrt = fB * ((float) Math.sqrt(d10 / 100.0d)) * (lVar.a() + 4.0f) * lVar.d();
        float fD = f11 * lVar.d();
        float fSqrt2 = ((float) Math.sqrt(((f11 / ((float) Math.sqrt(r4))) * lVar.b()) / (lVar.a() + 4.0f))) * 50.0f;
        float f13 = (1.7f * f10) / ((0.007f * f10) + 1.0f);
        double d11 = fD;
        Double.isNaN(d11);
        float fLog = ((float) Math.log((d11 * 0.0228d) + 1.0d)) * 43.85965f;
        double d12 = (3.1415927f * f12) / 180.0f;
        return new a(f12, f11, f10, fSqrt, fD, fSqrt2, f13, fLog * ((float) Math.cos(d12)), fLog * ((float) Math.sin(d12)));
    }

    static int m(float f10, float f11, float f12) {
        return n(f10, f11, f12, l.f2183k);
    }

    static int n(float f10, float f11, float f12, l lVar) {
        if (f11 < 1.0d || Math.round(f12) <= 0.0d || Math.round(f12) >= 100.0d) {
            return b.a(f12);
        }
        float fMin = f10 < 0.0f ? 0.0f : Math.min(360.0f, f10);
        float f13 = f11;
        a aVar = null;
        float f14 = 0.0f;
        boolean z10 = true;
        while (Math.abs(f14 - f11) >= 0.4f) {
            a aVarB = b(fMin, f13, f12);
            if (z10) {
                if (aVarB != null) {
                    return aVarB.o(lVar);
                }
                z10 = false;
            } else if (aVarB == null) {
                f11 = f13;
            } else {
                f14 = f13;
                aVar = aVarB;
            }
            f13 = ((f11 - f14) / 2.0f) + f14;
        }
        return aVar == null ? b.a(f12) : aVar.o(lVar);
    }

    float a(a aVar) {
        float fL = l() - aVar.l();
        float fG = g() - aVar.g();
        float fH = h() - aVar.h();
        return (float) (Math.pow(Math.sqrt((fL * fL) + (fG * fG) + (fH * fH)), 0.63d) * 1.41d);
    }

    float g() {
        return this.f2145h;
    }

    float h() {
        return this.f2146i;
    }

    float i() {
        return this.f2139b;
    }

    float j() {
        return this.f2138a;
    }

    float k() {
        return this.f2140c;
    }

    float l() {
        return this.f2144g;
    }

    int o(l lVar) {
        float fSqrt;
        if (i() == 0.0d || k() == 0.0d) {
            fSqrt = 0.0f;
        } else {
            float fI = i();
            double dK = k();
            Double.isNaN(dK);
            fSqrt = fI / ((float) Math.sqrt(dK / 100.0d));
        }
        double d10 = fSqrt;
        double dPow = Math.pow(1.64d - Math.pow(0.29d, lVar.e()), 0.73d);
        Double.isNaN(d10);
        float fPow = (float) Math.pow(d10 / dPow, 1.1111111111111112d);
        double dJ = (j() * 3.1415927f) / 180.0f;
        Double.isNaN(dJ);
        float fCos = ((float) (Math.cos(2.0d + dJ) + 3.8d)) * 0.25f;
        float fA = lVar.a();
        double dK2 = k();
        Double.isNaN(dK2);
        double dB = lVar.b();
        Double.isNaN(dB);
        double d11 = 1.0d / dB;
        double dJ2 = lVar.j();
        Double.isNaN(dJ2);
        float fPow2 = fA * ((float) Math.pow(dK2 / 100.0d, d11 / dJ2));
        float fG = fCos * 3846.1538f * lVar.g() * lVar.h();
        float f10 = fPow2 / lVar.f();
        float fSin = (float) Math.sin(dJ);
        float fCos2 = (float) Math.cos(dJ);
        float f11 = (((0.305f + f10) * 23.0f) * fPow) / (((fG * 23.0f) + ((11.0f * fPow) * fCos2)) + ((fPow * 108.0f) * fSin));
        float f12 = fCos2 * f11;
        float f13 = f11 * fSin;
        float f14 = f10 * 460.0f;
        float f15 = (((451.0f * f12) + f14) + (288.0f * f13)) / 1403.0f;
        float f16 = ((f14 - (891.0f * f12)) - (261.0f * f13)) / 1403.0f;
        float f17 = ((f14 - (f12 * 220.0f)) - (f13 * 6300.0f)) / 1403.0f;
        Double.isNaN(Math.abs(f15));
        Double.isNaN(Math.abs(f15));
        float fSignum = Math.signum(f15) * (100.0f / lVar.c()) * ((float) Math.pow((float) Math.max(0.0d, (r7 * 27.13d) / (400.0d - r11)), 2.380952380952381d));
        Double.isNaN(Math.abs(f16));
        Double.isNaN(Math.abs(f16));
        float fSignum2 = Math.signum(f16) * (100.0f / lVar.c()) * ((float) Math.pow((float) Math.max(0.0d, (r11 * 27.13d) / (400.0d - r9)), 2.380952380952381d));
        Double.isNaN(Math.abs(f17));
        Double.isNaN(Math.abs(f17));
        float fSignum3 = Math.signum(f17) * (100.0f / lVar.c()) * ((float) Math.pow((float) Math.max(0.0d, (r9 * 27.13d) / (400.0d - r11)), 2.380952380952381d));
        float f18 = fSignum / lVar.i()[0];
        float f19 = fSignum2 / lVar.i()[1];
        float f20 = fSignum3 / lVar.i()[2];
        float[][] fArr = b.f2148b;
        return androidx.core.graphics.a.a((fArr[0][0] * f18) + (fArr[0][1] * f19) + (fArr[0][2] * f20), (fArr[1][0] * f18) + (fArr[1][1] * f19) + (fArr[1][2] * f20), (f18 * fArr[2][0]) + (f19 * fArr[2][1]) + (f20 * fArr[2][2]));
    }

    int p() {
        return o(l.f2183k);
    }
}
