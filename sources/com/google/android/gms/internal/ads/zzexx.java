package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzexx implements zzeiq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzexz f17617a;

    zzexx(zzexz zzexzVar) {
        this.f17617a = zzexzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeiq
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        synchronized (this.f17617a) {
            this.f17617a.f17623r = (zzdlu) obj;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10173b3)).booleanValue()) {
                ((zzdlu) obj).j().f17706a = this.f17617a.f17622q;
            }
            this.f17617a.f17623r.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeiq
    public final void zza() {
        synchronized (this.f17617a) {
            this.f17617a.f17623r = null;
        }
    }
}
