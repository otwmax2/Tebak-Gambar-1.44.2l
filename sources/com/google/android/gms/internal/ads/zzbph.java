package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbph implements MediationAdLoadCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzboq f11078a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzbnl f11079b;

    zzbph(zzbpo zzbpoVar, zzboq zzboqVar, zzbnl zzbnlVar) {
        this.f11078a = zzboqVar;
        this.f11079b = zzbnlVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void a(AdError adError) {
        try {
            this.f11078a.A(adError.d());
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        MediationBannerAd mediationBannerAd = (MediationBannerAd) obj;
        if (mediationBannerAd != null) {
            try {
                this.f11078a.G5(ObjectWrapper.Q4(mediationBannerAd.a()));
            } catch (RemoteException e10) {
                zzbza.e(BuildConfig.FLAVOR, e10);
            }
            return new zzbpp(this.f11079b);
        }
        zzbza.g("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.f11078a.s("Adapter returned null.");
            return null;
        } catch (RemoteException e11) {
            zzbza.e(BuildConfig.FLAVOR, e11);
            return null;
        }
    }
}
