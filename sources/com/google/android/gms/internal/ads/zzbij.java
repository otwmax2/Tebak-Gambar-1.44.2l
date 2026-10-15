package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.h5.OnH5AdsEventListener;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbij extends zzbil {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final OnH5AdsEventListener f10771o;

    public zzbij(OnH5AdsEventListener onH5AdsEventListener) {
        this.f10771o = onH5AdsEventListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbim
    public final void u(String str) {
        this.f10771o.a(str);
    }
}
