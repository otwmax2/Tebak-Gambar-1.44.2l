package com.google.ads.mediation;

import android.view.View;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.zze;
import com.google.android.gms.ads.formats.zzg;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class a extends UnifiedNativeAdMapper {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final UnifiedNativeAd f5495s;

    public a(UnifiedNativeAd unifiedNativeAd) {
        this.f5495s = unifiedNativeAd;
        w(unifiedNativeAd.d());
        y(unifiedNativeAd.f());
        u(unifiedNativeAd.b());
        x(unifiedNativeAd.e());
        v(unifiedNativeAd.c());
        t(unifiedNativeAd.a());
        C(unifiedNativeAd.h());
        D(unifiedNativeAd.i());
        B(unifiedNativeAd.g());
        J(unifiedNativeAd.k());
        A(true);
        z(true);
        K(unifiedNativeAd.j());
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public final void E(View view, Map<String, View> map, Map<String, View> map2) {
        if (view instanceof zzg) {
            throw null;
        }
        if (((zze) zze.f5677a.get(view)) != null) {
            throw null;
        }
    }
}
