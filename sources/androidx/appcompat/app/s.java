package androidx.appcompat.app;

/* JADX INFO: compiled from: TwilightCalculator.java */
/* JADX INFO: loaded from: classes.dex */
class s {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static s f461d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f464c;

    s() {
    }

    static s b() {
        if (f461d == null) {
            f461d = new s();
        }
        return f461d;
    }

    public void a(long j10, double d10, double d11) {
        float f10 = (j10 - 946728000000L) / 8.64E7f;
        double d12 = (0.01720197f * f10) + 6.24006f;
        double dSin = Math.sin(d12) * 0.03341960161924362d;
        Double.isNaN(d12);
        double dSin2 = dSin + d12 + (Math.sin(2.0f * r4) * 3.4906598739326E-4d) + (Math.sin(r4 * 3.0f) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        Double.isNaN(f10 - 9.0E-4f);
        double dRound = Math.round(r11 - r9) + 9.0E-4f;
        Double.isNaN(dRound);
        double dSin3 = dRound + ((-d11) / 360.0d) + (Math.sin(d12) * 0.0053d) + (Math.sin(2.0d * dSin2) * (-0.0069d));
        double dAsin = Math.asin(Math.sin(dSin2) * Math.sin(0.4092797040939331d));
        double d13 = 0.01745329238474369d * d10;
        double dSin4 = (Math.sin(-0.10471975803375244d) - (Math.sin(d13) * Math.sin(dAsin))) / (Math.cos(d13) * Math.cos(dAsin));
        if (dSin4 >= 1.0d) {
            this.f464c = 1;
            this.f462a = -1L;
            this.f463b = -1L;
            return;
        }
        if (dSin4 <= -1.0d) {
            this.f464c = 0;
            this.f462a = -1L;
            this.f463b = -1L;
            return;
        }
        double dAcos = (float) (Math.acos(dSin4) / 6.283185307179586d);
        Double.isNaN(dAcos);
        this.f462a = Math.round((dSin3 + dAcos) * 8.64E7d) + 946728000000L;
        Double.isNaN(dAcos);
        long jRound = Math.round((dSin3 - dAcos) * 8.64E7d) + 946728000000L;
        this.f463b = jRound;
        if (jRound >= j10 || this.f462a <= j10) {
            this.f464c = 1;
        } else {
            this.f464c = 0;
        }
    }
}
