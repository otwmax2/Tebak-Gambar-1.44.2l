package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzblh implements zzbzu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzblq f10879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfec f10880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzblr f10881c;

    zzblh(zzblr zzblrVar, zzblq zzblqVar, zzfec zzfecVar) {
        this.f10881c = zzblrVar;
        this.f10879a = zzblqVar;
        this.f10880b = zzfecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzu
    public final void zza() {
        synchronized (this.f10881c.f10896a) {
            this.f10881c.f10904i = 1;
            com.google.android.gms.ads.internal.util.zze.k("Failed loading new engine. Marking new engine destroyable.");
            this.f10879a.g();
            if (((Boolean) zzbcd.f10515d.e()).booleanValue()) {
                zzblr zzblrVar = this.f10881c;
                if (zzblrVar.f10900e != null) {
                    zzfep zzfepVar = zzblrVar.f10900e;
                    zzfec zzfecVar = this.f10880b;
                    zzfecVar.y0(false);
                    zzfepVar.b(zzfecVar.j());
                }
            }
        }
    }
}
