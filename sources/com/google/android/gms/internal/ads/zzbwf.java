package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbwf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Clock f11426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f11427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbxf f11428c;

    zzbwf(Clock clock, com.google.android.gms.ads.internal.util.zzg zzgVar, zzbxf zzbxfVar) {
        this.f11426a = clock;
        this.f11427b = zzgVar;
        this.f11428c = zzbxfVar;
    }

    public final void a() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10313o0)).booleanValue()) {
            this.f11428c.y();
        }
    }

    public final void b(int i10, long j10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10302n0)).booleanValue()) {
            return;
        }
        if (j10 - this.f11427b.c() < 0) {
            com.google.android.gms.ads.internal.util.zze.k("Receiving npa decision in the past, ignoring.");
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10313o0)).booleanValue()) {
            this.f11427b.x0(i10);
            this.f11427b.A0(j10);
        } else {
            this.f11427b.x0(-1);
            this.f11427b.A0(j10);
        }
        a();
    }
}
