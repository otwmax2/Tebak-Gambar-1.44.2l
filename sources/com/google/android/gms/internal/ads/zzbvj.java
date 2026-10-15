package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbvj extends zzbvc {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final RewardedAdLoadCallback f11366o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final RewardedAd f11367p;

    public zzbvj(RewardedAdLoadCallback rewardedAdLoadCallback, RewardedAd rewardedAd) {
        this.f11366o = rewardedAdLoadCallback;
        this.f11367p = rewardedAd;
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void A(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (this.f11366o != null) {
            this.f11366o.a(zzeVar.W3());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void F(int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void e() {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.f11366o;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.b(this.f11367p);
        }
    }
}
