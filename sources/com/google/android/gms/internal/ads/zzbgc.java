package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbgc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener f10690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final NativeCustomTemplateAd.OnCustomClickListener f10691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NativeCustomTemplateAd f10692c;

    public zzbgc(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.f10690a = onCustomTemplateAdLoadedListener;
        this.f10691b = onCustomClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized NativeCustomTemplateAd f(zzber zzberVar) {
        NativeCustomTemplateAd nativeCustomTemplateAd = this.f10692c;
        if (nativeCustomTemplateAd != null) {
            return nativeCustomTemplateAd;
        }
        zzbes zzbesVar = new zzbes(zzberVar);
        this.f10692c = zzbesVar;
        return zzbesVar;
    }

    public final zzbfb d() {
        zzbfy zzbfyVar = null;
        if (this.f10691b == null) {
            return null;
        }
        return new zzbfz(this, zzbfyVar);
    }

    public final zzbfe e() {
        return new zzbgb(this, null);
    }
}
