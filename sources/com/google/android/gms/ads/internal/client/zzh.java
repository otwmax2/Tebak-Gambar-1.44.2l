package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.AdLoadCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzh extends zzbj {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AdLoadCallback f5902o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Object f5903p;

    public zzh(AdLoadCallback adLoadCallback, Object obj) {
        this.f5902o = adLoadCallback;
        this.f5903p = obj;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void a() {
        Object obj;
        AdLoadCallback adLoadCallback = this.f5902o;
        if (adLoadCallback == null || (obj = this.f5903p) == null) {
            return;
        }
        adLoadCallback.b(obj);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void b1(zze zzeVar) {
        AdLoadCallback adLoadCallback = this.f5902o;
        if (adLoadCallback != null) {
            adLoadCallback.a(zzeVar.W3());
        }
    }
}
