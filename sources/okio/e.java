package okio;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: BufferedSource.java */
/* JADX INFO: loaded from: classes2.dex */
public interface e extends u, ReadableByteChannel {
    c B();

    String D2() throws IOException;

    int I2() throws IOException;

    long K3(byte b10) throws IOException;

    byte[] M0() throws IOException;

    byte[] N2(long j10) throws IOException;

    long P3() throws IOException;

    boolean Q1(long j10, f fVar) throws IOException;

    boolean S0() throws IOException;

    InputStream S3();

    String T1(Charset charset) throws IOException;

    short e3() throws IOException;

    f h0(long j10) throws IOException;

    long l3(t tVar) throws IOException;

    String p1(long j10) throws IOException;

    byte readByte() throws IOException;

    void readFully(byte[] bArr) throws IOException;

    int readInt() throws IOException;

    short readShort() throws IOException;

    void skip(long j10) throws IOException;

    boolean t2(long j10) throws IOException;

    void y3(long j10) throws IOException;
}
