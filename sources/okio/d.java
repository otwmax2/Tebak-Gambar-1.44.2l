package okio;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: compiled from: BufferedSink.java */
/* JADX INFO: loaded from: classes2.dex */
public interface d extends t, WritableByteChannel {
    c B();

    d D3(long j10) throws IOException;

    d H1(String str) throws IOException;

    d R0(int i10) throws IOException;

    d T0(int i10) throws IOException;

    d W1(byte[] bArr, int i10, int i11) throws IOException;

    d Y2(byte[] bArr) throws IOException;

    d c3(f fVar) throws IOException;

    @Override // okio.t, java.io.Flushable
    void flush() throws IOException;

    d h1() throws IOException;

    long h2(u uVar) throws IOException;

    d i2(long j10) throws IOException;

    d q0() throws IOException;

    d r0(int i10) throws IOException;

    d x0(int i10) throws IOException;
}
