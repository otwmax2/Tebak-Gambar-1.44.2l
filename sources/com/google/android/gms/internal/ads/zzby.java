package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzby {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzby f11503d = new zzby(1.0f, 1.0f);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f11504e = zzew.p(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f11505f = zzew.p(1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final zzn f11506g = new zzn() { // from class: com.google.android.gms.internal.ads.zzbx
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f11507a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f11508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f11509c;

    public zzby(float f10, float f11) {
        zzdl.d(f10 > 0.0f);
        zzdl.d(f11 > 0.0f);
        this.f11507a = f10;
        this.f11508b = f11;
        this.f11509c = Math.round(f10 * 1000.0f);
    }

    public final long a(long j10) {
        return j10 * ((long) this.f11509c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzby.class == obj.getClass()) {
            zzby zzbyVar = (zzby) obj;
            if (this.f11507a == zzbyVar.f11507a && this.f11508b == zzbyVar.f11508b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.f11507a) + 527) * 31) + Float.floatToRawIntBits(this.f11508b);
    }

    public final String toString() {
        return zzew.i("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f11507a), Float.valueOf(this.f11508b));
    }
}
