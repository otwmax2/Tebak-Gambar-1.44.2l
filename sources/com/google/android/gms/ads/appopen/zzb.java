package com.google.android.gms.ads.appopen;

import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.internal.ads.zzavg;
import com.google.android.gms.internal.ads.zzbsf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zzb implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ Context f5646o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ String f5647p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ AdRequest f5648q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final /* synthetic */ AppOpenAd.AppOpenAdLoadCallback f5649r;

    @Override // java.lang.Runnable
    public final void run() {
        Context context = this.f5646o;
        String str = this.f5647p;
        AdRequest adRequest = this.f5648q;
        try {
            new zzavg(context, str, adRequest.a(), 3, this.f5649r).a();
        } catch (IllegalStateException e10) {
            zzbsf.c(context).a(e10, "AppOpenAd.load");
        }
    }
}
