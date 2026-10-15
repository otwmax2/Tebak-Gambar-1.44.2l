package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzrn implements zzrk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f20560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MediaCodecInfo[] f20561b;

    public zzrn(boolean z10, boolean z11) {
        int i10 = 1;
        if (!z10 && !z11) {
            i10 = 0;
        }
        this.f20560a = i10;
    }

    @EnsuresNonNull({"mediaCodecInfos"})
    private final void d() {
        if (this.f20561b == null) {
            this.f20561b = new MediaCodecList(this.f20560a).getCodecInfos();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrk
    public final boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported(str);
    }

    @Override // com.google.android.gms.internal.ads.zzrk
    public final boolean b() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzrk
    public final boolean c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureRequired(str);
    }

    @Override // com.google.android.gms.internal.ads.zzrk
    public final MediaCodecInfo z(int i10) {
        d();
        return this.f20561b[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzrk
    public final int zza() {
        d();
        return this.f20561b.length;
    }
}
