package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAppOpenAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardItem;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbpp implements MediationBannerAdCallback, MediationInterstitialAdCallback, MediationRewardedAdCallback, MediationNativeAdCallback, MediationAppOpenAdCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzbnl f11099a;

    zzbpp(zzbnl zzbnlVar) {
        this.f11099a = zzbnlVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void a(RewardItem rewardItem) {
        try {
            this.f11099a.u6(new zzbvn(rewardItem));
        } catch (RemoteException unused) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void b() {
        try {
            this.f11099a.t();
        } catch (RemoteException unused) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void c() {
        try {
            this.f11099a.n();
        } catch (RemoteException unused) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void d(AdError adError) {
        try {
            zzbza.g("Mediated ad failed to show: Error Code = " + adError.a() + ". Error Message = " + adError.c() + " Error Domain = " + adError.b());
            this.f11099a.W0(adError.d());
        } catch (RemoteException unused) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void e() {
        try {
            this.f11099a.E();
        } catch (RemoteException unused) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void f() {
        try {
            this.f11099a.c();
        } catch (RemoteException unused) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void g() {
        try {
            this.f11099a.l();
        } catch (RemoteException unused) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void h() {
        try {
            this.f11099a.b();
        } catch (RemoteException unused) {
        }
    }
}
