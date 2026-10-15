package com.google.android.gms.ads.interstitial;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbci;
import com.google.android.gms.internal.ads.zzbkh;
import com.google.android.gms.internal.ads.zzbsf;
import com.google.android.gms.internal.ads.zzbyp;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class InterstitialAd {
    public static void c(final Context context, final String str, final AdRequest adRequest, final InterstitialAdLoadCallback interstitialAdLoadCallback) {
        Preconditions.l(context, "Context cannot be null.");
        Preconditions.l(str, "AdUnitId cannot be null.");
        Preconditions.l(adRequest, "AdRequest cannot be null.");
        Preconditions.l(interstitialAdLoadCallback, "LoadCallback cannot be null.");
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbar.c(context);
        if (((Boolean) zzbci.f10554i.e()).booleanValue()) {
            if (((Boolean) zzba.c().b(zzbar.f10410w9)).booleanValue()) {
                zzbyp.f11576b.execute(new Runnable() { // from class: com.google.android.gms.ads.interstitial.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdRequest adRequest2 = adRequest;
                        try {
                            new zzbkh(context2, str2).g(adRequest2.a(), interstitialAdLoadCallback);
                        } catch (IllegalStateException e10) {
                            zzbsf.c(context2).a(e10, "InterstitialAd.load");
                        }
                    }
                });
                return;
            }
        }
        new zzbkh(context, str).g(adRequest.a(), interstitialAdLoadCallback);
    }

    public abstract FullScreenContentCallback a();

    public abstract ResponseInfo b();

    public abstract void d(FullScreenContentCallback fullScreenContentCallback);

    public abstract void e(boolean z10);

    public abstract void f(Activity activity);
}
