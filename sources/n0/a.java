package n0;

import android.content.res.AssetManager;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import com.vungle.mediation.BuildConfig;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import java.util.zip.CRC32;

/* JADX INFO: compiled from: ExifInterface.java */
/* JADX INFO: loaded from: classes.dex */
public class a {
    private static SimpleDateFormat W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static final d[] f32299a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final d[] f32300b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static final d[] f32301c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static final d[] f32302d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static final d[] f32303e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private static final d f32304f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private static final d[] f32305g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private static final d[] f32306h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private static final d[] f32307i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private static final d[] f32308j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    static final d[][] f32309k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private static final d[] f32310l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private static final d f32311m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private static final d f32312n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private static final HashMap<Integer, d>[] f32313o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final HashMap<String, d>[] f32314p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private static final HashSet<String> f32315q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private static final HashMap<Integer, Integer> f32316r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    static final Charset f32317s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    static final byte[] f32318t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private static final byte[] f32319u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private static final Pattern f32320v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private static final Pattern f32322w0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f32326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FileDescriptor f32327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AssetManager.AssetInputStream f32328c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f32329d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f32330e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashMap<String, c>[] f32331f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Set<Integer> f32332g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ByteOrder f32333h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f32334i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f32335j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f32336k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f32337l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f32338m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private byte[] f32339n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f32340o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f32341p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f32342q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f32343r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f32344s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f32345t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f32346u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f32347v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final boolean f32321w = Log.isLoggable("ExifInterface", 3);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final List<Integer> f32323x = Arrays.asList(1, 6, 3, 8);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final List<Integer> f32324y = Arrays.asList(2, 7, 4, 5);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int[] f32325z = {8, 8, 8};
    public static final int[] A = {4};
    public static final int[] B = {8};
    static final byte[] C = {-1, -40, -1};
    private static final byte[] D = {102, 116, 121, 112};
    private static final byte[] E = {109, 105, 102, 49};
    private static final byte[] F = {104, 101, 105, 99};
    private static final byte[] G = {79, 76, 89, 77, 80, 0};
    private static final byte[] H = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    private static final byte[] I = {-119, 80, 78, 71, 13, 10, 26, 10};
    private static final byte[] J = {101, 88, 73, 102};
    private static final byte[] K = {73, 72, 68, 82};
    private static final byte[] L = {73, 69, 78, 68};
    private static final byte[] M = {82, 73, 70, 70};
    private static final byte[] N = {87, 69, 66, 80};
    private static final byte[] O = {69, 88, 73, 70};
    private static final byte[] P = {-99, 1, 42};
    private static final byte[] Q = "VP8X".getBytes(Charset.defaultCharset());
    private static final byte[] R = "VP8L".getBytes(Charset.defaultCharset());
    private static final byte[] S = "VP8 ".getBytes(Charset.defaultCharset());
    private static final byte[] T = "ANIM".getBytes(Charset.defaultCharset());
    private static final byte[] U = "ANMF".getBytes(Charset.defaultCharset());
    private static final byte[] V = "XMP ".getBytes(Charset.defaultCharset());
    static final String[] X = {BuildConfig.FLAVOR, "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
    static final int[] Y = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    static final byte[] Z = {65, 83, 67, 73, 73, 0, 0, 0};

    /* JADX INFO: renamed from: n0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ExifInterface.java */
    class C0205a extends MediaDataSource {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        long f32348o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ b f32349p;

        C0205a(b bVar) {
            this.f32349p = bVar;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // android.media.MediaDataSource
        public long getSize() throws IOException {
            return -1L;
        }

        @Override // android.media.MediaDataSource
        public int readAt(long j10, byte[] bArr, int i10, int i11) throws IOException {
            if (i11 == 0) {
                return 0;
            }
            if (j10 < 0) {
                return -1;
            }
            try {
                long j11 = this.f32348o;
                if (j11 != j10) {
                    if (j11 >= 0 && j10 >= j11 + ((long) this.f32349p.available())) {
                        return -1;
                    }
                    this.f32349p.e(j10);
                    this.f32348o = j10;
                }
                if (i11 > this.f32349p.available()) {
                    i11 = this.f32349p.available();
                }
                int i12 = this.f32349p.read(bArr, i10, i11);
                if (i12 >= 0) {
                    this.f32348o += (long) i12;
                    return i12;
                }
            } catch (IOException unused) {
            }
            this.f32348o = -1L;
            return -1;
        }
    }

    /* JADX INFO: compiled from: ExifInterface.java */
    private static class b extends InputStream implements DataInput {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private static final ByteOrder f32351s = ByteOrder.LITTLE_ENDIAN;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private static final ByteOrder f32352t = ByteOrder.BIG_ENDIAN;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private DataInputStream f32353o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private ByteOrder f32354p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final int f32355q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        int f32356r;

        public b(InputStream inputStream) throws IOException {
            this(inputStream, ByteOrder.BIG_ENDIAN);
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.f32353o.available();
        }

        public int b() {
            return this.f32355q;
        }

        public int c() {
            return this.f32356r;
        }

        public long d() throws IOException {
            return ((long) readInt()) & 4294967295L;
        }

        public void e(long j10) throws IOException {
            int i10 = this.f32356r;
            if (i10 > j10) {
                this.f32356r = 0;
                this.f32353o.reset();
                this.f32353o.mark(this.f32355q);
            } else {
                j10 -= (long) i10;
            }
            int i11 = (int) j10;
            if (skipBytes(i11) != i11) {
                throw new IOException("Couldn't seek up to the byteCount");
            }
        }

        public void f(ByteOrder byteOrder) {
            this.f32354p = byteOrder;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            this.f32356r++;
            return this.f32353o.read();
        }

        @Override // java.io.DataInput
        public boolean readBoolean() throws IOException {
            this.f32356r++;
            return this.f32353o.readBoolean();
        }

        @Override // java.io.DataInput
        public byte readByte() throws IOException {
            int i10 = this.f32356r + 1;
            this.f32356r = i10;
            if (i10 > this.f32355q) {
                throw new EOFException();
            }
            int i11 = this.f32353o.read();
            if (i11 >= 0) {
                return (byte) i11;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public char readChar() throws IOException {
            this.f32356r += 2;
            return this.f32353o.readChar();
        }

        @Override // java.io.DataInput
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i10, int i11) throws IOException {
            int i12 = this.f32356r + i11;
            this.f32356r = i12;
            if (i12 > this.f32355q) {
                throw new EOFException();
            }
            if (this.f32353o.read(bArr, i10, i11) != i11) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
        }

        @Override // java.io.DataInput
        public int readInt() throws IOException {
            int i10 = this.f32356r + 4;
            this.f32356r = i10;
            if (i10 > this.f32355q) {
                throw new EOFException();
            }
            int i11 = this.f32353o.read();
            int i12 = this.f32353o.read();
            int i13 = this.f32353o.read();
            int i14 = this.f32353o.read();
            if ((i11 | i12 | i13 | i14) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f32354p;
            if (byteOrder == f32351s) {
                return (i14 << 24) + (i13 << 16) + (i12 << 8) + i11;
            }
            if (byteOrder == f32352t) {
                return (i11 << 24) + (i12 << 16) + (i13 << 8) + i14;
            }
            throw new IOException("Invalid byte order: " + this.f32354p);
        }

        @Override // java.io.DataInput
        public String readLine() throws IOException {
            Log.d("ExifInterface", "Currently unsupported");
            return null;
        }

        @Override // java.io.DataInput
        public long readLong() throws IOException {
            int i10 = this.f32356r + 8;
            this.f32356r = i10;
            if (i10 > this.f32355q) {
                throw new EOFException();
            }
            int i11 = this.f32353o.read();
            int i12 = this.f32353o.read();
            int i13 = this.f32353o.read();
            int i14 = this.f32353o.read();
            int i15 = this.f32353o.read();
            int i16 = this.f32353o.read();
            int i17 = this.f32353o.read();
            int i18 = this.f32353o.read();
            if ((i11 | i12 | i13 | i14 | i15 | i16 | i17 | i18) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f32354p;
            if (byteOrder == f32351s) {
                return (((long) i18) << 56) + (((long) i17) << 48) + (((long) i16) << 40) + (((long) i15) << 32) + (((long) i14) << 24) + (((long) i13) << 16) + (((long) i12) << 8) + ((long) i11);
            }
            if (byteOrder == f32352t) {
                return (((long) i11) << 56) + (((long) i12) << 48) + (((long) i13) << 40) + (((long) i14) << 32) + (((long) i15) << 24) + (((long) i16) << 16) + (((long) i17) << 8) + ((long) i18);
            }
            throw new IOException("Invalid byte order: " + this.f32354p);
        }

        @Override // java.io.DataInput
        public short readShort() throws IOException {
            int i10 = this.f32356r + 2;
            this.f32356r = i10;
            if (i10 > this.f32355q) {
                throw new EOFException();
            }
            int i11 = this.f32353o.read();
            int i12 = this.f32353o.read();
            if ((i11 | i12) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f32354p;
            if (byteOrder == f32351s) {
                return (short) ((i12 << 8) + i11);
            }
            if (byteOrder == f32352t) {
                return (short) ((i11 << 8) + i12);
            }
            throw new IOException("Invalid byte order: " + this.f32354p);
        }

        @Override // java.io.DataInput
        public String readUTF() throws IOException {
            this.f32356r += 2;
            return this.f32353o.readUTF();
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() throws IOException {
            this.f32356r++;
            return this.f32353o.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() throws IOException {
            int i10 = this.f32356r + 2;
            this.f32356r = i10;
            if (i10 > this.f32355q) {
                throw new EOFException();
            }
            int i11 = this.f32353o.read();
            int i12 = this.f32353o.read();
            if ((i11 | i12) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f32354p;
            if (byteOrder == f32351s) {
                return (i12 << 8) + i11;
            }
            if (byteOrder == f32352t) {
                return (i11 << 8) + i12;
            }
            throw new IOException("Invalid byte order: " + this.f32354p);
        }

        @Override // java.io.DataInput
        public int skipBytes(int i10) throws IOException {
            int iMin = Math.min(i10, this.f32355q - this.f32356r);
            int iSkipBytes = 0;
            while (iSkipBytes < iMin) {
                iSkipBytes += this.f32353o.skipBytes(iMin - iSkipBytes);
            }
            this.f32356r += iSkipBytes;
            return iSkipBytes;
        }

        b(InputStream inputStream, ByteOrder byteOrder) throws IOException {
            this.f32354p = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f32353o = dataInputStream;
            int iAvailable = dataInputStream.available();
            this.f32355q = iAvailable;
            this.f32356r = 0;
            this.f32353o.mark(iAvailable);
            this.f32354p = byteOrder;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            int i12 = this.f32353o.read(bArr, i10, i11);
            this.f32356r += i12;
            return i12;
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr) throws IOException {
            int length = this.f32356r + bArr.length;
            this.f32356r = length;
            if (length <= this.f32355q) {
                if (this.f32353o.read(bArr, 0, bArr.length) != bArr.length) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        public b(byte[] bArr) throws IOException {
            this(new ByteArrayInputStream(bArr));
        }
    }

    /* JADX INFO: compiled from: ExifInterface.java */
    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f32357a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f32358b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f32359c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final byte[] f32360d;

        c(int i10, int i11, byte[] bArr) {
            this(i10, i11, -1L, bArr);
        }

        public static c a(String str) {
            byte[] bytes = (str + (char) 0).getBytes(a.f32317s0);
            return new c(2, bytes.length, bytes);
        }

        public static c b(long j10, ByteOrder byteOrder) {
            return c(new long[]{j10}, byteOrder);
        }

        public static c c(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[a.Y[4] * jArr.length]);
            byteBufferWrap.order(byteOrder);
            for (long j10 : jArr) {
                byteBufferWrap.putInt((int) j10);
            }
            return new c(4, jArr.length, byteBufferWrap.array());
        }

        public static c d(e eVar, ByteOrder byteOrder) {
            return e(new e[]{eVar}, byteOrder);
        }

        public static c e(e[] eVarArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[a.Y[5] * eVarArr.length]);
            byteBufferWrap.order(byteOrder);
            for (e eVar : eVarArr) {
                byteBufferWrap.putInt((int) eVar.f32365a);
                byteBufferWrap.putInt((int) eVar.f32366b);
            }
            return new c(5, eVarArr.length, byteBufferWrap.array());
        }

        public static c f(int i10, ByteOrder byteOrder) {
            return g(new int[]{i10}, byteOrder);
        }

        public static c g(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[a.Y[3] * iArr.length]);
            byteBufferWrap.order(byteOrder);
            for (int i10 : iArr) {
                byteBufferWrap.putShort((short) i10);
            }
            return new c(3, iArr.length, byteBufferWrap.array());
        }

        public double h(ByteOrder byteOrder) throws Throwable {
            Object objK = k(byteOrder);
            if (objK == null) {
                throw new NumberFormatException("NULL can't be converted to a double value");
            }
            if (objK instanceof String) {
                return Double.parseDouble((String) objK);
            }
            if (objK instanceof long[]) {
                if (((long[]) objK).length == 1) {
                    return r5[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (objK instanceof int[]) {
                if (((int[]) objK).length == 1) {
                    return r5[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (objK instanceof double[]) {
                double[] dArr = (double[]) objK;
                if (dArr.length == 1) {
                    return dArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(objK instanceof e[])) {
                throw new NumberFormatException("Couldn't find a double value");
            }
            e[] eVarArr = (e[]) objK;
            if (eVarArr.length == 1) {
                return eVarArr[0].a();
            }
            throw new NumberFormatException("There are more than one component");
        }

        public int i(ByteOrder byteOrder) throws Throwable {
            Object objK = k(byteOrder);
            if (objK == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            }
            if (objK instanceof String) {
                return Integer.parseInt((String) objK);
            }
            if (objK instanceof long[]) {
                long[] jArr = (long[]) objK;
                if (jArr.length == 1) {
                    return (int) jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(objK instanceof int[])) {
                throw new NumberFormatException("Couldn't find a integer value");
            }
            int[] iArr = (int[]) objK;
            if (iArr.length == 1) {
                return iArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }

        public String j(ByteOrder byteOrder) throws Throwable {
            Object objK = k(byteOrder);
            if (objK == null) {
                return null;
            }
            if (objK instanceof String) {
                return (String) objK;
            }
            StringBuilder sb = new StringBuilder();
            int i10 = 0;
            if (objK instanceof long[]) {
                long[] jArr = (long[]) objK;
                while (i10 < jArr.length) {
                    sb.append(jArr[i10]);
                    i10++;
                    if (i10 != jArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (objK instanceof int[]) {
                int[] iArr = (int[]) objK;
                while (i10 < iArr.length) {
                    sb.append(iArr[i10]);
                    i10++;
                    if (i10 != iArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (objK instanceof double[]) {
                double[] dArr = (double[]) objK;
                while (i10 < dArr.length) {
                    sb.append(dArr[i10]);
                    i10++;
                    if (i10 != dArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (!(objK instanceof e[])) {
                return null;
            }
            e[] eVarArr = (e[]) objK;
            while (i10 < eVarArr.length) {
                sb.append(eVarArr[i10].f32365a);
                sb.append('/');
                sb.append(eVarArr[i10].f32366b);
                i10++;
                if (i10 != eVarArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }

        /* JADX WARN: Not initialized variable reg: 3, insn: 0x019c: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:152:0x019c */
        /* JADX WARN: Removed duplicated region for block: B:178:0x019f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        java.lang.Object k(java.nio.ByteOrder r11) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 454
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: n0.a.c.k(java.nio.ByteOrder):java.lang.Object");
        }

        public String toString() {
            return "(" + a.X[this.f32357a] + ", data length:" + this.f32360d.length + ")";
        }

        c(int i10, int i11, long j10, byte[] bArr) {
            this.f32357a = i10;
            this.f32358b = i11;
            this.f32359c = j10;
            this.f32360d = bArr;
        }
    }

    /* JADX INFO: compiled from: ExifInterface.java */
    private static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f32365a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f32366b;

        e(long j10, long j11) {
            if (j11 == 0) {
                this.f32365a = 0L;
                this.f32366b = 1L;
            } else {
                this.f32365a = j10;
                this.f32366b = j11;
            }
        }

        public double a() {
            double d10 = this.f32365a;
            double d11 = this.f32366b;
            Double.isNaN(d10);
            Double.isNaN(d11);
            return d10 / d11;
        }

        public String toString() {
            return this.f32365a + "/" + this.f32366b;
        }
    }

    static {
        d[] dVarArr = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ImageWidth", 256, 3, 4), new d("ImageLength", 257, 3, 4), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d("StripOffsets", 273, 3, 4), new d("Orientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278, 3, 4), new d("StripByteCounts", 279, 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", 301, 3), new d("Software", 305, 2), new d("DateTime", 306, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("SensorTopBorder", 4, 4), new d("SensorLeftBorder", 5, 4), new d("SensorBottomBorder", 6, 4), new d("SensorRightBorder", 7, 4), new d("ISO", 23, 3), new d("JpgFromRaw", 46, 7), new d("Xmp", 700, 1)};
        f32299a0 = dVarArr;
        d[] dVarArr2 = {new d("ExposureTime", 33434, 5), new d("FNumber", 33437, 5), new d("ExposureProgram", 34850, 3), new d("SpectralSensitivity", 34852, 2), new d("PhotographicSensitivity", 34855, 3), new d("OECF", 34856, 7), new d("SensitivityType", 34864, 3), new d("StandardOutputSensitivity", 34865, 4), new d("RecommendedExposureIndex", 34866, 4), new d("ISOSpeed", 34867, 4), new d("ISOSpeedLatitudeyyy", 34868, 4), new d("ISOSpeedLatitudezzz", 34869, 4), new d("ExifVersion", 36864, 2), new d("DateTimeOriginal", 36867, 2), new d("DateTimeDigitized", 36868, 2), new d("OffsetTime", 36880, 2), new d("OffsetTimeOriginal", 36881, 2), new d("OffsetTimeDigitized", 36882, 2), new d("ComponentsConfiguration", 37121, 7), new d("CompressedBitsPerPixel", 37122, 5), new d("ShutterSpeedValue", 37377, 10), new d("ApertureValue", 37378, 5), new d("BrightnessValue", 37379, 10), new d("ExposureBiasValue", 37380, 10), new d("MaxApertureValue", 37381, 5), new d("SubjectDistance", 37382, 5), new d("MeteringMode", 37383, 3), new d("LightSource", 37384, 3), new d("Flash", 37385, 3), new d("FocalLength", 37386, 5), new d("SubjectArea", 37396, 3), new d("MakerNote", 37500, 7), new d("UserComment", 37510, 7), new d("SubSecTime", 37520, 2), new d("SubSecTimeOriginal", 37521, 2), new d("SubSecTimeDigitized", 37522, 2), new d("FlashpixVersion", 40960, 7), new d("ColorSpace", 40961, 3), new d("PixelXDimension", 40962, 3, 4), new d("PixelYDimension", 40963, 3, 4), new d("RelatedSoundFile", 40964, 2), new d("InteroperabilityIFDPointer", 40965, 4), new d("FlashEnergy", 41483, 5), new d("SpatialFrequencyResponse", 41484, 7), new d("FocalPlaneXResolution", 41486, 5), new d("FocalPlaneYResolution", 41487, 5), new d("FocalPlaneResolutionUnit", 41488, 3), new d("SubjectLocation", 41492, 3), new d("ExposureIndex", 41493, 5), new d("SensingMethod", 41495, 3), new d("FileSource", 41728, 7), new d("SceneType", 41729, 7), new d("CFAPattern", 41730, 7), new d("CustomRendered", 41985, 3), new d("ExposureMode", 41986, 3), new d("WhiteBalance", 41987, 3), new d("DigitalZoomRatio", 41988, 5), new d("FocalLengthIn35mmFilm", 41989, 3), new d("SceneCaptureType", 41990, 3), new d("GainControl", 41991, 3), new d("Contrast", 41992, 3), new d("Saturation", 41993, 3), new d("Sharpness", 41994, 3), new d("DeviceSettingDescription", 41995, 7), new d("SubjectDistanceRange", 41996, 3), new d("ImageUniqueID", 42016, 2), new d("CameraOwnerName", 42032, 2), new d("BodySerialNumber", 42033, 2), new d("LensSpecification", 42034, 5), new d("LensMake", 42035, 2), new d("LensModel", 42036, 2), new d("Gamma", 42240, 5), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720, 3, 4)};
        f32300b0 = dVarArr2;
        d[] dVarArr3 = {new d("GPSVersionID", 0, 1), new d("GPSLatitudeRef", 1, 2), new d("GPSLatitude", 2, 5), new d("GPSLongitudeRef", 3, 2), new d("GPSLongitude", 4, 5), new d("GPSAltitudeRef", 5, 1), new d("GPSAltitude", 6, 5), new d("GPSTimeStamp", 7, 5), new d("GPSSatellites", 8, 2), new d("GPSStatus", 9, 2), new d("GPSMeasureMode", 10, 2), new d("GPSDOP", 11, 5), new d("GPSSpeedRef", 12, 2), new d("GPSSpeed", 13, 5), new d("GPSTrackRef", 14, 2), new d("GPSTrack", 15, 5), new d("GPSImgDirectionRef", 16, 2), new d("GPSImgDirection", 17, 5), new d("GPSMapDatum", 18, 2), new d("GPSDestLatitudeRef", 19, 2), new d("GPSDestLatitude", 20, 5), new d("GPSDestLongitudeRef", 21, 2), new d("GPSDestLongitude", 22, 5), new d("GPSDestBearingRef", 23, 2), new d("GPSDestBearing", 24, 5), new d("GPSDestDistanceRef", 25, 2), new d("GPSDestDistance", 26, 5), new d("GPSProcessingMethod", 27, 7), new d("GPSAreaInformation", 28, 7), new d("GPSDateStamp", 29, 2), new d("GPSDifferential", 30, 3), new d("GPSHPositioningError", 31, 5)};
        f32301c0 = dVarArr3;
        d[] dVarArr4 = {new d("InteroperabilityIndex", 1, 2)};
        f32302d0 = dVarArr4;
        d[] dVarArr5 = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ThumbnailImageWidth", 256, 3, 4), new d("ThumbnailImageLength", 257, 3, 4), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d("StripOffsets", 273, 3, 4), new d("ThumbnailOrientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278, 3, 4), new d("StripByteCounts", 279, 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", 301, 3), new d("Software", 305, 2), new d("DateTime", 306, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720, 3, 4)};
        f32303e0 = dVarArr5;
        f32304f0 = new d("StripOffsets", 273, 3);
        d[] dVarArr6 = {new d("ThumbnailImage", 256, 7), new d("CameraSettingsIFDPointer", 8224, 4), new d("ImageProcessingIFDPointer", 8256, 4)};
        f32305g0 = dVarArr6;
        d[] dVarArr7 = {new d("PreviewImageStart", 257, 4), new d("PreviewImageLength", 258, 4)};
        f32306h0 = dVarArr7;
        d[] dVarArr8 = {new d("AspectFrame", 4371, 3)};
        f32307i0 = dVarArr8;
        d[] dVarArr9 = {new d("ColorSpace", 55, 3)};
        f32308j0 = dVarArr9;
        d[][] dVarArr10 = {dVarArr, dVarArr2, dVarArr3, dVarArr4, dVarArr5, dVarArr, dVarArr6, dVarArr7, dVarArr8, dVarArr9};
        f32309k0 = dVarArr10;
        f32310l0 = new d[]{new d("SubIFDPointer", 330, 4), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("InteroperabilityIFDPointer", 40965, 4), new d("CameraSettingsIFDPointer", 8224, 1), new d("ImageProcessingIFDPointer", 8256, 1)};
        f32311m0 = new d("JPEGInterchangeFormat", 513, 4);
        f32312n0 = new d("JPEGInterchangeFormatLength", 514, 4);
        f32313o0 = new HashMap[dVarArr10.length];
        f32314p0 = new HashMap[dVarArr10.length];
        f32315q0 = new HashSet<>(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        f32316r0 = new HashMap<>();
        Charset charsetForName = Charset.forName("US-ASCII");
        f32317s0 = charsetForName;
        f32318t0 = "Exif\u0000\u0000".getBytes(charsetForName);
        f32319u0 = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(charsetForName);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        W = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        int i10 = 0;
        while (true) {
            d[][] dVarArr11 = f32309k0;
            if (i10 >= dVarArr11.length) {
                HashMap<Integer, Integer> map = f32316r0;
                d[] dVarArr12 = f32310l0;
                map.put(Integer.valueOf(dVarArr12[0].f32361a), 5);
                map.put(Integer.valueOf(dVarArr12[1].f32361a), 1);
                map.put(Integer.valueOf(dVarArr12[2].f32361a), 2);
                map.put(Integer.valueOf(dVarArr12[3].f32361a), 3);
                map.put(Integer.valueOf(dVarArr12[4].f32361a), 7);
                map.put(Integer.valueOf(dVarArr12[5].f32361a), 8);
                f32320v0 = Pattern.compile(".*[1-9].*");
                f32322w0 = Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
                return;
            }
            f32313o0[i10] = new HashMap<>();
            f32314p0[i10] = new HashMap<>();
            for (d dVar : dVarArr11[i10]) {
                f32313o0[i10].put(Integer.valueOf(dVar.f32361a), dVar);
                f32314p0[i10].put(dVar.f32362b, dVar);
            }
            i10++;
        }
    }

    public a(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    private boolean A(HashMap map) throws IOException {
        c cVar;
        int i10;
        c cVar2 = (c) map.get("BitsPerSample");
        if (cVar2 != null) {
            int[] iArr = (int[]) cVar2.k(this.f32333h);
            int[] iArr2 = f32325z;
            if (Arrays.equals(iArr2, iArr)) {
                return true;
            }
            if (this.f32329d == 3 && (cVar = (c) map.get("PhotometricInterpretation")) != null && (((i10 = cVar.i(this.f32333h)) == 1 && Arrays.equals(iArr, B)) || (i10 == 6 && Arrays.equals(iArr, iArr2)))) {
                return true;
            }
        }
        if (!f32321w) {
            return false;
        }
        Log.d("ExifInterface", "Unsupported data type value");
        return false;
    }

    private boolean B(HashMap map) throws IOException {
        c cVar = (c) map.get("ImageLength");
        c cVar2 = (c) map.get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            return false;
        }
        return cVar.i(this.f32333h) <= 512 && cVar2.i(this.f32333h) <= 512;
    }

    private boolean C(byte[] bArr) throws IOException {
        int i10 = 0;
        while (true) {
            byte[] bArr2 = M;
            if (i10 >= bArr2.length) {
                int i11 = 0;
                while (true) {
                    byte[] bArr3 = N;
                    if (i11 >= bArr3.length) {
                        return true;
                    }
                    if (bArr[M.length + i11 + 4] != bArr3[i11]) {
                        return false;
                    }
                    i11++;
                }
            } else {
                if (bArr[i10] != bArr2[i10]) {
                    return false;
                }
                i10++;
            }
        }
    }

    private void D(InputStream inputStream) {
        Objects.requireNonNull(inputStream, "inputstream shouldn't be null");
        for (int i10 = 0; i10 < f32309k0.length; i10++) {
            try {
                try {
                    this.f32331f[i10] = new HashMap<>();
                } catch (IOException e10) {
                    this.f32346u = false;
                    boolean z10 = f32321w;
                    if (z10) {
                        Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e10);
                    }
                    a();
                    if (!z10) {
                        return;
                    }
                }
            } finally {
                a();
                if (f32321w) {
                    F();
                }
            }
        }
        if (!this.f32330e) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
            this.f32329d = i(bufferedInputStream);
            inputStream = bufferedInputStream;
        }
        b bVar = new b(inputStream);
        if (!this.f32330e) {
            switch (this.f32329d) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 5:
                case 6:
                case 8:
                case 11:
                    m(bVar);
                    break;
                case 4:
                    h(bVar, 0, 0);
                    break;
                case 7:
                    j(bVar);
                    break;
                case 9:
                    l(bVar);
                    break;
                case 10:
                    n(bVar);
                    break;
                case 12:
                    g(bVar);
                    break;
                case 13:
                    k(bVar);
                    break;
                case 14:
                    p(bVar);
                    break;
            }
        } else {
            o(bVar);
        }
        K(bVar);
        this.f32346u = true;
    }

    private void E(b bVar, int i10) throws IOException {
        ByteOrder byteOrderG = G(bVar);
        this.f32333h = byteOrderG;
        bVar.f(byteOrderG);
        int unsignedShort = bVar.readUnsignedShort();
        int i11 = this.f32329d;
        if (i11 != 7 && i11 != 10 && unsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(unsignedShort));
        }
        int i12 = bVar.readInt();
        if (i12 < 8 || i12 >= i10) {
            throw new IOException("Invalid first Ifd offset: " + i12);
        }
        int i13 = i12 - 8;
        if (i13 <= 0 || bVar.skipBytes(i13) == i13) {
            return;
        }
        throw new IOException("Couldn't jump to first Ifd: " + i13);
    }

    private void F() {
        for (int i10 = 0; i10 < this.f32331f.length; i10++) {
            Log.d("ExifInterface", "The size of tag group[" + i10 + "]: " + this.f32331f[i10].size());
            for (Map.Entry<String, c> entry : this.f32331f[i10].entrySet()) {
                c value = entry.getValue();
                Log.d("ExifInterface", "tagName: " + entry.getKey() + ", tagType: " + value.toString() + ", tagValue: '" + value.j(this.f32333h) + "'");
            }
        }
    }

    private ByteOrder G(b bVar) throws IOException {
        short s10 = bVar.readShort();
        if (s10 == 18761) {
            if (f32321w) {
                Log.d("ExifInterface", "readExifSegment: Byte Align II");
            }
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (s10 == 19789) {
            if (f32321w) {
                Log.d("ExifInterface", "readExifSegment: Byte Align MM");
            }
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(s10));
    }

    private void H(byte[] bArr, int i10) throws IOException {
        b bVar = new b(bArr);
        E(bVar, bArr.length);
        I(bVar, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x014e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void I(n0.a.b r31, int r32) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1044
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: n0.a.I(n0.a$b, int):void");
    }

    private void J(b bVar, int i10) throws IOException {
        c cVar;
        c cVar2 = this.f32331f[i10].get("ImageLength");
        c cVar3 = this.f32331f[i10].get("ImageWidth");
        if ((cVar2 == null || cVar3 == null) && (cVar = this.f32331f[i10].get("JPEGInterchangeFormat")) != null) {
            h(bVar, cVar.i(this.f32333h), i10);
        }
    }

    private void K(b bVar) throws Throwable {
        HashMap<String, c> map = this.f32331f[4];
        c cVar = map.get("Compression");
        if (cVar == null) {
            this.f32340o = 6;
            q(bVar, map);
            return;
        }
        int i10 = cVar.i(this.f32333h);
        this.f32340o = i10;
        if (i10 != 1) {
            if (i10 == 6) {
                q(bVar, map);
                return;
            } else if (i10 != 7) {
                return;
            }
        }
        if (A(map)) {
            r(bVar, map);
        }
    }

    private static boolean L(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr.length < bArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < bArr2.length; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    private void M(int i10, int i11) throws Throwable {
        if (this.f32331f[i10].isEmpty() || this.f32331f[i11].isEmpty()) {
            if (f32321w) {
                Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
                return;
            }
            return;
        }
        c cVar = this.f32331f[i10].get("ImageLength");
        c cVar2 = this.f32331f[i10].get("ImageWidth");
        c cVar3 = this.f32331f[i11].get("ImageLength");
        c cVar4 = this.f32331f[i11].get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            if (f32321w) {
                Log.d("ExifInterface", "First image does not contain valid size information");
                return;
            }
            return;
        }
        if (cVar3 == null || cVar4 == null) {
            if (f32321w) {
                Log.d("ExifInterface", "Second image does not contain valid size information");
                return;
            }
            return;
        }
        int i12 = cVar.i(this.f32333h);
        int i13 = cVar2.i(this.f32333h);
        int i14 = cVar3.i(this.f32333h);
        int i15 = cVar4.i(this.f32333h);
        if (i12 >= i14 || i13 >= i15) {
            return;
        }
        HashMap<String, c>[] mapArr = this.f32331f;
        HashMap<String, c> map = mapArr[i10];
        mapArr[i10] = mapArr[i11];
        mapArr[i11] = map;
    }

    private void N(b bVar, int i10) throws Throwable {
        c cVarF;
        c cVarF2;
        c cVar = this.f32331f[i10].get("DefaultCropSize");
        c cVar2 = this.f32331f[i10].get("SensorTopBorder");
        c cVar3 = this.f32331f[i10].get("SensorLeftBorder");
        c cVar4 = this.f32331f[i10].get("SensorBottomBorder");
        c cVar5 = this.f32331f[i10].get("SensorRightBorder");
        if (cVar == null) {
            if (cVar2 == null || cVar3 == null || cVar4 == null || cVar5 == null) {
                J(bVar, i10);
                return;
            }
            int i11 = cVar2.i(this.f32333h);
            int i12 = cVar4.i(this.f32333h);
            int i13 = cVar5.i(this.f32333h);
            int i14 = cVar3.i(this.f32333h);
            if (i12 <= i11 || i13 <= i14) {
                return;
            }
            c cVarF3 = c.f(i12 - i11, this.f32333h);
            c cVarF4 = c.f(i13 - i14, this.f32333h);
            this.f32331f[i10].put("ImageLength", cVarF3);
            this.f32331f[i10].put("ImageWidth", cVarF4);
            return;
        }
        if (cVar.f32357a == 5) {
            e[] eVarArr = (e[]) cVar.k(this.f32333h);
            if (eVarArr == null || eVarArr.length != 2) {
                Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(eVarArr));
                return;
            }
            cVarF = c.d(eVarArr[0], this.f32333h);
            cVarF2 = c.d(eVarArr[1], this.f32333h);
        } else {
            int[] iArr = (int[]) cVar.k(this.f32333h);
            if (iArr == null || iArr.length != 2) {
                Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                return;
            }
            cVarF = c.f(iArr[0], this.f32333h);
            cVarF2 = c.f(iArr[1], this.f32333h);
        }
        this.f32331f[i10].put("ImageWidth", cVarF);
        this.f32331f[i10].put("ImageLength", cVarF2);
    }

    private void O() throws Throwable {
        M(0, 5);
        M(0, 4);
        M(5, 4);
        c cVar = this.f32331f[1].get("PixelXDimension");
        c cVar2 = this.f32331f[1].get("PixelYDimension");
        if (cVar != null && cVar2 != null) {
            this.f32331f[0].put("ImageWidth", cVar);
            this.f32331f[0].put("ImageLength", cVar2);
        }
        if (this.f32331f[4].isEmpty() && B(this.f32331f[5])) {
            HashMap<String, c>[] mapArr = this.f32331f;
            mapArr[4] = mapArr[5];
            mapArr[5] = new HashMap<>();
        }
        if (B(this.f32331f[4])) {
            return;
        }
        Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
    }

    private void a() {
        String strD = d("DateTimeOriginal");
        if (strD != null && d("DateTime") == null) {
            this.f32331f[0].put("DateTime", c.a(strD));
        }
        if (d("ImageWidth") == null) {
            this.f32331f[0].put("ImageWidth", c.b(0L, this.f32333h));
        }
        if (d("ImageLength") == null) {
            this.f32331f[0].put("ImageLength", c.b(0L, this.f32333h));
        }
        if (d("Orientation") == null) {
            this.f32331f[0].put("Orientation", c.b(0L, this.f32333h));
        }
        if (d("LightSource") == null) {
            this.f32331f[1].put("LightSource", c.b(0L, this.f32333h));
        }
    }

    private static String b(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return sb.toString();
    }

    private static long[] c(Object obj) {
        if (!(obj instanceof int[])) {
            if (obj instanceof long[]) {
                return (long[]) obj;
            }
            return null;
        }
        int[] iArr = (int[]) obj;
        long[] jArr = new long[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            jArr[i10] = iArr[i10];
        }
        return jArr;
    }

    private c f(String str) {
        Objects.requireNonNull(str, "tag shouldn't be null");
        if ("ISOSpeedRatings".equals(str)) {
            if (f32321w) {
                Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str = "PhotographicSensitivity";
        }
        for (int i10 = 0; i10 < f32309k0.length; i10++) {
            c cVar = this.f32331f[i10].get(str);
            if (cVar != null) {
                return cVar;
            }
        }
        return null;
    }

    private void g(b bVar) throws IOException {
        String strExtractMetadata;
        String strExtractMetadata2;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                mediaMetadataRetriever.setDataSource(new C0205a(bVar));
            } else {
                FileDescriptor fileDescriptor = this.f32327b;
                if (fileDescriptor != null) {
                    mediaMetadataRetriever.setDataSource(fileDescriptor);
                } else {
                    String str = this.f32326a;
                    if (str == null) {
                        return;
                    } else {
                        mediaMetadataRetriever.setDataSource(str);
                    }
                }
            }
            String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(33);
            String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(34);
            String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(26);
            String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(17);
            String strExtractMetadata7 = null;
            if ("yes".equals(strExtractMetadata5)) {
                strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(29);
                strExtractMetadata = mediaMetadataRetriever.extractMetadata(30);
                strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(31);
            } else if ("yes".equals(strExtractMetadata6)) {
                strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(18);
                strExtractMetadata = mediaMetadataRetriever.extractMetadata(19);
                strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(24);
            } else {
                strExtractMetadata = null;
                strExtractMetadata2 = null;
            }
            if (strExtractMetadata7 != null) {
                this.f32331f[0].put("ImageWidth", c.f(Integer.parseInt(strExtractMetadata7), this.f32333h));
            }
            if (strExtractMetadata != null) {
                this.f32331f[0].put("ImageLength", c.f(Integer.parseInt(strExtractMetadata), this.f32333h));
            }
            if (strExtractMetadata2 != null) {
                int i10 = 1;
                int i11 = Integer.parseInt(strExtractMetadata2);
                if (i11 == 90) {
                    i10 = 6;
                } else if (i11 == 180) {
                    i10 = 3;
                } else if (i11 == 270) {
                    i10 = 8;
                }
                this.f32331f[0].put("Orientation", c.f(i10, this.f32333h));
            }
            if (strExtractMetadata3 != null && strExtractMetadata4 != null) {
                int i12 = Integer.parseInt(strExtractMetadata3);
                int i13 = Integer.parseInt(strExtractMetadata4);
                if (i13 <= 6) {
                    throw new IOException("Invalid exif length");
                }
                bVar.e(i12);
                byte[] bArr = new byte[6];
                if (bVar.read(bArr) != 6) {
                    throw new IOException("Can't read identifier");
                }
                int i14 = i12 + 6;
                int i15 = i13 - 6;
                if (!Arrays.equals(bArr, f32318t0)) {
                    throw new IOException("Invalid identifier");
                }
                byte[] bArr2 = new byte[i15];
                if (bVar.read(bArr2) != i15) {
                    throw new IOException("Can't read exif");
                }
                this.f32341p = i14;
                H(bArr2, 0);
            }
            if (f32321w) {
                Log.d("ExifInterface", "Heif meta: " + strExtractMetadata7 + "x" + strExtractMetadata + ", rotation " + strExtractMetadata2);
            }
        } finally {
            mediaMetadataRetriever.release();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00c2 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x018d A[SYNTHETIC] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void h(n0.a.b r20, int r21, int r22) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 542
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: n0.a.h(n0.a$b, int, int):void");
    }

    private int i(BufferedInputStream bufferedInputStream) throws IOException {
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (u(bArr)) {
            return 4;
        }
        if (x(bArr)) {
            return 9;
        }
        if (t(bArr)) {
            return 12;
        }
        if (v(bArr)) {
            return 7;
        }
        if (y(bArr)) {
            return 10;
        }
        if (w(bArr)) {
            return 13;
        }
        return C(bArr) ? 14 : 0;
    }

    private void j(b bVar) throws Throwable {
        m(bVar);
        c cVar = this.f32331f[1].get("MakerNote");
        if (cVar != null) {
            b bVar2 = new b(cVar.f32360d);
            bVar2.f(this.f32333h);
            byte[] bArr = G;
            byte[] bArr2 = new byte[bArr.length];
            bVar2.readFully(bArr2);
            bVar2.e(0L);
            byte[] bArr3 = H;
            byte[] bArr4 = new byte[bArr3.length];
            bVar2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                bVar2.e(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                bVar2.e(12L);
            }
            I(bVar2, 6);
            c cVar2 = this.f32331f[7].get("PreviewImageStart");
            c cVar3 = this.f32331f[7].get("PreviewImageLength");
            if (cVar2 != null && cVar3 != null) {
                this.f32331f[5].put("JPEGInterchangeFormat", cVar2);
                this.f32331f[5].put("JPEGInterchangeFormatLength", cVar3);
            }
            c cVar4 = this.f32331f[8].get("AspectFrame");
            if (cVar4 != null) {
                int[] iArr = (int[]) cVar4.k(this.f32333h);
                if (iArr == null || iArr.length != 4) {
                    Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
                    return;
                }
                if (iArr[2] <= iArr[0] || iArr[3] <= iArr[1]) {
                    return;
                }
                int i10 = (iArr[2] - iArr[0]) + 1;
                int i11 = (iArr[3] - iArr[1]) + 1;
                if (i10 < i11) {
                    int i12 = i10 + i11;
                    i11 = i12 - i11;
                    i10 = i12 - i11;
                }
                c cVarF = c.f(i10, this.f32333h);
                c cVarF2 = c.f(i11, this.f32333h);
                this.f32331f[0].put("ImageWidth", cVarF);
                this.f32331f[0].put("ImageLength", cVarF2);
            }
        }
    }

    private void k(b bVar) throws Throwable {
        if (f32321w) {
            Log.d("ExifInterface", "getPngAttributes starting with: " + bVar);
        }
        bVar.f(ByteOrder.BIG_ENDIAN);
        byte[] bArr = I;
        bVar.skipBytes(bArr.length);
        int length = bArr.length + 0;
        while (true) {
            try {
                int i10 = bVar.readInt();
                int i11 = length + 4;
                byte[] bArr2 = new byte[4];
                if (bVar.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
                int i12 = i11 + 4;
                if (i12 == 16 && !Arrays.equals(bArr2, K)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (Arrays.equals(bArr2, L)) {
                    return;
                }
                if (Arrays.equals(bArr2, J)) {
                    byte[] bArr3 = new byte[i10];
                    if (bVar.read(bArr3) != i10) {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + b(bArr2));
                    }
                    int i13 = bVar.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr2);
                    crc32.update(bArr3);
                    if (((int) crc32.getValue()) == i13) {
                        this.f32341p = i12;
                        H(bArr3, 0);
                        O();
                        return;
                    } else {
                        throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + i13 + ", calculated CRC value: " + crc32.getValue());
                    }
                }
                int i14 = i10 + 4;
                bVar.skipBytes(i14);
                length = i12 + i14;
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    private void l(b bVar) throws IOException {
        bVar.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        bVar.read(bArr);
        bVar.skipBytes(4);
        bVar.read(bArr2);
        int i10 = ByteBuffer.wrap(bArr).getInt();
        int i11 = ByteBuffer.wrap(bArr2).getInt();
        h(bVar, i10, 5);
        bVar.e(i11);
        bVar.f(ByteOrder.BIG_ENDIAN);
        int i12 = bVar.readInt();
        if (f32321w) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + i12);
        }
        for (int i13 = 0; i13 < i12; i13++) {
            int unsignedShort = bVar.readUnsignedShort();
            int unsignedShort2 = bVar.readUnsignedShort();
            if (unsignedShort == f32304f0.f32361a) {
                short s10 = bVar.readShort();
                short s11 = bVar.readShort();
                c cVarF = c.f(s10, this.f32333h);
                c cVarF2 = c.f(s11, this.f32333h);
                this.f32331f[0].put("ImageLength", cVarF);
                this.f32331f[0].put("ImageWidth", cVarF2);
                if (f32321w) {
                    Log.d("ExifInterface", "Updated to length: " + ((int) s10) + ", width: " + ((int) s11));
                    return;
                }
                return;
            }
            bVar.skipBytes(unsignedShort2);
        }
    }

    private void m(b bVar) throws Throwable {
        c cVar;
        E(bVar, bVar.available());
        I(bVar, 0);
        N(bVar, 0);
        N(bVar, 5);
        N(bVar, 4);
        O();
        if (this.f32329d != 8 || (cVar = this.f32331f[1].get("MakerNote")) == null) {
            return;
        }
        b bVar2 = new b(cVar.f32360d);
        bVar2.f(this.f32333h);
        bVar2.e(6L);
        I(bVar2, 9);
        c cVar2 = this.f32331f[9].get("ColorSpace");
        if (cVar2 != null) {
            this.f32331f[1].put("ColorSpace", cVar2);
        }
    }

    private void n(b bVar) throws Throwable {
        m(bVar);
        if (this.f32331f[0].get("JpgFromRaw") != null) {
            h(bVar, this.f32345t, 5);
        }
        c cVar = this.f32331f[0].get("ISO");
        c cVar2 = this.f32331f[1].get("PhotographicSensitivity");
        if (cVar == null || cVar2 != null) {
            return;
        }
        this.f32331f[1].put("PhotographicSensitivity", cVar);
    }

    private void o(b bVar) throws IOException {
        byte[] bArr = f32318t0;
        bVar.skipBytes(bArr.length);
        byte[] bArr2 = new byte[bVar.available()];
        bVar.readFully(bArr2);
        this.f32341p = bArr.length;
        H(bArr2, 0);
    }

    private void p(b bVar) throws IOException {
        if (f32321w) {
            Log.d("ExifInterface", "getWebpAttributes starting with: " + bVar);
        }
        bVar.f(ByteOrder.LITTLE_ENDIAN);
        bVar.skipBytes(M.length);
        int i10 = bVar.readInt() + 8;
        int iSkipBytes = bVar.skipBytes(N.length) + 8;
        while (true) {
            try {
                byte[] bArr = new byte[4];
                if (bVar.read(bArr) != 4) {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
                int i11 = bVar.readInt();
                int i12 = iSkipBytes + 4 + 4;
                if (Arrays.equals(O, bArr)) {
                    byte[] bArr2 = new byte[i11];
                    if (bVar.read(bArr2) == i11) {
                        this.f32341p = i12;
                        H(bArr2, 0);
                        this.f32341p = i12;
                        return;
                    } else {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + b(bArr));
                    }
                }
                if (i11 % 2 == 1) {
                    i11++;
                }
                int i13 = i12 + i11;
                if (i13 == i10) {
                    return;
                }
                if (i13 > i10) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                int iSkipBytes2 = bVar.skipBytes(i11);
                if (iSkipBytes2 != i11) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                iSkipBytes = i12 + iSkipBytes2;
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    private void q(b bVar, HashMap map) throws Throwable {
        c cVar = (c) map.get("JPEGInterchangeFormat");
        c cVar2 = (c) map.get("JPEGInterchangeFormatLength");
        if (cVar == null || cVar2 == null) {
            return;
        }
        int i10 = cVar.i(this.f32333h);
        int i11 = cVar2.i(this.f32333h);
        if (this.f32329d == 7) {
            i10 += this.f32342q;
        }
        int iMin = Math.min(i11, bVar.b() - i10);
        if (i10 > 0 && iMin > 0) {
            this.f32334i = true;
            int i12 = this.f32341p + i10;
            this.f32337l = i12;
            this.f32338m = iMin;
            if (this.f32326a == null && this.f32328c == null && this.f32327b == null) {
                byte[] bArr = new byte[iMin];
                bVar.e(i12);
                bVar.readFully(bArr);
                this.f32339n = bArr;
            }
        }
        if (f32321w) {
            Log.d("ExifInterface", "Setting thumbnail attributes with offset: " + i10 + ", length: " + iMin);
        }
    }

    private void r(b bVar, HashMap map) throws IOException {
        c cVar = (c) map.get("StripOffsets");
        c cVar2 = (c) map.get("StripByteCounts");
        if (cVar == null || cVar2 == null) {
            return;
        }
        long[] jArrC = c(cVar.k(this.f32333h));
        long[] jArrC2 = c(cVar2.k(this.f32333h));
        if (jArrC == null || jArrC.length == 0) {
            Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
            return;
        }
        if (jArrC2 == null || jArrC2.length == 0) {
            Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
            return;
        }
        if (jArrC.length != jArrC2.length) {
            Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
            return;
        }
        long j10 = 0;
        for (long j11 : jArrC2) {
            j10 += j11;
        }
        int i10 = (int) j10;
        byte[] bArr = new byte[i10];
        this.f32336k = true;
        this.f32335j = true;
        this.f32334i = true;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < jArrC.length; i13++) {
            int i14 = (int) jArrC[i13];
            int i15 = (int) jArrC2[i13];
            if (i13 < jArrC.length - 1 && i14 + i15 != jArrC[i13 + 1]) {
                this.f32336k = false;
            }
            int i16 = i14 - i11;
            if (i16 < 0) {
                Log.d("ExifInterface", "Invalid strip offset value");
            }
            bVar.e(i16);
            int i17 = i11 + i16;
            byte[] bArr2 = new byte[i15];
            bVar.read(bArr2);
            i11 = i17 + i15;
            System.arraycopy(bArr2, 0, bArr, i12, i15);
            i12 += i15;
        }
        this.f32339n = bArr;
        if (this.f32336k) {
            this.f32337l = ((int) jArrC[0]) + this.f32341p;
            this.f32338m = i10;
        }
    }

    private static boolean s(BufferedInputStream bufferedInputStream) throws IOException {
        byte[] bArr = f32318t0;
        bufferedInputStream.mark(bArr.length);
        byte[] bArr2 = new byte[bArr.length];
        bufferedInputStream.read(bArr2);
        bufferedInputStream.reset();
        int i10 = 0;
        while (true) {
            byte[] bArr3 = f32318t0;
            if (i10 >= bArr3.length) {
                return true;
            }
            if (bArr2[i10] != bArr3[i10]) {
                return false;
            }
            i10++;
        }
    }

    private boolean t(byte[] bArr) throws Throwable {
        b bVar;
        b bVar2 = null;
        try {
            try {
                bVar = new b(bArr);
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            long length = bVar.readInt();
            byte[] bArr2 = new byte[4];
            bVar.read(bArr2);
            if (!Arrays.equals(bArr2, D)) {
                bVar.close();
                return false;
            }
            long j10 = 16;
            if (length == 1) {
                length = bVar.readLong();
                if (length < 16) {
                    bVar.close();
                    return false;
                }
            } else {
                j10 = 8;
            }
            if (length > bArr.length) {
                length = bArr.length;
            }
            long j11 = length - j10;
            if (j11 < 8) {
                bVar.close();
                return false;
            }
            byte[] bArr3 = new byte[4];
            boolean z10 = false;
            boolean z11 = false;
            for (long j12 = 0; j12 < j11 / 4; j12++) {
                if (bVar.read(bArr3) != 4) {
                    bVar.close();
                    return false;
                }
                if (j12 != 1) {
                    if (Arrays.equals(bArr3, E)) {
                        z10 = true;
                    } else if (Arrays.equals(bArr3, F)) {
                        z11 = true;
                    }
                    if (z10 && z11) {
                        bVar.close();
                        return true;
                    }
                }
            }
            bVar.close();
        } catch (Exception e11) {
            e = e11;
            bVar2 = bVar;
            if (f32321w) {
                Log.d("ExifInterface", "Exception parsing HEIF file type box.", e);
            }
            if (bVar2 != null) {
                bVar2.close();
            }
        } catch (Throwable th2) {
            th = th2;
            bVar2 = bVar;
            if (bVar2 != null) {
                bVar2.close();
            }
            throw th;
        }
        return false;
    }

    private static boolean u(byte[] bArr) throws IOException {
        int i10 = 0;
        while (true) {
            byte[] bArr2 = C;
            if (i10 >= bArr2.length) {
                return true;
            }
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
            i10++;
        }
    }

    private boolean v(byte[] bArr) throws Throwable {
        b bVar = null;
        try {
            b bVar2 = new b(bArr);
            try {
                ByteOrder byteOrderG = G(bVar2);
                this.f32333h = byteOrderG;
                bVar2.f(byteOrderG);
                short s10 = bVar2.readShort();
                boolean z10 = s10 == 20306 || s10 == 21330;
                bVar2.close();
                return z10;
            } catch (Exception unused) {
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                return false;
            } catch (Throwable th) {
                th = th;
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private boolean w(byte[] bArr) throws IOException {
        int i10 = 0;
        while (true) {
            byte[] bArr2 = I;
            if (i10 >= bArr2.length) {
                return true;
            }
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
            i10++;
        }
    }

    private boolean x(byte[] bArr) throws IOException {
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        for (int i10 = 0; i10 < bytes.length; i10++) {
            if (bArr[i10] != bytes[i10]) {
                return false;
            }
        }
        return true;
    }

    private boolean y(byte[] bArr) throws Throwable {
        b bVar = null;
        try {
            b bVar2 = new b(bArr);
            try {
                ByteOrder byteOrderG = G(bVar2);
                this.f32333h = byteOrderG;
                bVar2.f(byteOrderG);
                boolean z10 = bVar2.readShort() == 85;
                bVar2.close();
                return z10;
            } catch (Exception unused) {
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                return false;
            } catch (Throwable th) {
                th = th;
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static boolean z(FileDescriptor fileDescriptor) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_CUR);
                return true;
            } catch (Exception unused) {
                if (f32321w) {
                    Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
                }
            }
        }
        return false;
    }

    public String d(String str) {
        Objects.requireNonNull(str, "tag shouldn't be null");
        c cVarF = f(str);
        if (cVarF != null) {
            if (!f32315q0.contains(str)) {
                return cVarF.j(this.f32333h);
            }
            if (str.equals("GPSTimeStamp")) {
                int i10 = cVarF.f32357a;
                if (i10 != 5 && i10 != 10) {
                    Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + cVarF.f32357a);
                    return null;
                }
                e[] eVarArr = (e[]) cVarF.k(this.f32333h);
                if (eVarArr != null && eVarArr.length == 3) {
                    return String.format("%02d:%02d:%02d", Integer.valueOf((int) (eVarArr[0].f32365a / eVarArr[0].f32366b)), Integer.valueOf((int) (eVarArr[1].f32365a / eVarArr[1].f32366b)), Integer.valueOf((int) (eVarArr[2].f32365a / eVarArr[2].f32366b)));
                }
                Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(eVarArr));
                return null;
            }
            try {
                return Double.toString(cVarF.h(this.f32333h));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public int e(String str, int i10) {
        Objects.requireNonNull(str, "tag shouldn't be null");
        c cVarF = f(str);
        if (cVarF == null) {
            return i10;
        }
        try {
            return cVarF.i(this.f32333h);
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private a(java.io.InputStream r3, boolean r4) throws java.io.IOException {
        /*
            r2 = this;
            r2.<init>()
            n0.a$d[][] r0 = n0.a.f32309k0
            int r1 = r0.length
            java.util.HashMap[] r1 = new java.util.HashMap[r1]
            r2.f32331f = r1
            java.util.HashSet r1 = new java.util.HashSet
            int r0 = r0.length
            r1.<init>(r0)
            r2.f32332g = r1
            java.nio.ByteOrder r0 = java.nio.ByteOrder.BIG_ENDIAN
            r2.f32333h = r0
            java.lang.String r0 = "inputStream cannot be null"
            java.util.Objects.requireNonNull(r3, r0)
            r0 = 0
            r2.f32326a = r0
            if (r4 == 0) goto L3e
            java.io.BufferedInputStream r4 = new java.io.BufferedInputStream
            r1 = 5000(0x1388, float:7.006E-42)
            r4.<init>(r3, r1)
            boolean r3 = s(r4)
            if (r3 != 0) goto L35
            java.lang.String r3 = "ExifInterface"
            java.lang.String r4 = "Given data does not follow the structure of an Exif-only data."
            android.util.Log.w(r3, r4)
            return
        L35:
            r3 = 1
            r2.f32330e = r3
            r2.f32328c = r0
            r2.f32327b = r0
            r3 = r4
            goto L68
        L3e:
            boolean r4 = r3 instanceof android.content.res.AssetManager.AssetInputStream
            if (r4 == 0) goto L4a
            r4 = r3
            android.content.res.AssetManager$AssetInputStream r4 = (android.content.res.AssetManager.AssetInputStream) r4
            r2.f32328c = r4
            r2.f32327b = r0
            goto L68
        L4a:
            boolean r4 = r3 instanceof java.io.FileInputStream
            if (r4 == 0) goto L64
            r4 = r3
            java.io.FileInputStream r4 = (java.io.FileInputStream) r4
            java.io.FileDescriptor r1 = r4.getFD()
            boolean r1 = z(r1)
            if (r1 == 0) goto L64
            r2.f32328c = r0
            java.io.FileDescriptor r4 = r4.getFD()
            r2.f32327b = r4
            goto L68
        L64:
            r2.f32328c = r0
            r2.f32327b = r0
        L68:
            r2.D(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: n0.a.<init>(java.io.InputStream, boolean):void");
    }

    /* JADX INFO: compiled from: ExifInterface.java */
    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f32361a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f32362b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f32363c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f32364d;

        d(String str, int i10, int i11) {
            this.f32362b = str;
            this.f32361a = i10;
            this.f32363c = i11;
            this.f32364d = -1;
        }

        boolean a(int i10) {
            int i11;
            int i12 = this.f32363c;
            if (i12 == 7 || i10 == 7 || i12 == i10 || (i11 = this.f32364d) == i10) {
                return true;
            }
            if ((i12 == 4 || i11 == 4) && i10 == 3) {
                return true;
            }
            if ((i12 == 9 || i11 == 9) && i10 == 8) {
                return true;
            }
            return (i12 == 12 || i11 == 12) && i10 == 11;
        }

        d(String str, int i10, int i11, int i12) {
            this.f32362b = str;
            this.f32361a = i10;
            this.f32363c = i11;
            this.f32364d = i12;
        }
    }
}
