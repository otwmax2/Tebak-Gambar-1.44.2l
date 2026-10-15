package com.google.android.gms.ads.appopen;

import android.content.Context;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.internal.ads.zzavg;
import com.google.android.gms.internal.ads.zzbsf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zza implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ Context f5641o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ String f5642p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ AdManagerAdRequest f5643q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final /* synthetic */ int f5644r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final /* synthetic */ AppOpenAd.AppOpenAdLoadCallback f5645s;

    @Override // java.lang.Runnable
    public final void run() {
        Context context = this.f5641o;
        String str = this.f5642p;
        AdManagerAdRequest adManagerAdRequest = this.f5643q;
        try {
            new zzavg(context, str, adManagerAdRequest.a(), this.f5644r, this.f5645s).a();
        } catch (IllegalStateException e10) {
            zzbsf.c(context).a(e10, "AppOpenAdManager.load");
        }
    }
}
