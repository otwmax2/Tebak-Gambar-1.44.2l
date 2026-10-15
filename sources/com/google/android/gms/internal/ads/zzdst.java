package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdst extends InterstitialAdLoadCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f15605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f15606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzdsz f15607c;

    zzdst(zzdsz zzdszVar, String str, String str2) {
        this.f15607c = zzdszVar;
        this.f15605a = str;
        this.f15606b = str2;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void a(LoadAdError loadAdError) {
        this.f15607c.bb(zzdsz.ab(loadAdError), this.f15606b);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* bridge */ /* synthetic */ void b(InterstitialAd interstitialAd) {
        this.f15607c.Wa(this.f15605a, interstitialAd, this.f15606b);
    }
}
