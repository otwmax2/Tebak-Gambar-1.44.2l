package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeuh implements zzeiq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzeui f17390a;

    zzeuh(zzeui zzeuiVar) {
        this.f17390a = zzeuiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeiq
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        zzcoe zzcoeVar = (zzcoe) obj;
        synchronized (this.f17390a) {
            zzcoe zzcoeVar2 = this.f17390a.f17400x;
            if (zzcoeVar2 != null) {
                zzcoeVar2.a();
            }
            zzeui zzeuiVar = this.f17390a;
            zzeuiVar.f17400x = zzcoeVar;
            zzcoeVar.i(zzeuiVar);
            zzeui zzeuiVar2 = this.f17390a;
            zzeuiVar2.f17396t.n(new zzcof(zzcoeVar, zzeuiVar2, zzeuiVar2.f17396t));
            zzcoeVar.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeiq
    public final void zza() {
        synchronized (this.f17390a) {
            this.f17390a.f17400x = null;
        }
    }
}
