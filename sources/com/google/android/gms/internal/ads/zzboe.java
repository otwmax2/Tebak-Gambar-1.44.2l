package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzboe implements MediationAdLoadCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbnl f11047a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzbof f11048b;

    zzboe(zzbof zzbofVar, zzbnl zzbnlVar) {
        this.f11048b = zzbofVar;
        this.f11047a = zzbnlVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void a(AdError adError) {
        try {
            zzbza.b(this.f11048b.f11049o.getClass().getCanonicalName() + "failed to load mediation ad: ErrorCode = " + adError.a() + ". ErrorMessage = " + adError.c() + ". ErrorDomain = " + adError.b());
            this.f11047a.Y2(adError.d());
            this.f11047a.C2(adError.a(), adError.c());
            this.f11047a.w(adError.a());
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        try {
            this.f11048b.f11058x = (MediationAppOpenAd) obj;
            this.f11047a.m();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
        return new zzbnw(this.f11047a);
    }
}
