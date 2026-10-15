package okio;

import java.io.IOException;

/* JADX INFO: compiled from: ForwardingSink.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class h implements t {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final t f33365o;

    public h(t tVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f33365o = tVar;
    }

    @Override // okio.t
    public void a2(c cVar, long j10) throws IOException {
        this.f33365o.a2(cVar, j10);
    }

    @Override // okio.t, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33365o.close();
    }

    @Override // okio.t, java.io.Flushable
    public void flush() throws IOException {
        this.f33365o.flush();
    }

    @Override // okio.t
    public v timeout() {
        return this.f33365o.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f33365o.toString() + ")";
    }
}
