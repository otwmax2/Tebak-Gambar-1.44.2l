package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: Timeout.java */
/* JADX INFO: loaded from: classes2.dex */
public class v {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final v f33406d = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f33407a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f33408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f33409c;

    /* JADX INFO: compiled from: Timeout.java */
    final class a extends v {
        a() {
        }

        @Override // okio.v
        public v d(long j10) {
            return this;
        }

        @Override // okio.v
        public void f() throws IOException {
        }

        @Override // okio.v
        public v g(long j10, TimeUnit timeUnit) {
            return this;
        }
    }

    public v a() {
        this.f33407a = false;
        return this;
    }

    public v b() {
        this.f33409c = 0L;
        return this;
    }

    public long c() {
        if (this.f33407a) {
            return this.f33408b;
        }
        throw new IllegalStateException("No deadline");
    }

    public v d(long j10) {
        this.f33407a = true;
        this.f33408b = j10;
        return this;
    }

    public boolean e() {
        return this.f33407a;
    }

    public void f() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.f33407a && this.f33408b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public v g(long j10, TimeUnit timeUnit) {
        if (j10 >= 0) {
            if (timeUnit == null) {
                throw new IllegalArgumentException("unit == null");
            }
            this.f33409c = timeUnit.toNanos(j10);
            return this;
        }
        throw new IllegalArgumentException("timeout < 0: " + j10);
    }

    public long h() {
        return this.f33409c;
    }
}
