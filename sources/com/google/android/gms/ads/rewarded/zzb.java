package com.google.android.gms.ads.rewarded;

import android.content.Context;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.internal.ads.zzbsf;
import com.google.android.gms.internal.ads.zzbvf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zzb implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ Context f6471o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ String f6472p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ AdManagerAdRequest f6473q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final /* synthetic */ RewardedAdLoadCallback f6474r;

    @Override // java.lang.Runnable
    public final void run() {
        Context context = this.f6471o;
        String str = this.f6472p;
        AdManagerAdRequest adManagerAdRequest = this.f6473q;
        try {
            new zzbvf(context, str).f(adManagerAdRequest.a(), this.f6474r);
        } catch (IllegalStateException e10) {
            zzbsf.c(context).a(e10, "RewardedAd.loadAdManager");
        }
    }
}
