package com.google.android.gms.ads.admanager;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbkh;
import com.google.android.gms.internal.ads.zzbsf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zzc implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ Context f5637o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ String f5638p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ AdManagerAdRequest f5639q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final /* synthetic */ AdManagerInterstitialAdLoadCallback f5640r;

    @Override // java.lang.Runnable
    public final void run() {
        Context context = this.f5637o;
        String str = this.f5638p;
        AdManagerAdRequest adManagerAdRequest = this.f5639q;
        try {
            new zzbkh(context, str).g(adManagerAdRequest.a(), this.f5640r);
        } catch (IllegalStateException e10) {
            zzbsf.c(context).a(e10, "AdManagerInterstitialAd.load");
        }
    }
}
