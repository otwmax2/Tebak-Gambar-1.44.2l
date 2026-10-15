package com.google.android.gms.internal.ads;

import android.net.Uri;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzun extends zzcn {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Object f20804k = new Object();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final zzbg f20805l;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f20806f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f20807g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f20808h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzbg f20809i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzaw f20810j;

    static {
        zzaj zzajVar = new zzaj();
        zzajVar.a("SinglePeriodTimeline");
        zzajVar.b(Uri.EMPTY);
        f20805l = zzajVar.c();
    }

    public zzun(long j10, long j11, long j12, long j13, long j14, long j15, long j16, boolean z10, boolean z11, boolean z12, Object obj, zzbg zzbgVar, zzaw zzawVar) {
        this.f20806f = j13;
        this.f20807g = j14;
        this.f20808h = z10;
        this.f20809i = zzbgVar;
        this.f20810j = zzawVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final int a(Object obj) {
        return f20804k.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final int b() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final int c() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final zzck d(int i10, zzck zzckVar, boolean z10) {
        zzdl.a(i10, 0, 1);
        zzckVar.k(null, z10 ? f20804k : null, 0, this.f20806f, 0L, zzd.f14247d, false);
        return zzckVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final zzcm e(int i10, zzcm zzcmVar, long j10) {
        zzdl.a(i10, 0, 1);
        zzcmVar.a(zzcm.f13450o, this.f20809i, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, this.f20808h, false, this.f20810j, 0L, this.f20807g, 0, 0, 0L);
        return zzcmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final Object f(int i10) {
        zzdl.a(i10, 0, 1);
        return f20804k;
    }
}
