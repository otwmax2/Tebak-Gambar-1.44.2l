package okio;

import com.facebook.internal.NativeProtocol;
import com.vungle.mediation.BuildConfig;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Buffer.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements e, d, Cloneable, ByteChannel {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final byte[] f33352q = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    q f33353o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    long f33354p;

    /* JADX INFO: compiled from: Buffer.java */
    /* JADX INFO: loaded from: classes2.dex */
    class a extends OutputStream {
        a() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
        }

        public String toString() {
            return c.this + ".outputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i10) {
            c.this.T0((byte) i10);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i10, int i11) {
            c.this.W1(bArr, i10, i11);
        }
    }

    /* JADX INFO: compiled from: Buffer.java */
    /* JADX INFO: loaded from: classes2.dex */
    class b extends InputStream {
        b() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(c.this.f33354p, 2147483647L);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            c cVar = c.this;
            if (cVar.f33354p > 0) {
                return cVar.readByte() & 255;
            }
            return -1;
        }

        public String toString() {
            return c.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) {
            return c.this.read(bArr, i10, i11);
        }
    }

    @Override // okio.d
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public c D3(long j10) {
        if (j10 == 0) {
            return T0(48);
        }
        boolean z10 = false;
        int i10 = 1;
        if (j10 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                return H1("-9223372036854775808");
            }
            z10 = true;
        }
        if (j10 >= 100000000) {
            i10 = j10 < 1000000000000L ? j10 < 10000000000L ? j10 < 1000000000 ? 9 : 10 : j10 < 100000000000L ? 11 : 12 : j10 < 1000000000000000L ? j10 < 10000000000000L ? 13 : j10 < 100000000000000L ? 14 : 15 : j10 < 100000000000000000L ? j10 < 10000000000000000L ? 16 : 17 : j10 < 1000000000000000000L ? 18 : 19;
        } else if (j10 >= 10000) {
            i10 = j10 < 1000000 ? j10 < 100000 ? 5 : 6 : j10 < 10000000 ? 7 : 8;
        } else if (j10 >= 100) {
            i10 = j10 < 1000 ? 3 : 4;
        } else if (j10 >= 10) {
            i10 = 2;
        }
        if (z10) {
            i10++;
        }
        q qVarV = v(i10);
        byte[] bArr = qVarV.f33395a;
        int i11 = qVarV.f33397c + i10;
        while (j10 != 0) {
            i11--;
            bArr[i11] = f33352q[(int) (j10 % 10)];
            j10 /= 10;
        }
        if (z10) {
            bArr[i11 - 1] = 45;
        }
        qVarV.f33397c += i10;
        this.f33354p += (long) i10;
        return this;
    }

    @Override // okio.e, okio.d
    public c B() {
        return this;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public c i2(long j10) {
        if (j10 == 0) {
            return T0(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j10)) / 4) + 1;
        q qVarV = v(iNumberOfTrailingZeros);
        byte[] bArr = qVarV.f33395a;
        int i10 = qVarV.f33397c;
        for (int i11 = (i10 + iNumberOfTrailingZeros) - 1; i11 >= i10; i11--) {
            bArr[i11] = f33352q[(int) (15 & j10)];
            j10 >>>= 4;
        }
        qVarV.f33397c += iNumberOfTrailingZeros;
        this.f33354p += (long) iNumberOfTrailingZeros;
        return this;
    }

    @Override // okio.e
    public String D2() throws EOFException {
        return p1(Long.MAX_VALUE);
    }

    @Override // okio.d
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public c x0(int i10) {
        q qVarV = v(4);
        byte[] bArr = qVarV.f33395a;
        int i11 = qVarV.f33397c;
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((i10 >>> 16) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((i10 >>> 8) & 255);
        bArr[i14] = (byte) (i10 & 255);
        qVarV.f33397c = i14 + 1;
        this.f33354p += 4;
        return this;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public c R0(int i10) {
        return x0(w.c(i10));
    }

    @Override // okio.d
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public c r0(int i10) {
        q qVarV = v(2);
        byte[] bArr = qVarV.f33395a;
        int i11 = qVarV.f33397c;
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i12] = (byte) (i10 & 255);
        qVarV.f33397c = i12 + 1;
        this.f33354p += 2;
        return this;
    }

    public c H(String str, int i10, int i11, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i10 < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i10);
        }
        if (i11 < i10) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
        }
        if (i11 <= str.length()) {
            if (charset == null) {
                throw new IllegalArgumentException("charset == null");
            }
            if (charset.equals(w.f33410a)) {
                return K(str, i10, i11);
            }
            byte[] bytes = str.substring(i10, i11).getBytes(charset);
            return W1(bytes, 0, bytes.length);
        }
        throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
    }

    public c I(String str, Charset charset) {
        return H(str, 0, str.length(), charset);
    }

    @Override // okio.e
    public int I2() {
        return w.c(readInt());
    }

    @Override // okio.d
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public c H1(String str) {
        return K(str, 0, str.length());
    }

    public c K(String str, int i10, int i11) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i10);
        }
        if (i11 < i10) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
        }
        if (i11 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
        }
        while (i10 < i11) {
            char cCharAt = str.charAt(i10);
            if (cCharAt < 128) {
                q qVarV = v(1);
                byte[] bArr = qVarV.f33395a;
                int i12 = qVarV.f33397c - i10;
                int iMin = Math.min(i11, 8192 - i12);
                int i13 = i10 + 1;
                bArr[i10 + i12] = (byte) cCharAt;
                while (i13 < iMin) {
                    char cCharAt2 = str.charAt(i13);
                    if (cCharAt2 >= 128) {
                        break;
                    }
                    bArr[i13 + i12] = (byte) cCharAt2;
                    i13++;
                }
                int i14 = qVarV.f33397c;
                int i15 = (i12 + i13) - i14;
                qVarV.f33397c = i14 + i15;
                this.f33354p += (long) i15;
                i10 = i13;
            } else {
                if (cCharAt < 2048) {
                    T0((cCharAt >> 6) | 192);
                    T0((cCharAt & '?') | 128);
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    T0((cCharAt >> '\f') | 224);
                    T0(((cCharAt >> 6) & 63) | 128);
                    T0((cCharAt & '?') | 128);
                } else {
                    int i16 = i10 + 1;
                    char cCharAt3 = i16 < i11 ? str.charAt(i16) : (char) 0;
                    if (cCharAt > 56319 || cCharAt3 < 56320 || cCharAt3 > 57343) {
                        T0(63);
                        i10 = i16;
                    } else {
                        int i17 = (((cCharAt & 10239) << 10) | (9215 & cCharAt3)) + NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST;
                        T0((i17 >> 18) | 240);
                        T0(((i17 >> 12) & 63) | 128);
                        T0(((i17 >> 6) & 63) | 128);
                        T0((i17 & 63) | 128);
                        i10 += 2;
                    }
                }
                i10++;
            }
        }
        return this;
    }

    @Override // okio.e
    public long K3(byte b10) {
        return j(b10, 0L, Long.MAX_VALUE);
    }

    public c M(int i10) {
        if (i10 < 128) {
            T0(i10);
        } else if (i10 < 2048) {
            T0((i10 >> 6) | 192);
            T0((i10 & 63) | 128);
        } else if (i10 < 65536) {
            if (i10 < 55296 || i10 > 57343) {
                T0((i10 >> 12) | 224);
                T0(((i10 >> 6) & 63) | 128);
                T0((i10 & 63) | 128);
            } else {
                T0(63);
            }
        } else {
            if (i10 > 1114111) {
                throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i10));
            }
            T0((i10 >> 18) | 240);
            T0(((i10 >> 12) & 63) | 128);
            T0(((i10 >> 6) & 63) | 128);
            T0((i10 & 63) | 128);
        }
        return this;
    }

    @Override // okio.e
    public byte[] M0() {
        try {
            return N2(this.f33354p);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // okio.e
    public byte[] N2(long j10) throws EOFException {
        w.b(this.f33354p, 0L, j10);
        if (j10 <= 2147483647L) {
            byte[] bArr = new byte[(int) j10];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a5 A[EDGE_INSN: B:45:0x00a5->B:38:0x00a5 BREAK  A[LOOP:0: B:5:0x000b->B:47:?], SYNTHETIC] */
    @Override // okio.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long P3() {
        /*
            r15 = this;
            long r0 = r15.f33354p
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto Lac
            r0 = 0
            r4 = r2
            r1 = 0
        Lb:
            okio.q r6 = r15.f33353o
            byte[] r7 = r6.f33395a
            int r8 = r6.f33396b
            int r9 = r6.f33397c
        L13:
            if (r8 >= r9) goto L91
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L22
            r11 = 57
            if (r10 > r11) goto L22
            int r11 = r10 + (-48)
            goto L3a
        L22:
            r11 = 97
            if (r10 < r11) goto L2f
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L2f
            int r11 = r10 + (-97)
        L2c:
            int r11 = r11 + 10
            goto L3a
        L2f:
            r11 = 65
            if (r10 < r11) goto L72
            r11 = 70
            if (r10 > r11) goto L72
            int r11 = r10 + (-65)
            goto L2c
        L3a:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L4a
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L13
        L4a:
            okio.c r0 = new okio.c
            r0.<init>()
            okio.c r0 = r0.i2(r4)
            okio.c r0 = r0.T0(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Number too large: "
            r2.append(r3)
            java.lang.String r0 = r0.o()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L72:
            if (r0 == 0) goto L76
            r1 = 1
            goto L91
        L76:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L91:
            if (r8 != r9) goto L9d
            okio.q r7 = r6.b()
            r15.f33353o = r7
            okio.r.a(r6)
            goto L9f
        L9d:
            r6.f33396b = r8
        L9f:
            if (r1 != 0) goto La5
            okio.q r6 = r15.f33353o
            if (r6 != 0) goto Lb
        La5:
            long r1 = r15.f33354p
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.f33354p = r1
            return r4
        Lac:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            goto Lb5
        Lb4:
            throw r0
        Lb5:
            goto Lb4
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.c.P3():long");
    }

    @Override // okio.e
    public boolean Q1(long j10, f fVar) {
        return l(j10, fVar, 0, fVar.J());
    }

    @Override // okio.e
    public boolean S0() {
        return this.f33354p == 0;
    }

    @Override // okio.e
    public InputStream S3() {
        return new b();
    }

    @Override // okio.e
    public String T1(Charset charset) {
        try {
            return n(this.f33354p, charset);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // okio.t
    public void a2(c cVar, long j10) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (cVar == this) {
            throw new IllegalArgumentException("source == this");
        }
        w.b(cVar.f33354p, 0L, j10);
        while (j10 > 0) {
            q qVar = cVar.f33353o;
            if (j10 < qVar.f33397c - qVar.f33396b) {
                q qVar2 = this.f33353o;
                q qVar3 = qVar2 != null ? qVar2.f33401g : null;
                if (qVar3 != null && qVar3.f33399e) {
                    if ((((long) qVar3.f33397c) + j10) - ((long) (qVar3.f33398d ? 0 : qVar3.f33396b)) <= 8192) {
                        qVar.f(qVar3, (int) j10);
                        cVar.f33354p -= j10;
                        this.f33354p += j10;
                        return;
                    }
                }
                cVar.f33353o = qVar.e((int) j10);
            }
            q qVar4 = cVar.f33353o;
            long j11 = qVar4.f33397c - qVar4.f33396b;
            cVar.f33353o = qVar4.b();
            q qVar5 = this.f33353o;
            if (qVar5 == null) {
                this.f33353o = qVar4;
                qVar4.f33401g = qVar4;
                qVar4.f33400f = qVar4;
            } else {
                qVar5.f33401g.c(qVar4).a();
            }
            cVar.f33354p -= j11;
            this.f33354p += j11;
            j10 -= j11;
        }
    }

    public final void b() {
        try {
            skip(this.f33354p);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // okio.u, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public c clone() {
        c cVar = new c();
        if (this.f33354p == 0) {
            return cVar;
        }
        q qVarD = this.f33353o.d();
        cVar.f33353o = qVarD;
        qVarD.f33401g = qVarD;
        qVarD.f33400f = qVarD;
        q qVar = this.f33353o;
        while (true) {
            qVar = qVar.f33400f;
            if (qVar == this.f33353o) {
                cVar.f33354p = this.f33354p;
                return cVar;
            }
            cVar.f33353o.f33401g.c(qVar.d());
        }
    }

    @Override // okio.e
    public short e3() {
        return w.d(readShort());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        long j10 = this.f33354p;
        if (j10 != cVar.f33354p) {
            return false;
        }
        long j11 = 0;
        if (j10 == 0) {
            return true;
        }
        q qVar = this.f33353o;
        q qVar2 = cVar.f33353o;
        int i10 = qVar.f33396b;
        int i11 = qVar2.f33396b;
        while (j11 < this.f33354p) {
            long jMin = Math.min(qVar.f33397c - i10, qVar2.f33397c - i11);
            int i12 = 0;
            while (i12 < jMin) {
                int i13 = i10 + 1;
                int i14 = i11 + 1;
                if (qVar.f33395a[i10] != qVar2.f33395a[i11]) {
                    return false;
                }
                i12++;
                i10 = i13;
                i11 = i14;
            }
            if (i10 == qVar.f33397c) {
                qVar = qVar.f33400f;
                i10 = qVar.f33396b;
            }
            if (i11 == qVar2.f33397c) {
                qVar2 = qVar2.f33400f;
                i11 = qVar2.f33396b;
            }
            j11 += jMin;
        }
        return true;
    }

    public final long f() {
        long j10 = this.f33354p;
        if (j10 == 0) {
            return 0L;
        }
        q qVar = this.f33353o.f33401g;
        int i10 = qVar.f33397c;
        return (i10 >= 8192 || !qVar.f33399e) ? j10 : j10 - ((long) (i10 - qVar.f33396b));
    }

    @Override // okio.d, okio.t, java.io.Flushable
    public void flush() {
    }

    public final c g(c cVar, long j10, long j11) {
        if (cVar == null) {
            throw new IllegalArgumentException("out == null");
        }
        w.b(this.f33354p, j10, j11);
        if (j11 == 0) {
            return this;
        }
        cVar.f33354p += j11;
        q qVar = this.f33353o;
        while (true) {
            int i10 = qVar.f33397c;
            int i11 = qVar.f33396b;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= (long) (i10 - i11);
            qVar = qVar.f33400f;
        }
        while (j11 > 0) {
            q qVarD = qVar.d();
            int i12 = (int) (((long) qVarD.f33396b) + j10);
            qVarD.f33396b = i12;
            qVarD.f33397c = Math.min(i12 + ((int) j11), qVarD.f33397c);
            q qVar2 = cVar.f33353o;
            if (qVar2 == null) {
                qVarD.f33401g = qVarD;
                qVarD.f33400f = qVarD;
                cVar.f33353o = qVarD;
            } else {
                qVar2.f33401g.c(qVarD);
            }
            j11 -= (long) (qVarD.f33397c - qVarD.f33396b);
            qVar = qVar.f33400f;
            j10 = 0;
        }
        return this;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public c h1() {
        return this;
    }

    @Override // okio.e
    public f h0(long j10) throws EOFException {
        return new f(N2(j10));
    }

    @Override // okio.d
    public long h2(u uVar) throws IOException {
        if (uVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j10 = 0;
        while (true) {
            long j11 = uVar.read(this, 8192L);
            if (j11 == -1) {
                return j10;
            }
            j10 += j11;
        }
    }

    public int hashCode() {
        q qVar = this.f33353o;
        if (qVar == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = qVar.f33397c;
            for (int i12 = qVar.f33396b; i12 < i11; i12++) {
                i10 = (i10 * 31) + qVar.f33395a[i12];
            }
            qVar = qVar.f33400f;
        } while (qVar != this.f33353o);
        return i10;
    }

    public final byte i(long j10) {
        int i10;
        w.b(this.f33354p, j10, 1L);
        long j11 = this.f33354p;
        if (j11 - j10 <= j10) {
            long j12 = j10 - j11;
            q qVar = this.f33353o;
            do {
                qVar = qVar.f33401g;
                int i11 = qVar.f33397c;
                i10 = qVar.f33396b;
                j12 += (long) (i11 - i10);
            } while (j12 < 0);
            return qVar.f33395a[i10 + ((int) j12)];
        }
        q qVar2 = this.f33353o;
        while (true) {
            int i12 = qVar2.f33397c;
            int i13 = qVar2.f33396b;
            long j13 = i12 - i13;
            if (j10 < j13) {
                return qVar2.f33395a[i13 + ((int) j10)];
            }
            j10 -= j13;
            qVar2 = qVar2.f33400f;
        }
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public long j(byte b10, long j10, long j11) {
        q qVar;
        long j12 = 0;
        if (j10 < 0 || j11 < j10) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f33354p), Long.valueOf(j10), Long.valueOf(j11)));
        }
        long j13 = this.f33354p;
        long j14 = j11 > j13 ? j13 : j11;
        if (j10 == j14 || (qVar = this.f33353o) == null) {
            return -1L;
        }
        if (j13 - j10 < j10) {
            while (j13 > j10) {
                qVar = qVar.f33401g;
                j13 -= (long) (qVar.f33397c - qVar.f33396b);
            }
        } else {
            while (true) {
                long j15 = ((long) (qVar.f33397c - qVar.f33396b)) + j12;
                if (j15 >= j10) {
                    break;
                }
                qVar = qVar.f33400f;
                j12 = j15;
            }
            j13 = j12;
        }
        long j16 = j10;
        while (j13 < j14) {
            byte[] bArr = qVar.f33395a;
            int iMin = (int) Math.min(qVar.f33397c, (((long) qVar.f33396b) + j14) - j13);
            for (int i10 = (int) ((((long) qVar.f33396b) + j16) - j13); i10 < iMin; i10++) {
                if (bArr[i10] == b10) {
                    return ((long) (i10 - qVar.f33396b)) + j13;
                }
            }
            j13 += (long) (qVar.f33397c - qVar.f33396b);
            qVar = qVar.f33400f;
            j16 = j13;
        }
        return -1L;
    }

    public OutputStream k() {
        return new a();
    }

    public boolean l(long j10, f fVar, int i10, int i11) {
        if (j10 < 0 || i10 < 0 || i11 < 0 || this.f33354p - j10 < i11 || fVar.J() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (i(((long) i12) + j10) != fVar.m(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    @Override // okio.e
    public long l3(t tVar) throws IOException {
        long j10 = this.f33354p;
        if (j10 > 0) {
            tVar.a2(this, j10);
        }
        return j10;
    }

    public f m() {
        return new f(M0());
    }

    public String n(long j10, Charset charset) throws EOFException {
        w.b(this.f33354p, 0L, j10);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j10 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j10);
        }
        if (j10 == 0) {
            return BuildConfig.FLAVOR;
        }
        q qVar = this.f33353o;
        int i10 = qVar.f33396b;
        if (((long) i10) + j10 > qVar.f33397c) {
            return new String(N2(j10), charset);
        }
        String str = new String(qVar.f33395a, i10, (int) j10, charset);
        int i11 = (int) (((long) qVar.f33396b) + j10);
        qVar.f33396b = i11;
        this.f33354p -= j10;
        if (i11 == qVar.f33397c) {
            this.f33353o = qVar.b();
            r.a(qVar);
        }
        return str;
    }

    public String o() {
        try {
            return n(this.f33354p, w.f33410a);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    public String p(long j10) throws EOFException {
        return n(j10, w.f33410a);
    }

    @Override // okio.e
    public String p1(long j10) throws EOFException {
        if (j10 < 0) {
            throw new IllegalArgumentException("limit < 0: " + j10);
        }
        long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
        long j12 = j((byte) 10, 0L, j11);
        if (j12 != -1) {
            return r(j12);
        }
        if (j11 < s() && i(j11 - 1) == 13 && i(j11) == 10) {
            return r(j11);
        }
        c cVar = new c();
        g(cVar, 0L, Math.min(32L, s()));
        throw new EOFException("\\n not found: limit=" + Math.min(s(), j10) + " content=" + cVar.m().n() + (char) 8230);
    }

    public int q() throws EOFException {
        int i10;
        int i11;
        int i12;
        if (this.f33354p == 0) {
            throw new EOFException();
        }
        byte bI = i(0L);
        if ((bI & 128) == 0) {
            i10 = bI & 127;
            i11 = 1;
            i12 = 0;
        } else if ((bI & 224) == 192) {
            i10 = bI & 31;
            i11 = 2;
            i12 = 128;
        } else if ((bI & 240) == 224) {
            i10 = bI & 15;
            i11 = 3;
            i12 = 2048;
        } else {
            if ((bI & 248) != 240) {
                skip(1L);
                return 65533;
            }
            i10 = bI & 7;
            i11 = 4;
            i12 = NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST;
        }
        long j10 = i11;
        if (this.f33354p < j10) {
            throw new EOFException("size < " + i11 + ": " + this.f33354p + " (to read code point prefixed 0x" + Integer.toHexString(bI) + ")");
        }
        for (int i13 = 1; i13 < i11; i13++) {
            long j11 = i13;
            byte bI2 = i(j11);
            if ((bI2 & 192) != 128) {
                skip(j11);
                return 65533;
            }
            i10 = (i10 << 6) | (bI2 & 63);
        }
        skip(j10);
        if (i10 > 1114111) {
            return 65533;
        }
        if ((i10 < 55296 || i10 > 57343) && i10 >= i12) {
            return i10;
        }
        return 65533;
    }

    @Override // okio.d
    public d q0() {
        return this;
    }

    String r(long j10) throws EOFException {
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (i(j11) == 13) {
                String strP = p(j11);
                skip(2L);
                return strP;
            }
        }
        String strP2 = p(j10);
        skip(1L);
        return strP2;
    }

    public int read(byte[] bArr, int i10, int i11) {
        w.b(bArr.length, i10, i11);
        q qVar = this.f33353o;
        if (qVar == null) {
            return -1;
        }
        int iMin = Math.min(i11, qVar.f33397c - qVar.f33396b);
        System.arraycopy(qVar.f33395a, qVar.f33396b, bArr, i10, iMin);
        int i12 = qVar.f33396b + iMin;
        qVar.f33396b = i12;
        this.f33354p -= (long) iMin;
        if (i12 == qVar.f33397c) {
            this.f33353o = qVar.b();
            r.a(qVar);
        }
        return iMin;
    }

    @Override // okio.e
    public byte readByte() {
        long j10 = this.f33354p;
        if (j10 == 0) {
            throw new IllegalStateException("size == 0");
        }
        q qVar = this.f33353o;
        int i10 = qVar.f33396b;
        int i11 = qVar.f33397c;
        int i12 = i10 + 1;
        byte b10 = qVar.f33395a[i10];
        this.f33354p = j10 - 1;
        if (i12 == i11) {
            this.f33353o = qVar.b();
            r.a(qVar);
        } else {
            qVar.f33396b = i12;
        }
        return b10;
    }

    @Override // okio.e
    public void readFully(byte[] bArr) throws EOFException {
        int i10 = 0;
        while (i10 < bArr.length) {
            int i11 = read(bArr, i10, bArr.length - i10);
            if (i11 == -1) {
                throw new EOFException();
            }
            i10 += i11;
        }
    }

    @Override // okio.e
    public int readInt() {
        long j10 = this.f33354p;
        if (j10 < 4) {
            throw new IllegalStateException("size < 4: " + this.f33354p);
        }
        q qVar = this.f33353o;
        int i10 = qVar.f33396b;
        int i11 = qVar.f33397c;
        if (i11 - i10 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = qVar.f33395a;
        int i12 = i10 + 1;
        int i13 = i12 + 1;
        int i14 = ((bArr[i10] & 255) << 24) | ((bArr[i12] & 255) << 16);
        int i15 = i13 + 1;
        int i16 = i14 | ((bArr[i13] & 255) << 8);
        int i17 = i15 + 1;
        int i18 = i16 | (bArr[i15] & 255);
        this.f33354p = j10 - 4;
        if (i17 == i11) {
            this.f33353o = qVar.b();
            r.a(qVar);
        } else {
            qVar.f33396b = i17;
        }
        return i18;
    }

    @Override // okio.e
    public short readShort() {
        long j10 = this.f33354p;
        if (j10 < 2) {
            throw new IllegalStateException("size < 2: " + this.f33354p);
        }
        q qVar = this.f33353o;
        int i10 = qVar.f33396b;
        int i11 = qVar.f33397c;
        if (i11 - i10 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = qVar.f33395a;
        int i12 = i10 + 1;
        int i13 = i12 + 1;
        int i14 = ((bArr[i10] & 255) << 8) | (bArr[i12] & 255);
        this.f33354p = j10 - 2;
        if (i13 == i11) {
            this.f33353o = qVar.b();
            r.a(qVar);
        } else {
            qVar.f33396b = i13;
        }
        return (short) i14;
    }

    public final long s() {
        return this.f33354p;
    }

    @Override // okio.e
    public void skip(long j10) throws EOFException {
        while (j10 > 0) {
            if (this.f33353o == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j10, r0.f33397c - r0.f33396b);
            long j11 = iMin;
            this.f33354p -= j11;
            j10 -= j11;
            q qVar = this.f33353o;
            int i10 = qVar.f33396b + iMin;
            qVar.f33396b = i10;
            if (i10 == qVar.f33397c) {
                this.f33353o = qVar.b();
                r.a(qVar);
            }
        }
    }

    public final f t() {
        long j10 = this.f33354p;
        if (j10 <= 2147483647L) {
            return u((int) j10);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f33354p);
    }

    @Override // okio.e
    public boolean t2(long j10) {
        return this.f33354p >= j10;
    }

    @Override // okio.u
    public v timeout() {
        return v.f33406d;
    }

    public String toString() {
        return t().toString();
    }

    public final f u(int i10) {
        return i10 == 0 ? f.f33358s : new s(this, i10);
    }

    q v(int i10) {
        if (i10 < 1 || i10 > 8192) {
            throw new IllegalArgumentException();
        }
        q qVar = this.f33353o;
        if (qVar != null) {
            q qVar2 = qVar.f33401g;
            return (qVar2.f33397c + i10 > 8192 || !qVar2.f33399e) ? qVar2.c(r.b()) : qVar2;
        }
        q qVarB = r.b();
        this.f33353o = qVarB;
        qVarB.f33401g = qVarB;
        qVarB.f33400f = qVarB;
        return qVarB;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public c c3(f fVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        fVar.P(this);
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i10 = iRemaining;
        while (i10 > 0) {
            q qVarV = v(1);
            int iMin = Math.min(i10, 8192 - qVarV.f33397c);
            byteBuffer.get(qVarV.f33395a, qVarV.f33397c, iMin);
            i10 -= iMin;
            qVarV.f33397c += iMin;
        }
        this.f33354p += (long) iRemaining;
        return iRemaining;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public c Y2(byte[] bArr) {
        if (bArr != null) {
            return W1(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // okio.d
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public c W1(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j10 = i11;
        w.b(bArr.length, i10, j10);
        int i12 = i11 + i10;
        while (i10 < i12) {
            q qVarV = v(1);
            int iMin = Math.min(i12 - i10, 8192 - qVarV.f33397c);
            System.arraycopy(bArr, i10, qVarV.f33395a, qVarV.f33397c, iMin);
            i10 += iMin;
            qVarV.f33397c += iMin;
        }
        this.f33354p += j10;
        return this;
    }

    @Override // okio.e
    public void y3(long j10) throws EOFException {
        if (this.f33354p < j10) {
            throw new EOFException();
        }
    }

    @Override // okio.d
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public c T0(int i10) {
        q qVarV = v(1);
        byte[] bArr = qVarV.f33395a;
        int i11 = qVarV.f33397c;
        qVarV.f33397c = i11 + 1;
        bArr[i11] = (byte) i10;
        this.f33354p++;
        return this;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        q qVar = this.f33353o;
        if (qVar == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), qVar.f33397c - qVar.f33396b);
        byteBuffer.put(qVar.f33395a, qVar.f33396b, iMin);
        int i10 = qVar.f33396b + iMin;
        qVar.f33396b = i10;
        this.f33354p -= (long) iMin;
        if (i10 == qVar.f33397c) {
            this.f33353o = qVar.b();
            r.a(qVar);
        }
        return iMin;
    }

    @Override // okio.u
    public long read(c cVar, long j10) {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j10 >= 0) {
            long j11 = this.f33354p;
            if (j11 == 0) {
                return -1L;
            }
            if (j10 > j11) {
                j10 = j11;
            }
            cVar.a2(this, j10);
            return j10;
        }
        throw new IllegalArgumentException("byteCount < 0: " + j10);
    }
}
