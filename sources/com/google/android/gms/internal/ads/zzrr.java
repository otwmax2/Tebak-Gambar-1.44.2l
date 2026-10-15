package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzrr implements zzqu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MediaCodec f20566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ByteBuffer[] f20567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ByteBuffer[] f20568c;

    /* synthetic */ zzrr(MediaCodec mediaCodec, zzrq zzrqVar) {
        this.f20566a = mediaCodec;
        if (zzew.f17494a < 21) {
            this.f20567b = mediaCodec.getInputBuffers();
            this.f20568c = mediaCodec.getOutputBuffers();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final ByteBuffer G(int i10) {
        return zzew.f17494a >= 21 ? this.f20566a.getInputBuffer(i10) : ((ByteBuffer[]) zzew.h(this.f20567b))[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final MediaFormat a() {
        return this.f20566a.getOutputFormat();
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void g() {
        this.f20566a.flush();
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void h(int i10, long j10) {
        this.f20566a.releaseOutputBuffer(i10, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void i(int i10, int i11, int i12, long j10, int i13) {
        this.f20566a.queueInputBuffer(i10, 0, i12, j10, i13);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void j() {
        this.f20567b = null;
        this.f20568c = null;
        this.f20566a.release();
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void k(int i10, int i11, zzgo zzgoVar, long j10, int i12) {
        this.f20566a.queueSecureInputBuffer(i10, 0, zzgoVar.a(), j10, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void l(Surface surface) {
        this.f20566a.setOutputSurface(surface);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void m(int i10) {
        this.f20566a.setVideoScalingMode(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void n(int i10, boolean z10) {
        this.f20566a.releaseOutputBuffer(i10, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void n0(Bundle bundle) {
        this.f20566a.setParameters(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final int o(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.f20566a.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3) {
                if (zzew.f17494a < 21) {
                    this.f20568c = this.f20566a.getOutputBuffers();
                }
                iDequeueOutputBuffer = -3;
            }
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final boolean p() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final ByteBuffer w(int i10) {
        return zzew.f17494a >= 21 ? this.f20566a.getOutputBuffer(i10) : ((ByteBuffer[]) zzew.h(this.f20568c))[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final int zza() {
        return this.f20566a.dequeueInputBuffer(0L);
    }
}
