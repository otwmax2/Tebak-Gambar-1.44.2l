package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbod implements MediationAdLoadCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbnl f11045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzbof f11046b;

    zzbod(zzbof zzbofVar, zzbnl zzbnlVar) {
        this.f11046b = zzbofVar;
        this.f11045a = zzbnlVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void a(AdError adError) {
        try {
            zzbza.b(this.f11046b.f11049o.getClass().getCanonicalName() + "failed to load mediation ad: ErrorCode = " + adError.a() + ". ErrorMessage = " + adError.c() + ". ErrorDomain = " + adError.b());
            this.f11045a.Y2(adError.d());
            this.f11045a.C2(adError.a(), adError.c());
            this.f11045a.w(adError.a());
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        try {
            this.f11046b.f11056v = (MediationRewardedAd) obj;
            this.f11045a.m();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
        return new zzbvm(this.f11045a);
    }
}
