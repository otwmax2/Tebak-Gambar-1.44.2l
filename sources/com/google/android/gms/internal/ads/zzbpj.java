package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbpj implements MediationAdLoadCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbot f11082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzbnl f11083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzbpo f11084c;

    zzbpj(zzbpo zzbpoVar, zzbot zzbotVar, zzbnl zzbnlVar) {
        this.f11084c = zzbpoVar;
        this.f11082a = zzbotVar;
        this.f11083b = zzbnlVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void a(AdError adError) {
        try {
            this.f11082a.A(adError.d());
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        MediationInterstitialAd mediationInterstitialAd = (MediationInterstitialAd) obj;
        if (mediationInterstitialAd != null) {
            try {
                this.f11084c.f11095p = mediationInterstitialAd;
                this.f11082a.e();
            } catch (RemoteException e10) {
                zzbza.e(BuildConfig.FLAVOR, e10);
            }
            return new zzbpp(this.f11083b);
        }
        zzbza.g("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.f11082a.s("Adapter returned null.");
            return null;
        } catch (RemoteException e11) {
            zzbza.e(BuildConfig.FLAVOR, e11);
            return null;
        }
    }
}
