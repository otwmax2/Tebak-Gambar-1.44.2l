package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbkh extends AdManagerInterstitialAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f10836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.client.zzp f10837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.client.zzbu f10838c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f10839d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzbnc f10840e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private FullScreenContentCallback f10841f;

    public zzbkh(Context context, String str) {
        zzbnc zzbncVar = new zzbnc();
        this.f10840e = zzbncVar;
        this.f10836a = context;
        this.f10839d = str;
        this.f10837b = com.google.android.gms.ads.internal.client.zzp.f5930a;
        this.f10838c = com.google.android.gms.ads.internal.client.zzay.a().e(context, new com.google.android.gms.ads.internal.client.zzq(), str, zzbncVar);
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final FullScreenContentCallback a() {
        return this.f10841f;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final ResponseInfo b() {
        com.google.android.gms.ads.internal.client.zzdn zzdnVarI = null;
        try {
            com.google.android.gms.ads.internal.client.zzbu zzbuVar = this.f10838c;
            if (zzbuVar != null) {
                zzdnVarI = zzbuVar.i();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
        return ResponseInfo.e(zzdnVarI);
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void d(FullScreenContentCallback fullScreenContentCallback) {
        try {
            this.f10841f = fullScreenContentCallback;
            com.google.android.gms.ads.internal.client.zzbu zzbuVar = this.f10838c;
            if (zzbuVar != null) {
                zzbuVar.q2(new com.google.android.gms.ads.internal.client.zzbb(fullScreenContentCallback));
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void e(boolean z10) {
        try {
            com.google.android.gms.ads.internal.client.zzbu zzbuVar = this.f10838c;
            if (zzbuVar != null) {
                zzbuVar.D8(z10);
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void f(Activity activity) {
        if (activity == null) {
            zzbza.g("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            com.google.android.gms.ads.internal.client.zzbu zzbuVar = this.f10838c;
            if (zzbuVar != null) {
                zzbuVar.y4(ObjectWrapper.Q4(activity));
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    public final void g(com.google.android.gms.ads.internal.client.zzdx zzdxVar, AdLoadCallback adLoadCallback) {
        try {
            com.google.android.gms.ads.internal.client.zzbu zzbuVar = this.f10838c;
            if (zzbuVar != null) {
                zzbuVar.D3(this.f10837b.a(this.f10836a, zzdxVar), new com.google.android.gms.ads.internal.client.zzh(adLoadCallback, this));
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
            adLoadCallback.a(new LoadAdError(0, "Internal Error.", "com.google.android.gms.ads", null, null));
        }
    }
}
