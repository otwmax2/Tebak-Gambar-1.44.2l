package com.google.android.gms.internal.ads;

import android.media.MediaCodec;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MediaCodec.CryptoInfo f19299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MediaCodec.CryptoInfo.Pattern f19300b = new MediaCodec.CryptoInfo.Pattern(0, 0);

    static /* bridge */ /* synthetic */ void a(zzgn zzgnVar, int i10, int i11) {
        zzgnVar.f19300b.set(i10, i11);
        zzgnVar.f19299a.setPattern(zzgnVar.f19300b);
    }
}
