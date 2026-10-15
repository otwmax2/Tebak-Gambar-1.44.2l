package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzfis;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class a implements zzfis {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzi f5717a;

    a(zzi zziVar) {
        this.f5717a = zziVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfis
    public final void a(int i10, long j10) {
        this.f5717a.f6220v.d(i10, System.currentTimeMillis() - j10);
    }

    @Override // com.google.android.gms.internal.ads.zzfis
    public final void b(int i10, long j10, String str) {
        this.f5717a.f6220v.e(i10, System.currentTimeMillis() - j10, str);
    }
}
