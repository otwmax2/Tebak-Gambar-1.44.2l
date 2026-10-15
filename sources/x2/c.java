package x2;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* JADX INFO: compiled from: ExceptionCatchingInputStream.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends InputStream {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Queue<c> f36245q = h.d(0);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private InputStream f36246o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private IOException f36247p;

    c() {
    }

    public static c c(InputStream inputStream) {
        c cVarPoll;
        Queue<c> queue = f36245q;
        synchronized (queue) {
            cVarPoll = queue.poll();
        }
        if (cVarPoll == null) {
            cVarPoll = new c();
        }
        cVarPoll.e(inputStream);
        return cVarPoll;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f36246o.available();
    }

    public IOException b() {
        return this.f36247p;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36246o.close();
    }

    public void d() {
        this.f36247p = null;
        this.f36246o = null;
        Queue<c> queue = f36245q;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    void e(InputStream inputStream) {
        this.f36246o = inputStream;
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.f36246o.mark(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f36246o.markSupported();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            return this.f36246o.read(bArr);
        } catch (IOException e10) {
            this.f36247p = e10;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f36246o.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        try {
            return this.f36246o.skip(j10);
        } catch (IOException e10) {
            this.f36247p = e10;
            return 0L;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        try {
            return this.f36246o.read(bArr, i10, i11);
        } catch (IOException e10) {
            this.f36247p = e10;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            return this.f36246o.read();
        } catch (IOException e10) {
            this.f36247p = e10;
            return -1;
        }
    }
}
