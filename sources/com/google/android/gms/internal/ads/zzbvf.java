package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbvf extends RewardedAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f11359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbuw f11360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f11361c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbvo f11362d = new zzbvo();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private FullScreenContentCallback f11363e;

    public zzbvf(Context context, String str) {
        this.f11361c = context.getApplicationContext();
        this.f11359a = str;
        this.f11360b = com.google.android.gms.ads.internal.client.zzay.a().o(context, str, new zzbnc());
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final FullScreenContentCallback a() {
        return this.f11363e;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final ResponseInfo b() {
        com.google.android.gms.ads.internal.client.zzdn zzdnVarA = null;
        try {
            zzbuw zzbuwVar = this.f11360b;
            if (zzbuwVar != null) {
                zzdnVarA = zzbuwVar.a();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
        return ResponseInfo.e(zzdnVarA);
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void d(FullScreenContentCallback fullScreenContentCallback) {
        this.f11363e = fullScreenContentCallback;
        this.f11362d.Sa(fullScreenContentCallback);
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void e(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        this.f11362d.Ta(onUserEarnedRewardListener);
        if (activity == null) {
            zzbza.g("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            zzbuw zzbuwVar = this.f11360b;
            if (zzbuwVar != null) {
                zzbuwVar.Fa(this.f11362d);
                this.f11360b.l1(ObjectWrapper.Q4(activity));
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    public final void f(com.google.android.gms.ads.internal.client.zzdx zzdxVar, RewardedAdLoadCallback rewardedAdLoadCallback) {
        try {
            zzbuw zzbuwVar = this.f11360b;
            if (zzbuwVar != null) {
                zzbuwVar.B6(com.google.android.gms.ads.internal.client.zzp.f5930a.a(this.f11361c, zzdxVar), new zzbvj(rewardedAdLoadCallback, this));
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }
}
