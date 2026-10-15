package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzqn extends MediaCodec.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HandlerThread f20481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f20482c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private MediaFormat f20487h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private MediaFormat f20488i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private MediaCodec.CodecException f20489j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f20490k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f20491l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private IllegalStateException f20492m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f20480a = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzqr f20483d = new zzqr();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzqr f20484e = new zzqr();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayDeque f20485f = new ArrayDeque();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayDeque f20486g = new ArrayDeque();

    zzqn(HandlerThread handlerThread) {
        this.f20481b = handlerThread;
    }

    public static /* synthetic */ void d(zzqn zzqnVar) {
        synchronized (zzqnVar.f20480a) {
            if (zzqnVar.f20491l) {
                return;
            }
            long j10 = zzqnVar.f20490k - 1;
            zzqnVar.f20490k = j10;
            if (j10 > 0) {
                return;
            }
            if (j10 >= 0) {
                zzqnVar.i();
                return;
            }
            IllegalStateException illegalStateException = new IllegalStateException();
            synchronized (zzqnVar.f20480a) {
                zzqnVar.f20492m = illegalStateException;
            }
        }
    }

    private final void h(MediaFormat mediaFormat) {
        this.f20484e.b(-2);
        this.f20486g.add(mediaFormat);
    }

    private final void i() {
        if (!this.f20486g.isEmpty()) {
            this.f20488i = (MediaFormat) this.f20486g.getLast();
        }
        this.f20483d.c();
        this.f20484e.c();
        this.f20485f.clear();
        this.f20486g.clear();
        this.f20489j = null;
    }

    private final void j() {
        IllegalStateException illegalStateException = this.f20492m;
        if (illegalStateException == null) {
            return;
        }
        this.f20492m = null;
        throw illegalStateException;
    }

    private final void k() {
        MediaCodec.CodecException codecException = this.f20489j;
        if (codecException == null) {
            return;
        }
        this.f20489j = null;
        throw codecException;
    }

    private final boolean l() {
        return this.f20490k > 0 || this.f20491l;
    }

    public final int a() {
        synchronized (this.f20480a) {
            int iA = -1;
            if (l()) {
                return -1;
            }
            j();
            k();
            if (!this.f20483d.d()) {
                iA = this.f20483d.a();
            }
            return iA;
        }
    }

    public final int b(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f20480a) {
            if (l()) {
                return -1;
            }
            j();
            k();
            if (this.f20484e.d()) {
                return -1;
            }
            int iA = this.f20484e.a();
            if (iA >= 0) {
                zzdl.b(this.f20487h);
                MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) this.f20485f.remove();
                bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
            } else if (iA == -2) {
                this.f20487h = (MediaFormat) this.f20486g.remove();
                iA = -2;
            }
            return iA;
        }
    }

    public final MediaFormat c() {
        MediaFormat mediaFormat;
        synchronized (this.f20480a) {
            mediaFormat = this.f20487h;
            if (mediaFormat == null) {
                throw new IllegalStateException();
            }
        }
        return mediaFormat;
    }

    public final void e() {
        synchronized (this.f20480a) {
            this.f20490k++;
            Handler handler = this.f20482c;
            int i10 = zzew.f17494a;
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqm
                @Override // java.lang.Runnable
                public final void run() {
                    zzqn.d(this.f20479o);
                }
            });
        }
    }

    public final void f(MediaCodec mediaCodec) {
        zzdl.f(this.f20482c == null);
        this.f20481b.start();
        Handler handler = new Handler(this.f20481b.getLooper());
        mediaCodec.setCallback(this, handler);
        this.f20482c = handler;
    }

    public final void g() {
        synchronized (this.f20480a) {
            this.f20491l = true;
            this.f20481b.quit();
            i();
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f20480a) {
            this.f20489j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i10) {
        synchronized (this.f20480a) {
            this.f20483d.b(i10);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i10, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f20480a) {
            MediaFormat mediaFormat = this.f20488i;
            if (mediaFormat != null) {
                h(mediaFormat);
                this.f20488i = null;
            }
            this.f20484e.b(i10);
            this.f20485f.add(bufferInfo);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f20480a) {
            h(mediaFormat);
            this.f20488i = null;
        }
    }
}
