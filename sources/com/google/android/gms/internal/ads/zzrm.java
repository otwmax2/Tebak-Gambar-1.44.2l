package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzrm implements zzrk {
    private zzrm() {
    }

    /* synthetic */ zzrm(zzrl zzrlVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzrk
    public final boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "secure-playback".equals(str) && "video/avc".equals(str2);
    }

    @Override // com.google.android.gms.internal.ads.zzrk
    public final boolean b() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzrk
    public final boolean c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzrk
    public final MediaCodecInfo z(int i10) {
        return MediaCodecList.getCodecInfoAt(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzrk
    public final int zza() {
        return MediaCodecList.getCodecCount();
    }
}
