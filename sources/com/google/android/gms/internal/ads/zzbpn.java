package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbpn implements MediationAdLoadCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzboz f11091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzbnl f11092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzbpo f11093c;

    zzbpn(zzbpo zzbpoVar, zzboz zzbozVar, zzbnl zzbnlVar) {
        this.f11093c = zzbpoVar;
        this.f11091a = zzbozVar;
        this.f11092b = zzbnlVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void a(AdError adError) {
        try {
            this.f11091a.A(adError.d());
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        MediationRewardedAd mediationRewardedAd = (MediationRewardedAd) obj;
        if (mediationRewardedAd != null) {
            try {
                this.f11093c.f11096q = mediationRewardedAd;
                this.f11091a.e();
            } catch (RemoteException e10) {
                zzbza.e(BuildConfig.FLAVOR, e10);
            }
            return new zzbpp(this.f11092b);
        }
        zzbza.g("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.f11091a.s("Adapter returned null.");
            return null;
        } catch (RemoteException e11) {
            zzbza.e(BuildConfig.FLAVOR, e11);
            return null;
        }
    }
}
