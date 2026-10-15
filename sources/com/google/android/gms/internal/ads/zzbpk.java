package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbpk implements MediationAdLoadCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbow f11085a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzbnl f11086b;

    zzbpk(zzbpo zzbpoVar, zzbow zzbowVar, zzbnl zzbnlVar) {
        this.f11085a = zzbowVar;
        this.f11086b = zzbnlVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void a(AdError adError) {
        try {
            this.f11085a.A(adError.d());
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        UnifiedNativeAdMapper unifiedNativeAdMapper = (UnifiedNativeAdMapper) obj;
        if (unifiedNativeAdMapper != null) {
            try {
                this.f11085a.q5(new zzbok(unifiedNativeAdMapper));
            } catch (RemoteException e10) {
                zzbza.e(BuildConfig.FLAVOR, e10);
            }
            return new zzbpp(this.f11086b);
        }
        zzbza.g("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.f11085a.s("Adapter returned null.");
            return null;
        } catch (RemoteException e11) {
            zzbza.e(BuildConfig.FLAVOR, e11);
            return null;
        }
    }
}
