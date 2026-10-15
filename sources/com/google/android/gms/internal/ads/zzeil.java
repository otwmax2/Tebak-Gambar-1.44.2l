package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeil implements zzeiq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzeim f16729a;

    zzeil(zzeim zzeimVar) {
        this.f16729a = zzeimVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeiq
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        synchronized (this.f16729a) {
            this.f16729a.f16732c = ((zzcqm) obj).c();
            ((zzcqm) obj).b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeiq
    public final void zza() {
        synchronized (this.f16729a) {
        }
    }
}
