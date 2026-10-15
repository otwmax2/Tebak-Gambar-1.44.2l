package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbny implements MediationAdLoadCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbnl f11035a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Adapter f11036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzbof f11037c;

    zzbny(zzbof zzbofVar, zzbnl zzbnlVar, Adapter adapter) {
        this.f11037c = zzbofVar;
        this.f11035a = zzbnlVar;
        this.f11036b = adapter;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void a(AdError adError) {
        try {
            zzbza.b(this.f11036b.getClass().getCanonicalName() + "failed to load mediation ad: ErrorCode = " + adError.a() + ". ErrorMessage = " + adError.c() + ". ErrorDomain = " + adError.b());
            this.f11035a.Y2(adError.d());
            this.f11035a.C2(adError.a(), adError.c());
            this.f11035a.w(adError.a());
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        try {
            this.f11037c.f11057w = (MediationInterscrollerAd) obj;
            this.f11035a.m();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
        return new zzbnw(this.f11035a);
    }
}
