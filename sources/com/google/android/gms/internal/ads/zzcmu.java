package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcmu implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f13504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzcmv f13505b;

    zzcmu(zzcmv zzcmvVar, String str) {
        this.f13505b = zzcmvVar;
        this.f13504a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        zzcmv zzcmvVar = this.f13505b;
        zzcmvVar.f13513v.a(zzcmvVar.f13512u.d(zzcmvVar.f13510s, zzcmvVar.f13511t, false, this.f13504a, null, zzcmvVar.f13511t.f17638d));
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        String str = (String) obj;
        zzcmv zzcmvVar = this.f13505b;
        zzcmvVar.f13513v.a(zzcmvVar.f13512u.d(zzcmvVar.f13510s, zzcmvVar.f13511t, false, this.f13504a, str, zzcmvVar.f13511t.f17638d));
    }
}
