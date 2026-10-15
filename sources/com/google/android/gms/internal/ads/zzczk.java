package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzczk implements zzcxj {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f14220o = ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10160a1)).intValue();

    public final synchronized int a() {
        return this.f14220o;
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final synchronized void l0(zzeyo zzeyoVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10171b1)).booleanValue()) {
            try {
                this.f14220o = zzeyoVar.f17703b.f17700b.f17680c;
            } catch (NullPointerException unused) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void t0(zzbtn zzbtnVar) {
    }
}
