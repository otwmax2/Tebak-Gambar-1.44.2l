package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzyc implements Choreographer.FrameCallback, Handler.Callback {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final zzyc f21077t = new zzyc();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile long f21078o = -9223372036854775807L;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Handler f21079p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final HandlerThread f21080q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Choreographer f21081r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f21082s;

    private zzyc() {
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
        this.f21080q = handlerThread;
        handlerThread.start();
        Handler handlerC = zzew.c(handlerThread.getLooper(), this);
        this.f21079p = handlerC;
        handlerC.sendEmptyMessage(0);
    }

    public static zzyc a() {
        return f21077t;
    }

    public final void b() {
        this.f21079p.sendEmptyMessage(1);
    }

    public final void c() {
        this.f21079p.sendEmptyMessage(2);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j10) {
        this.f21078o = j10;
        Choreographer choreographer = this.f21081r;
        Objects.requireNonNull(choreographer);
        choreographer.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 0) {
            try {
                this.f21081r = Choreographer.getInstance();
            } catch (RuntimeException e10) {
                zzee.f("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e10);
            }
            return true;
        }
        if (i10 == 1) {
            Choreographer choreographer = this.f21081r;
            if (choreographer != null) {
                int i11 = this.f21082s + 1;
                this.f21082s = i11;
                if (i11 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
            return true;
        }
        if (i10 != 2) {
            return false;
        }
        Choreographer choreographer2 = this.f21081r;
        if (choreographer2 != null) {
            int i12 = this.f21082s - 1;
            this.f21082s = i12;
            if (i12 == 0) {
                choreographer2.removeFrameCallback(this);
                this.f21078o = -9223372036854775807L;
            }
        }
        return true;
    }
}
