package com.google.ads.mediation;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
final class e extends AdListener implements UnifiedNativeAd.OnUnifiedNativeAdLoadedListener, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @VisibleForTesting
    final AbstractAdViewAdapter f5502o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @VisibleForTesting
    final MediationNativeListener f5503p;

    public e(AbstractAdViewAdapter abstractAdViewAdapter, MediationNativeListener mediationNativeListener) {
        this.f5502o = abstractAdViewAdapter;
        this.f5503p = mediationNativeListener;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
    public final void a(UnifiedNativeAd unifiedNativeAd) {
        this.f5503p.s(this.f5502o, new a(unifiedNativeAd));
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener
    public final void b(NativeCustomTemplateAd nativeCustomTemplateAd) {
        this.f5503p.g(this.f5502o, nativeCustomTemplateAd);
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomClickListener
    public final void c(NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
        this.f5503p.m(this.f5502o, nativeCustomTemplateAd, str);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void e() {
        this.f5503p.i(this.f5502o);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void m(LoadAdError loadAdError) {
        this.f5503p.c(this.f5502o, loadAdError);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void n() {
        this.f5503p.u(this.f5502o);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void o() {
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void p() {
        this.f5503p.b(this.f5502o);
    }

    @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.ads.internal.client.zza
    public final void w0() {
        this.f5503p.k(this.f5502o);
    }
}
