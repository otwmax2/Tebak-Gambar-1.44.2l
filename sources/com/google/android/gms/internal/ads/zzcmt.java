package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcmt implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzcmv f13503a;

    zzcmt(zzcmv zzcmvVar) {
        this.f13503a = zzcmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        String str = (String) obj;
        zzcmv zzcmvVar = this.f13503a;
        zzcmvVar.f13513v.c(zzcmvVar.f13512u.d(zzcmvVar.f13510s, zzcmvVar.f13511t, false, BuildConfig.FLAVOR, str, zzcmvVar.f13511t.f17636c), true == com.google.android.gms.ads.internal.zzt.q().x(this.f13503a.f13506o) ? 2 : 1);
    }
}
