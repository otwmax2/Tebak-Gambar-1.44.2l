package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaw {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzaw f10047f = new zzaw(new zzau());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f10048g = zzew.p(0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f10049h = zzew.p(1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f10050i = zzew.p(2);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f10051j = zzew.p(3);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f10052k = zzew.p(4);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final zzn f10053l = new zzn() { // from class: com.google.android.gms.internal.ads.zzat
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f10054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f10055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f10056c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f10057d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f10058e;

    private zzaw(zzau zzauVar) {
        this.f10054a = -9223372036854775807L;
        this.f10055b = -9223372036854775807L;
        this.f10056c = -9223372036854775807L;
        this.f10057d = -3.4028235E38f;
        this.f10058e = -3.4028235E38f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaw)) {
            return false;
        }
        long j10 = ((zzaw) obj).f10054a;
        return true;
    }

    public final int hashCode() {
        int i10 = (int) (-9223372034707292159L);
        return (((((((i10 * 31) + i10) * 31) + i10) * 31) + Float.floatToIntBits(-3.4028235E38f)) * 31) + Float.floatToIntBits(-3.4028235E38f);
    }
}
