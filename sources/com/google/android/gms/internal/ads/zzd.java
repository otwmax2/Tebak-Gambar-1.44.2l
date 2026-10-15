package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzd {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzd f14247d = new zzd(null, new zzc[0], 0, -9223372036854775807L, 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final zzc f14248e = new zzc(0).b(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f14249f = zzew.p(1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f14250g = zzew.p(2);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f14251h = zzew.p(3);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f14252i = zzew.p(4);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final zzn f14253j = new zzn() { // from class: com.google.android.gms.internal.ads.zza
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzc[] f14256c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f14255b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f14254a = 0;

    private zzd(Object obj, zzc[] zzcVarArr, long j10, long j11, int i10) {
        this.f14256c = zzcVarArr;
    }

    public final zzc a(int i10) {
        return i10 < 0 ? f14248e : this.f14256c[i10];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzd.class == obj.getClass()) {
            zzd zzdVar = (zzd) obj;
            if (zzew.u(null, null) && Arrays.equals(this.f14256c, zzdVar.f14256c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) (-9223372036854775807L)) * 961) + Arrays.hashCode(this.f14256c);
    }

    public final String toString() {
        return "AdPlaybackState(adsId=" + ((Object) null) + ", adResumePositionUs=0, adGroups=[])";
    }
}
