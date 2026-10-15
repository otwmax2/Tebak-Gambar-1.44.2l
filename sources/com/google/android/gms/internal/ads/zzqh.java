package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzqh implements zzqu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MediaCodec f20459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzqn f20460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzql f20461c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f20462d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f20463e = 0;

    /* synthetic */ zzqh(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z10, zzqg zzqgVar) {
        this.f20459a = mediaCodec;
        this.f20460b = new zzqn(handlerThread);
        this.f20461c = new zzql(mediaCodec, handlerThread2);
    }

    static /* synthetic */ void d(zzqh zzqhVar, MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i10) {
        zzqhVar.f20460b.f(zzqhVar.f20459a);
        int i11 = zzew.f17494a;
        Trace.beginSection("configureCodec");
        zzqhVar.f20459a.configure(mediaFormat, surface, (MediaCrypto) null, 0);
        Trace.endSection();
        zzqhVar.f20461c.f();
        Trace.beginSection("startCodec");
        zzqhVar.f20459a.start();
        Trace.endSection();
        zzqhVar.f20463e = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String e(int i10, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i10 == 1) {
            sb.append("Audio");
        } else if (i10 == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i10);
            sb.append(")");
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final ByteBuffer G(int i10) {
        return this.f20459a.getInputBuffer(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final MediaFormat a() {
        return this.f20460b.c();
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void g() {
        this.f20461c.b();
        this.f20459a.flush();
        this.f20460b.e();
        this.f20459a.start();
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void h(int i10, long j10) {
        this.f20459a.releaseOutputBuffer(i10, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void i(int i10, int i11, int i12, long j10, int i13) {
        this.f20461c.c(i10, 0, i12, j10, i13);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void j() {
        try {
            if (this.f20463e == 1) {
                this.f20461c.e();
                this.f20460b.g();
            }
            this.f20463e = 2;
            if (this.f20462d) {
                return;
            }
            this.f20459a.release();
            this.f20462d = true;
        } catch (Throwable th) {
            if (!this.f20462d) {
                this.f20459a.release();
                this.f20462d = true;
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void k(int i10, int i11, zzgo zzgoVar, long j10, int i12) {
        this.f20461c.d(i10, 0, zzgoVar, j10, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void l(Surface surface) {
        this.f20459a.setOutputSurface(surface);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void m(int i10) {
        this.f20459a.setVideoScalingMode(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void n(int i10, boolean z10) {
        this.f20459a.releaseOutputBuffer(i10, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final void n0(Bundle bundle) {
        this.f20459a.setParameters(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final int o(MediaCodec.BufferInfo bufferInfo) {
        return this.f20460b.b(bufferInfo);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final boolean p() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final ByteBuffer w(int i10) {
        return this.f20459a.getOutputBuffer(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    public final int zza() {
        return this.f20460b.a();
    }
}
