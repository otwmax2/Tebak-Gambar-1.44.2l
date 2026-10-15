package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.OnPaidEventListener;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfe extends zzdf {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final OnPaidEventListener f5892o;

    public zzfe(OnPaidEventListener onPaidEventListener) {
        this.f5892o = onPaidEventListener;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdg
    public final void Z6(zzs zzsVar) {
        OnPaidEventListener onPaidEventListener = this.f5892o;
        if (onPaidEventListener != null) {
            onPaidEventListener.a(AdValue.a(zzsVar.f5944p, zzsVar.f5945q, zzsVar.f5946r));
        }
    }
}
