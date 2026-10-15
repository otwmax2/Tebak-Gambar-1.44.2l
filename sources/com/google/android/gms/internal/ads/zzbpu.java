package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.d;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbpu implements MediationInterstitialAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f11106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MediationInterstitialListener f11107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Uri f11108c;

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void onDestroy() {
        zzbza.b("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void onPause() {
        zzbza.b("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void onResume() {
        zzbza.b("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.f11107b = mediationInterstitialListener;
        if (mediationInterstitialListener == null) {
            zzbza.g("Listener not set for mediation. Returning.");
            return;
        }
        if (!(context instanceof Activity)) {
            zzbza.g("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.f11107b.e(this, 0);
            return;
        }
        if (!zzbbs.g(context)) {
            zzbza.g("Default browser does not support custom tabs. Bailing out.");
            this.f11107b.e(this, 0);
            return;
        }
        String string = bundle.getString("tab_url");
        if (TextUtils.isEmpty(string)) {
            zzbza.g("The tab_url retrieved from mediation metadata is empty. Bailing out.");
            this.f11107b.e(this, 0);
        } else {
            this.f11106a = (Activity) context;
            this.f11108c = Uri.parse(string);
            this.f11107b.p(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        d dVarA = new d.a().a();
        dVarA.f1276a.setData(this.f11108c);
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new zzbpt(this, new AdOverlayInfoParcel(new com.google.android.gms.ads.internal.overlay.zzc(dVarA.f1276a, null), null, new zzbps(this), null, new zzbzg(0, 0, false, false, false), null, null)));
        com.google.android.gms.ads.internal.zzt.q().p();
    }
}
