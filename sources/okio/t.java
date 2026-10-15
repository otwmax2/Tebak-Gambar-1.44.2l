package okio;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* JADX INFO: compiled from: Sink.java */
/* JADX INFO: loaded from: classes2.dex */
public interface t extends Closeable, Flushable {
    void a2(c cVar, long j10) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;

    v timeout();
}
