package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbvq extends RewardedInterstitialAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f11377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbuw f11378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f11379c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbvo f11380d = new zzbvo();

    public zzbvq(Context context, String str) {
        this.f11377a = str;
        this.f11379c = context.getApplicationContext();
        this.f11378b = com.google.android.gms.ads.internal.client.zzay.a().o(context, str, new zzbnc());
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final ResponseInfo a() {
        com.google.android.gms.ads.internal.client.zzdn zzdnVarA = null;
        try {
            zzbuw zzbuwVar = this.f11378b;
            if (zzbuwVar != null) {
                zzdnVarA = zzbuwVar.a();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
        return ResponseInfo.e(zzdnVarA);
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void c(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        this.f11380d.Ta(onUserEarnedRewardListener);
        try {
            zzbuw zzbuwVar = this.f11378b;
            if (zzbuwVar != null) {
                zzbuwVar.Fa(this.f11380d);
                this.f11378b.l1(ObjectWrapper.Q4(activity));
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    public final void d(com.google.android.gms.ads.internal.client.zzdx zzdxVar, RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        try {
            zzbuw zzbuwVar = this.f11378b;
            if (zzbuwVar != null) {
                zzbuwVar.f5(com.google.android.gms.ads.internal.client.zzp.f5930a.a(this.f11379c, zzdxVar), new zzbvp(rewardedInterstitialAdLoadCallback, this));
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }
}
