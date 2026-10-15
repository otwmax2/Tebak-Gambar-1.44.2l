package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgwr {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final zzgwr f19709j = new zzgwr(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final zzgwr f19710k = new zzgwr(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final zzgwr f19711l = new zzgwr(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final zzgwr f19712m = new zzgwr(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f19713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f19714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f19715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final double f19716d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f19717e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f19718f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final double f19719g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final double f19720h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final double f19721i;

    public zzgwr(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        this.f19713a = d14;
        this.f19714b = d15;
        this.f19715c = d16;
        this.f19716d = d10;
        this.f19717e = d11;
        this.f19718f = d12;
        this.f19719g = d13;
        this.f19720h = d17;
        this.f19721i = d18;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzgwr.class != obj.getClass()) {
            return false;
        }
        zzgwr zzgwrVar = (zzgwr) obj;
        return Double.compare(zzgwrVar.f19716d, this.f19716d) == 0 && Double.compare(zzgwrVar.f19717e, this.f19717e) == 0 && Double.compare(zzgwrVar.f19718f, this.f19718f) == 0 && Double.compare(zzgwrVar.f19719g, this.f19719g) == 0 && Double.compare(zzgwrVar.f19720h, this.f19720h) == 0 && Double.compare(zzgwrVar.f19721i, this.f19721i) == 0 && Double.compare(zzgwrVar.f19713a, this.f19713a) == 0 && Double.compare(zzgwrVar.f19714b, this.f19714b) == 0 && Double.compare(zzgwrVar.f19715c, this.f19715c) == 0;
    }

    public final int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.f19713a);
        long j10 = jDoubleToLongBits ^ (jDoubleToLongBits >>> 32);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.f19714b);
        long j11 = jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32);
        long jDoubleToLongBits3 = Double.doubleToLongBits(this.f19715c);
        long j12 = jDoubleToLongBits3 ^ (jDoubleToLongBits3 >>> 32);
        long jDoubleToLongBits4 = Double.doubleToLongBits(this.f19716d);
        long j13 = jDoubleToLongBits4 ^ (jDoubleToLongBits4 >>> 32);
        long jDoubleToLongBits5 = Double.doubleToLongBits(this.f19717e);
        long j14 = jDoubleToLongBits5 ^ (jDoubleToLongBits5 >>> 32);
        long jDoubleToLongBits6 = Double.doubleToLongBits(this.f19718f);
        long j15 = jDoubleToLongBits6 ^ (jDoubleToLongBits6 >>> 32);
        long jDoubleToLongBits7 = Double.doubleToLongBits(this.f19719g);
        long j16 = jDoubleToLongBits7 ^ (jDoubleToLongBits7 >>> 32);
        long jDoubleToLongBits8 = Double.doubleToLongBits(this.f19720h);
        long j17 = jDoubleToLongBits8 ^ (jDoubleToLongBits8 >>> 32);
        long jDoubleToLongBits9 = Double.doubleToLongBits(this.f19721i);
        return (((((((((((((((((int) j10) * 31) + ((int) j11)) * 31) + ((int) j12)) * 31) + ((int) j13)) * 31) + ((int) j14)) * 31) + ((int) j15)) * 31) + ((int) j16)) * 31) + ((int) j17)) * 31) + ((int) (jDoubleToLongBits9 ^ (jDoubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(f19709j)) {
            return "Rotate 0°";
        }
        if (equals(f19710k)) {
            return "Rotate 90°";
        }
        if (equals(f19711l)) {
            return "Rotate 180°";
        }
        if (equals(f19712m)) {
            return "Rotate 270°";
        }
        double d10 = this.f19713a;
        double d11 = this.f19714b;
        double d12 = this.f19715c;
        double d13 = this.f19716d;
        double d14 = this.f19717e;
        double d15 = this.f19718f;
        double d16 = this.f19719g;
        double d17 = this.f19720h;
        double d18 = this.f19721i;
        StringBuilder sb = new StringBuilder(260);
        sb.append("Matrix{u=");
        sb.append(d10);
        sb.append(", v=");
        sb.append(d11);
        sb.append(", w=");
        sb.append(d12);
        sb.append(", a=");
        sb.append(d13);
        sb.append(", b=");
        sb.append(d14);
        sb.append(", c=");
        sb.append(d15);
        sb.append(", d=");
        sb.append(d16);
        sb.append(", tx=");
        sb.append(d17);
        sb.append(", ty=");
        sb.append(d18);
        sb.append("}");
        return sb.toString();
    }
}
