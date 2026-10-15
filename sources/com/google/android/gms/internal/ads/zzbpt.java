package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbpt implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ AdOverlayInfoParcel f11104o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzbpu f11105p;

    zzbpt(zzbpu zzbpuVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f11105p = zzbpuVar;
        this.f11104o = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.zzt.k();
        com.google.android.gms.ads.internal.overlay.zzm.a(this.f11105p.f11106a, this.f11104o, true);
    }
}
