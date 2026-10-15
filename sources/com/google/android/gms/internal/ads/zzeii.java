package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeii implements zzeiq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzeij f16710a;

    zzeii(zzeij zzeijVar) {
        this.f16710a = zzeijVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeiq
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        zzdcv zzdcvVar = (zzdcv) obj;
        synchronized (this.f16710a) {
            this.f16710a.f16719w = zzdcvVar;
            this.f16710a.f16719w.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeiq
    public final void zza() {
        synchronized (this.f16710a) {
            this.f16710a.f16719w = null;
        }
    }
}
