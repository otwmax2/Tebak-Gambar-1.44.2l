package androidx.core.content.res;

/* JADX INFO: compiled from: ViewingConditions.java */
/* JADX INFO: loaded from: classes.dex */
final class l {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final l f2183k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f2184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f2185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f2186c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f2187d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f2188e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f2189f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float[] f2190g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f2191h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f2192i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float f2193j;

    static {
        float[] fArr = b.f2149c;
        double dH = b.h(50.0f);
        Double.isNaN(dH);
        f2183k = k(fArr, (float) ((dH * 63.66197723675813d) / 100.0d), 50.0f, 2.0f, false);
    }

    private l(float f10, float f11, float f12, float f13, float f14, float f15, float[] fArr, float f16, float f17, float f18) {
        this.f2189f = f10;
        this.f2184a = f11;
        this.f2185b = f12;
        this.f2186c = f13;
        this.f2187d = f14;
        this.f2188e = f15;
        this.f2190g = fArr;
        this.f2191h = f16;
        this.f2192i = f17;
        this.f2193j = f18;
    }

    static l k(float[] fArr, float f10, float f11, float f12, boolean z10) {
        float[][] fArr2 = b.f2147a;
        float f13 = (fArr[0] * fArr2[0][0]) + (fArr[1] * fArr2[0][1]) + (fArr[2] * fArr2[0][2]);
        float f14 = (fArr[0] * fArr2[1][0]) + (fArr[1] * fArr2[1][1]) + (fArr[2] * fArr2[1][2]);
        float f15 = (fArr[0] * fArr2[2][0]) + (fArr[1] * fArr2[2][1]) + (fArr[2] * fArr2[2][2]);
        float f16 = (f12 / 10.0f) + 0.8f;
        float fD = ((double) f16) >= 0.9d ? b.d(0.59f, 0.69f, (f16 - 0.9f) * 10.0f) : b.d(0.525f, 0.59f, (f16 - 0.8f) * 10.0f);
        float fExp = z10 ? 1.0f : (1.0f - (((float) Math.exp(((-f10) - 42.0f) / 92.0f)) * 0.2777778f)) * f16;
        double d10 = fExp;
        if (d10 > 1.0d) {
            fExp = 1.0f;
        } else if (d10 < 0.0d) {
            fExp = 0.0f;
        }
        float[] fArr3 = {(((100.0f / f13) * fExp) + 1.0f) - fExp, (((100.0f / f14) * fExp) + 1.0f) - fExp, (((100.0f / f15) * fExp) + 1.0f) - fExp};
        float f17 = 1.0f / ((5.0f * f10) + 1.0f);
        float f18 = f17 * f17 * f17 * f17;
        float f19 = 1.0f - f18;
        double d11 = f10;
        Double.isNaN(d11);
        float fCbrt = (f18 * f10) + (0.1f * f19 * f19 * ((float) Math.cbrt(d11 * 5.0d)));
        float fH = b.h(f11) / fArr[1];
        double d12 = fH;
        float fSqrt = ((float) Math.sqrt(d12)) + 1.48f;
        float fPow = 0.725f / ((float) Math.pow(d12, 0.2d));
        double d13 = fArr3[0] * fCbrt * f13;
        Double.isNaN(d13);
        double d14 = fArr3[1] * fCbrt * f14;
        Double.isNaN(d14);
        double d15 = fArr3[2] * fCbrt * f15;
        Double.isNaN(d15);
        float[] fArr4 = {(float) Math.pow(d13 / 100.0d, 0.42d), (float) Math.pow(d14 / 100.0d, 0.42d), (float) Math.pow(d15 / 100.0d, 0.42d)};
        float[] fArr5 = {(fArr4[0] * 400.0f) / (fArr4[0] + 27.13f), (fArr4[1] * 400.0f) / (fArr4[1] + 27.13f), (fArr4[2] * 400.0f) / (fArr4[2] + 27.13f)};
        return new l(fH, ((fArr5[0] * 2.0f) + fArr5[1] + (fArr5[2] * 0.05f)) * fPow, fPow, fPow, fD, f16, fArr3, fCbrt, (float) Math.pow(fCbrt, 0.25d), fSqrt);
    }

    float a() {
        return this.f2184a;
    }

    float b() {
        return this.f2187d;
    }

    float c() {
        return this.f2191h;
    }

    float d() {
        return this.f2192i;
    }

    float e() {
        return this.f2189f;
    }

    float f() {
        return this.f2185b;
    }

    float g() {
        return this.f2188e;
    }

    float h() {
        return this.f2186c;
    }

    float[] i() {
        return this.f2190g;
    }

    float j() {
        return this.f2193j;
    }
}
