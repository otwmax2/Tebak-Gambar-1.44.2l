package com.google.android.gms.internal.ads;

import android.media.MediaCodec;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzqv extends zzgp {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final zzqx f20510o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f20511p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzqv(Throwable th, zzqx zzqxVar) {
        super("Decoder failed: ".concat(String.valueOf(zzqxVar == null ? null : zzqxVar.f20512a)), th);
        String diagnosticInfo = null;
        this.f20510o = zzqxVar;
        if (zzew.f17494a >= 21 && (th instanceof MediaCodec.CodecException)) {
            diagnosticInfo = ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        this.f20511p = diagnosticInfo;
    }
}
