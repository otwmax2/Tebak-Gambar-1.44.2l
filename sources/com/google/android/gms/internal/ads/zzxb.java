package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"HandlerLeak"})
final class zzxb extends Handler implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzxc f20988o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f20989p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzwy f20990q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private IOException f20991r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f20992s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Thread f20993t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f20994u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private volatile boolean f20995v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final /* synthetic */ zzxg f20996w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzxb(zzxg zzxgVar, Looper looper, zzxc zzxcVar, zzwy zzwyVar, int i10, long j10) {
        super(looper);
        this.f20996w = zzxgVar;
        this.f20988o = zzxcVar;
        this.f20990q = zzwyVar;
        this.f20989p = j10;
    }

    private final void d() {
        this.f20991r = null;
        zzxg zzxgVar = this.f20996w;
        ExecutorService executorService = zzxgVar.f21002a;
        zzxb zzxbVar = zzxgVar.f21003b;
        Objects.requireNonNull(zzxbVar);
        executorService.execute(zzxbVar);
    }

    public final void a(boolean z10) {
        this.f20995v = z10;
        this.f20991r = null;
        if (hasMessages(0)) {
            this.f20994u = true;
            removeMessages(0);
            if (!z10) {
                sendEmptyMessage(1);
            }
        } else {
            synchronized (this) {
                this.f20994u = true;
                this.f20988o.e();
                Thread thread = this.f20993t;
                if (thread != null) {
                    thread.interrupt();
                }
            }
        }
        if (z10) {
            this.f20996w.f21003b = null;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            zzwy zzwyVar = this.f20990q;
            Objects.requireNonNull(zzwyVar);
            zzwyVar.l(this.f20988o, jElapsedRealtime, jElapsedRealtime - this.f20989p, true);
            this.f20990q = null;
        }
    }

    public final void b(int i10) throws IOException {
        IOException iOException = this.f20991r;
        if (iOException != null && this.f20992s > i10) {
            throw iOException;
        }
    }

    public final void c(long j10) {
        zzdl.f(this.f20996w.f21003b == null);
        this.f20996w.f21003b = this;
        if (j10 > 0) {
            sendEmptyMessageDelayed(0, j10);
        } else {
            d();
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.f20995v) {
            return;
        }
        int i10 = message.what;
        if (i10 == 0) {
            d();
            return;
        }
        if (i10 == 3) {
            throw ((Error) message.obj);
        }
        this.f20996w.f21003b = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j10 = jElapsedRealtime - this.f20989p;
        zzwy zzwyVar = this.f20990q;
        Objects.requireNonNull(zzwyVar);
        if (this.f20994u) {
            zzwyVar.l(this.f20988o, jElapsedRealtime, j10, false);
            return;
        }
        int i11 = message.what;
        if (i11 == 1) {
            try {
                zzwyVar.k(this.f20988o, jElapsedRealtime, j10);
                return;
            } catch (RuntimeException e10) {
                zzee.c("LoadTask", "Unexpected exception handling load completed", e10);
                this.f20996w.f21004c = new zzxf(e10);
                return;
            }
        }
        if (i11 != 2) {
            return;
        }
        IOException iOException = (IOException) message.obj;
        this.f20991r = iOException;
        int i12 = this.f20992s + 1;
        this.f20992s = i12;
        zzxa zzxaVarG = zzwyVar.g(this.f20988o, jElapsedRealtime, j10, iOException, i12);
        if (zzxaVarG.f20986a == 3) {
            this.f20996w.f21004c = this.f20991r;
        } else if (zzxaVarG.f20986a != 2) {
            if (zzxaVarG.f20986a == 1) {
                this.f20992s = 1;
            }
            c(zzxaVarG.f20987b != -9223372036854775807L ? zzxaVarG.f20987b : Math.min((this.f20992s - 1) * 1000, 5000));
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z10;
        try {
            synchronized (this) {
                z10 = !this.f20994u;
                this.f20993t = Thread.currentThread();
            }
            if (z10) {
                String str = "load:" + this.f20988o.getClass().getSimpleName();
                int i10 = zzew.f17494a;
                Trace.beginSection(str);
                try {
                    this.f20988o.f();
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
            synchronized (this) {
                this.f20993t = null;
                Thread.interrupted();
            }
            if (this.f20995v) {
                return;
            }
            sendEmptyMessage(1);
        } catch (IOException e10) {
            if (this.f20995v) {
                return;
            }
            obtainMessage(2, e10).sendToTarget();
        } catch (Error e11) {
            if (!this.f20995v) {
                zzee.c("LoadTask", "Unexpected error loading stream", e11);
                obtainMessage(3, e11).sendToTarget();
            }
            throw e11;
        } catch (Exception e12) {
            if (this.f20995v) {
                return;
            }
            zzee.c("LoadTask", "Unexpected exception loading stream", e12);
            obtainMessage(2, new zzxf(e12)).sendToTarget();
        } catch (OutOfMemoryError e13) {
            if (this.f20995v) {
                return;
            }
            zzee.c("LoadTask", "OutOfMemory error loading stream", e13);
            obtainMessage(2, new zzxf(e13)).sendToTarget();
        }
    }
}
