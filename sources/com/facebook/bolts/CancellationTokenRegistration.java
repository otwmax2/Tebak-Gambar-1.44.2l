package com.facebook.bolts;

import h9.t;
import java.io.Closeable;

/* JADX INFO: compiled from: CancellationTokenRegistration.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CancellationTokenRegistration implements Closeable {
    private Runnable action;
    private boolean closed;
    private CancellationTokenSource tokenSource;

    public CancellationTokenRegistration(CancellationTokenSource cancellationTokenSource, Runnable runnable) {
        t9.m.e(cancellationTokenSource, "tokenSource");
        this.action = runnable;
        this.tokenSource = cancellationTokenSource;
    }

    private final void throwIfClosed() {
        if (!(!this.closed)) {
            throw new IllegalStateException("Object already closed".toString());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            CancellationTokenSource cancellationTokenSource = this.tokenSource;
            if (cancellationTokenSource != null) {
                cancellationTokenSource.unregister$facebook_bolts_release(this);
            }
            this.tokenSource = null;
            this.action = null;
            t tVar = t.f30301a;
        }
    }

    public final void runAction$facebook_bolts_release() {
        synchronized (this) {
            throwIfClosed();
            Runnable runnable = this.action;
            if (runnable != null) {
                runnable.run();
            }
            close();
            t tVar = t.f30301a;
        }
    }
}
