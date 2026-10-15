package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdqm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbim f15403a;

    zzdqm(zzbim zzbimVar) {
        this.f15403a = zzbimVar;
    }

    private final void s(zzdql zzdqlVar) throws RemoteException {
        String strA = zzdql.a(zzdqlVar);
        zzbza.f("Dispatching AFMA event on publisher webview: ".concat(strA));
        this.f15403a.u(strA);
    }

    public final void a() throws RemoteException {
        s(new zzdql("initialize", null));
    }

    public final void b(long j10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("interstitial", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onAdClicked";
        this.f15403a.u(zzdql.a(zzdqlVar));
    }

    public final void c(long j10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("interstitial", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onAdClosed";
        s(zzdqlVar);
    }

    public final void d(long j10, int i10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("interstitial", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onAdFailedToLoad";
        zzdqlVar.f15400d = Integer.valueOf(i10);
        s(zzdqlVar);
    }

    public final void e(long j10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("interstitial", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onAdLoaded";
        s(zzdqlVar);
    }

    public final void f(long j10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("interstitial", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onNativeAdObjectNotAvailable";
        s(zzdqlVar);
    }

    public final void g(long j10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("interstitial", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onAdOpened";
        s(zzdqlVar);
    }

    public final void h(long j10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("creation", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "nativeObjectCreated";
        s(zzdqlVar);
    }

    public final void i(long j10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("creation", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "nativeObjectNotCreated";
        s(zzdqlVar);
    }

    public final void j(long j10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("rewarded", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onAdClicked";
        s(zzdqlVar);
    }

    public final void k(long j10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("rewarded", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onRewardedAdClosed";
        s(zzdqlVar);
    }

    public final void l(long j10, zzbut zzbutVar) throws RemoteException {
        zzdql zzdqlVar = new zzdql("rewarded", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onUserEarnedReward";
        zzdqlVar.f15401e = zzbutVar.c();
        zzdqlVar.f15402f = Integer.valueOf(zzbutVar.b());
        s(zzdqlVar);
    }

    public final void m(long j10, int i10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("rewarded", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onRewardedAdFailedToLoad";
        zzdqlVar.f15400d = Integer.valueOf(i10);
        s(zzdqlVar);
    }

    public final void n(long j10, int i10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("rewarded", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onRewardedAdFailedToShow";
        zzdqlVar.f15400d = Integer.valueOf(i10);
        s(zzdqlVar);
    }

    public final void o(long j10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("rewarded", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onAdImpression";
        s(zzdqlVar);
    }

    public final void p(long j10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("rewarded", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onRewardedAdLoaded";
        s(zzdqlVar);
    }

    public final void q(long j10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("rewarded", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onNativeAdObjectNotAvailable";
        s(zzdqlVar);
    }

    public final void r(long j10) throws RemoteException {
        zzdql zzdqlVar = new zzdql("rewarded", null);
        zzdqlVar.f15397a = Long.valueOf(j10);
        zzdqlVar.f15399c = "onRewardedAdOpened";
        s(zzdqlVar);
    }
}
