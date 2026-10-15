package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzatt extends com.google.android.gms.ads.internal.client.zzca {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AppEventListener f9913o;

    public zzatt(AppEventListener appEventListener) {
        this.f9913o = appEventListener;
    }

    public final AppEventListener Ta() {
        return this.f9913o;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcb
    public final void j1(String str, String str2) {
        this.f9913o.f(str, str2);
    }
}
