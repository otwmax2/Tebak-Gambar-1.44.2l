package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbgb extends zzbfd {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzbgc f10689o;

    /* synthetic */ zzbgb(zzbgc zzbgcVar, zzbga zzbgaVar) {
        this.f10689o = zzbgcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfe
    public final void q9(zzber zzberVar) {
        NativeCustomTemplateAd nativeCustomTemplateAdF;
        zzbgc zzbgcVar = this.f10689o;
        NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener = zzbgcVar.f10690a;
        nativeCustomTemplateAdF = zzbgcVar.f(zzberVar);
        onCustomTemplateAdLoadedListener.b(nativeCustomTemplateAdF);
    }
}
