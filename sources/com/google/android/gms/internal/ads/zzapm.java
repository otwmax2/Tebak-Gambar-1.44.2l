package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzapm implements zzfis {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzfhp f9669a;

    zzapm(zzfhp zzfhpVar) {
        this.f9669a = zzfhpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfis
    public final void a(int i10, long j10) {
        this.f9669a.d(i10, System.currentTimeMillis() - j10);
    }

    @Override // com.google.android.gms.internal.ads.zzfis
    public final void b(int i10, long j10, String str) {
        this.f9669a.e(i10, System.currentTimeMillis() - j10, str);
    }
}
