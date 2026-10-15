package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdsr extends AppOpenAd.AppOpenAdLoadCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f15598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f15599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzdsz f15600c;

    zzdsr(zzdsz zzdszVar, String str, String str2) {
        this.f15600c = zzdszVar;
        this.f15598a = str;
        this.f15599b = str2;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void a(LoadAdError loadAdError) {
        this.f15600c.bb(zzdsz.ab(loadAdError), this.f15599b);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* bridge */ /* synthetic */ void b(AppOpenAd appOpenAd) {
        this.f15600c.Wa(this.f15598a, appOpenAd, this.f15599b);
    }
}
