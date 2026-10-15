package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbqp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NativeCustomFormatAd.OnCustomFormatAdLoadedListener f11179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final NativeCustomFormatAd.OnCustomClickListener f11180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NativeCustomFormatAd f11181c;

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized NativeCustomFormatAd d(zzber zzberVar) {
        NativeCustomFormatAd nativeCustomFormatAd = this.f11181c;
        if (nativeCustomFormatAd != null) {
            return nativeCustomFormatAd;
        }
        zzbqq zzbqqVar = new zzbqq(zzberVar);
        this.f11181c = zzbqqVar;
        return zzbqqVar;
    }
}
