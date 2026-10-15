package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzboa implements MediationAdLoadCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbnl f11039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzbof f11040b;

    zzboa(zzbof zzbofVar, zzbnl zzbnlVar) {
        this.f11040b = zzbofVar;
        this.f11039a = zzbnlVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void a(AdError adError) {
        try {
            zzbza.b(this.f11040b.f11049o.getClass().getCanonicalName() + "failed to loaded mediation ad: ErrorCode = " + adError.a() + ". ErrorMessage = " + adError.c() + ". ErrorDomain = " + adError.b());
            this.f11039a.Y2(adError.d());
            this.f11039a.C2(adError.a(), adError.c());
            this.f11039a.w(adError.a());
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        MediationBannerAd mediationBannerAd = (MediationBannerAd) obj;
        try {
            this.f11040b.f11053s = mediationBannerAd.a();
            this.f11039a.m();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
        return new zzbnw(this.f11039a);
    }
}
