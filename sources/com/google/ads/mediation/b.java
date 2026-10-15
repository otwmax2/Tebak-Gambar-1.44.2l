package com.google.ads.mediation;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
final class b extends AdListener implements AppEventListener, zza {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @VisibleForTesting
    final AbstractAdViewAdapter f5496o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @VisibleForTesting
    final MediationBannerListener f5497p;

    public b(AbstractAdViewAdapter abstractAdViewAdapter, MediationBannerListener mediationBannerListener) {
        this.f5496o = abstractAdViewAdapter;
        this.f5497p = mediationBannerListener;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void e() {
        this.f5497p.a(this.f5496o);
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final void f(String str, String str2) {
        this.f5497p.t(this.f5496o, str, str2);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void m(LoadAdError loadAdError) {
        this.f5497p.f(this.f5496o, loadAdError);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void o() {
        this.f5497p.j(this.f5496o);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void p() {
        this.f5497p.q(this.f5496o);
    }

    @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.ads.internal.client.zza
    public final void w0() {
        this.f5497p.h(this.f5496o);
    }
}
