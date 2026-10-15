package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzexs implements zzeiq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzext f17600a;

    zzexs(zzext zzextVar) {
        this.f17600a = zzextVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeiq
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        synchronized (this.f17600a) {
            this.f17600a.f17608v = (zzdlu) obj;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10173b3)).booleanValue()) {
                ((zzdlu) obj).j().f17706a = this.f17600a.f17604r;
            }
            this.f17600a.f17608v.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeiq
    public final void zza() {
        synchronized (this.f17600a) {
            this.f17600a.f17608v = null;
        }
    }
}
