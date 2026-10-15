package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbfz extends zzbfa {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzbgc f10673o;

    /* synthetic */ zzbfz(zzbgc zzbgcVar, zzbfy zzbfyVar) {
        this.f10673o = zzbgcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfb
    public final void d3(zzber zzberVar, String str) {
        NativeCustomTemplateAd nativeCustomTemplateAdF;
        zzbgc zzbgcVar = this.f10673o;
        if (zzbgcVar.f10691b == null) {
            return;
        }
        NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener = zzbgcVar.f10691b;
        nativeCustomTemplateAdF = zzbgcVar.f(zzberVar);
        onCustomClickListener.c(nativeCustomTemplateAdF, str);
    }
}
