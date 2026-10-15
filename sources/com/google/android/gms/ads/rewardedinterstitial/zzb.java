package com.google.android.gms.ads.rewardedinterstitial;

import android.content.Context;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.internal.ads.zzbsf;
import com.google.android.gms.internal.ads.zzbvq;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zzb implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ Context f6483o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ String f6484p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ AdManagerAdRequest f6485q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final /* synthetic */ RewardedInterstitialAdLoadCallback f6486r;

    @Override // java.lang.Runnable
    public final void run() {
        Context context = this.f6483o;
        String str = this.f6484p;
        AdManagerAdRequest adManagerAdRequest = this.f6485q;
        try {
            new zzbvq(context, str).d(adManagerAdRequest.a(), this.f6486r);
        } catch (IllegalStateException e10) {
            zzbsf.c(context).a(e10, "RewardedInterstitialAdManager.load");
        }
    }
}
