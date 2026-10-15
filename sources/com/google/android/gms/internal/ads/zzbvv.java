package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbvv implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzfut f11386a;

    zzbvv(zzbvw zzbvwVar, zzfut zzfutVar) {
        this.f11386a = zzfutVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        zzbvw.f11387m.remove(this.f11386a);
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        zzbvw.f11387m.remove(this.f11386a);
    }
}
