package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdss extends AdListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f15601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ AdView f15602b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f15603c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzdsz f15604d;

    zzdss(zzdsz zzdszVar, String str, AdView adView, String str2) {
        this.f15604d = zzdszVar;
        this.f15601a = str;
        this.f15602b = adView;
        this.f15603c = str2;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void m(LoadAdError loadAdError) {
        this.f15604d.bb(zzdsz.ab(loadAdError), this.f15603c);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void o() {
        this.f15604d.Wa(this.f15601a, this.f15602b, this.f15603c);
    }
}
