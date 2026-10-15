package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbzx implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbzz f11624a;

    zzbzx(zzbzz zzbzzVar) {
        this.f11624a = zzbzzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        this.f11624a.f11628b.set(-1);
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void c(Object obj) {
        this.f11624a.f11628b.set(1);
    }
}
