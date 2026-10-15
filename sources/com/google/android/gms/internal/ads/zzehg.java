package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzehg implements zzeiq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzehh f16665a;

    zzehg(zzehh zzehhVar) {
        this.f16665a = zzehhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeiq
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        zzcok zzcokVar = (zzcok) obj;
        synchronized (this.f16665a) {
            zzehh zzehhVar = this.f16665a;
            if (zzehhVar.f16673v != null) {
                zzehhVar.f16673v.a();
            }
            this.f16665a.f16673v = zzcokVar;
            this.f16665a.f16673v.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeiq
    public final void zza() {
        synchronized (this.f16665a) {
            this.f16665a.f16673v = null;
        }
    }
}
