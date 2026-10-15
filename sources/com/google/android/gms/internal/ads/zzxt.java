package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzxt extends HandlerThread implements Handler.Callback {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzdr f21061o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Handler f21062p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Error f21063q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private RuntimeException f21064r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private zzxv f21065s;

    public zzxt() {
        super("ExoPlayer:PlaceholderSurface");
    }

    public final zzxv a(int i10) {
        boolean z10;
        start();
        this.f21062p = new Handler(getLooper(), this);
        this.f21061o = new zzdr(this.f21062p, null);
        synchronized (this) {
            z10 = false;
            this.f21062p.obtainMessage(1, i10, 0).sendToTarget();
            while (this.f21065s == null && this.f21064r == null && this.f21063q == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    z10 = true;
                }
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.f21064r;
        if (runtimeException != null) {
            throw runtimeException;
        }
        Error error = this.f21063q;
        if (error != null) {
            throw error;
        }
        zzxv zzxvVar = this.f21065s;
        Objects.requireNonNull(zzxvVar);
        return zzxvVar;
    }

    public final void b() {
        Handler handler = this.f21062p;
        Objects.requireNonNull(handler);
        handler.sendEmptyMessage(2);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i10 = message.what;
        try {
            if (i10 != 1) {
                if (i10 != 2) {
                    return true;
                }
                try {
                    zzdr zzdrVar = this.f21061o;
                    Objects.requireNonNull(zzdrVar);
                    zzdrVar.c();
                } finally {
                    try {
                    } finally {
                    }
                }
                return true;
            }
            try {
                int i11 = message.arg1;
                zzdr zzdrVar2 = this.f21061o;
                Objects.requireNonNull(zzdrVar2);
                zzdrVar2.b(i11);
                this.f21065s = new zzxv(this, this.f21061o.a(), i11 != 0, null);
                synchronized (this) {
                    notify();
                }
            } catch (zzds e10) {
                zzee.c("PlaceholderSurface", "Failed to initialize placeholder surface", e10);
                this.f21064r = new IllegalStateException(e10);
                synchronized (this) {
                    notify();
                }
            } catch (Error e11) {
                zzee.c("PlaceholderSurface", "Failed to initialize placeholder surface", e11);
                this.f21063q = e11;
                synchronized (this) {
                    notify();
                }
            } catch (RuntimeException e12) {
                zzee.c("PlaceholderSurface", "Failed to initialize placeholder surface", e12);
                this.f21064r = e12;
                synchronized (this) {
                    notify();
                }
            }
            return true;
        } catch (Throwable th) {
            synchronized (this) {
                notify();
                throw th;
            }
        }
    }
}
