package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdza implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzfcd f15990a;

    zzdza(zzdzb zzdzbVar, zzfcd zzfcdVar) {
        this.f15990a = zzfcdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        zzbza.d("Failed to get offline signal database: ".concat(String.valueOf(th.getMessage())));
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        try {
            this.f15990a.a((SQLiteDatabase) obj);
        } catch (Exception e10) {
            zzbza.d("Error executing function on offline signal database: ".concat(String.valueOf(e10.getMessage())));
        }
    }
}
