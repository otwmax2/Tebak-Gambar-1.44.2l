package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbvm implements MediationRewardedAdCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbnl f11370a;

    public zzbvm(zzbnl zzbnlVar) {
        this.f11370a = zzbnlVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void a(RewardItem rewardItem) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onUserEarnedReward.");
        try {
            this.f11370a.u6(new zzbvn(rewardItem));
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void b() {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onVideoComplete.");
        try {
            this.f11370a.v();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void c() {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdOpened.");
        try {
            this.f11370a.n();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void d(AdError adError) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdFailedToShow.");
        zzbza.g("Mediation ad failed to show: Error Code = " + adError.a() + ". Error Message = " + adError.c() + " Error Domain = " + adError.b());
        try {
            this.f11370a.W0(adError.d());
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void e() {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onVideoStart.");
        try {
            this.f11370a.E();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void f() {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdClosed.");
        try {
            this.f11370a.c();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void g() {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called reportAdImpression.");
        try {
            this.f11370a.l();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void h() {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called reportAdClicked.");
        try {
            this.f11370a.b();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }
}
