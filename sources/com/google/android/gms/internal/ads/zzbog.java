package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbog extends zzbnn {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final MediationInterscrollerAd f11060o;

    public zzbog(MediationInterscrollerAd mediationInterscrollerAd) {
        this.f11060o = mediationInterscrollerAd;
    }

    @Override // com.google.android.gms.internal.ads.zzbno
    public final IObjectWrapper b() {
        return ObjectWrapper.Q4(this.f11060o.a());
    }

    @Override // com.google.android.gms.internal.ads.zzbno
    public final boolean c() {
        return this.f11060o.b();
    }
}
