package com.google.android.gms.internal.ads;

import android.media.MediaCodec;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzqz extends Exception {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f20520o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f20521p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final zzqx f20522q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final String f20523r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final zzqz f20524s;

    public zzqz(zzaf zzafVar, Throwable th, boolean z10, int i10) {
        this("Decoder init failed: [" + i10 + "], " + String.valueOf(zzafVar), th, zzafVar.f8731l, false, null, "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_neg_" + Math.abs(i10), null);
    }

    static /* bridge */ /* synthetic */ zzqz a(zzqz zzqzVar, zzqz zzqzVar2) {
        return new zzqz(zzqzVar.getMessage(), zzqzVar.getCause(), zzqzVar.f20520o, false, zzqzVar.f20522q, zzqzVar.f20523r, zzqzVar2);
    }

    public zzqz(zzaf zzafVar, Throwable th, boolean z10, zzqx zzqxVar) {
        this("Decoder init failed: " + zzqxVar.f20512a + ", " + String.valueOf(zzafVar), th, zzafVar.f8731l, false, zzqxVar, (zzew.f17494a < 21 || !(th instanceof MediaCodec.CodecException)) ? null : ((MediaCodec.CodecException) th).getDiagnosticInfo(), null);
    }

    private zzqz(String str, Throwable th, String str2, boolean z10, zzqx zzqxVar, String str3, zzqz zzqzVar) {
        super(str, th);
        this.f20520o = str2;
        this.f20521p = false;
        this.f20522q = zzqxVar;
        this.f20523r = str3;
        this.f20524s = zzqzVar;
    }
}
