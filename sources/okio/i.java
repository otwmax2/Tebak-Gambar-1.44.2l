package okio;

import java.io.IOException;

/* JADX INFO: compiled from: ForwardingSource.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class i implements u {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final u f33366o;

    public i(u uVar) {
        if (uVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f33366o = uVar;
    }

    @Override // okio.u, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33366o.close();
    }

    public final u delegate() {
        return this.f33366o;
    }

    @Override // okio.u
    public long read(c cVar, long j10) throws IOException {
        return this.f33366o.read(cVar, j10);
    }

    @Override // okio.u
    public v timeout() {
        return this.f33366o.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f33366o.toString() + ")";
    }
}
