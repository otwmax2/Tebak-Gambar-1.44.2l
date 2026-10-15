package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdsw extends AdListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f15614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzdsz f15615b;

    zzdsw(zzdsz zzdszVar, String str) {
        this.f15615b = zzdszVar;
        this.f15614a = str;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void m(LoadAdError loadAdError) {
        this.f15615b.bb(zzdsz.ab(loadAdError), this.f15614a);
    }
}
