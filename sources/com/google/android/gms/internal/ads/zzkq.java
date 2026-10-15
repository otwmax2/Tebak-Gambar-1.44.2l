package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzkq {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzkq f20078c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzkq f20079d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzkq f20080e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzkq f20081f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final zzkq f20082g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f20083a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f20084b;

    static {
        zzkq zzkqVar = new zzkq(0L, 0L);
        f20078c = zzkqVar;
        f20079d = new zzkq(Long.MAX_VALUE, Long.MAX_VALUE);
        f20080e = new zzkq(Long.MAX_VALUE, 0L);
        f20081f = new zzkq(0L, Long.MAX_VALUE);
        f20082g = zzkqVar;
    }

    public zzkq(long j10, long j11) {
        zzdl.d(j10 >= 0);
        zzdl.d(j11 >= 0);
        this.f20083a = j10;
        this.f20084b = j11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzkq.class == obj.getClass()) {
            zzkq zzkqVar = (zzkq) obj;
            if (this.f20083a == zzkqVar.f20083a && this.f20084b == zzkqVar.f20084b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f20083a) * 31) + ((int) this.f20084b);
    }
}
