package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.rewarded.RewardItem;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface MediationRewardedAdCallback extends MediationAdCallback {
    void a(RewardItem rewardItem);

    void b();

    void d(AdError adError);

    void e();
}
