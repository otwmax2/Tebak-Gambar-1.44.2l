package k2;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: ImageHeaderParser.java */
/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f31336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f31337c = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f31338a;

    /* JADX INFO: compiled from: ImageHeaderParser.java */
    public enum a {
        GIF(true),
        JPEG(false),
        PNG_A(true),
        PNG(false),
        UNKNOWN(false);


        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final boolean f31345o;

        a(boolean z10) {
            this.f31345o = z10;
        }

        public boolean c() {
            return this.f31345o;
        }
    }

    /* JADX INFO: compiled from: ImageHeaderParser.java */
    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ByteBuffer f31346a;

        public b(byte[] bArr) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            this.f31346a = byteBufferWrap;
            byteBufferWrap.order(ByteOrder.BIG_ENDIAN);
        }

        public short a(int i10) {
            return this.f31346a.getShort(i10);
        }

        public int b(int i10) {
            return this.f31346a.getInt(i10);
        }

        public int c() {
            return this.f31346a.array().length;
        }

        public void d(ByteOrder byteOrder) {
            this.f31346a.order(byteOrder);
        }
    }

    /* JADX INFO: compiled from: ImageHeaderParser.java */
    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final InputStream f31347a;

        public c(InputStream inputStream) {
            this.f31347a = inputStream;
        }

        public int a() throws IOException {
            return this.f31347a.read();
        }

        public int b() throws IOException {
            return ((this.f31347a.read() << 8) & 65280) | (this.f31347a.read() & 255);
        }

        public short c() throws IOException {
            return (short) (this.f31347a.read() & 255);
        }

        public int d(byte[] bArr) throws IOException {
            int length = bArr.length;
            while (length > 0) {
                int i10 = this.f31347a.read(bArr, bArr.length - length, length);
                if (i10 == -1) {
                    break;
                }
                length -= i10;
            }
            return bArr.length - length;
        }

        public long e(long j10) throws IOException {
            if (j10 < 0) {
                return 0L;
            }
            long j11 = j10;
            while (j11 > 0) {
                long jSkip = this.f31347a.skip(j11);
                if (jSkip <= 0) {
                    if (this.f31347a.read() == -1) {
                        break;
                    }
                    jSkip = 1;
                }
                j11 -= jSkip;
            }
            return j10 - j11;
        }
    }

    static {
        byte[] bytes = new byte[0];
        try {
            bytes = "Exif\u0000\u0000".getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
        }
        f31336b = bytes;
    }

    public l(InputStream inputStream) {
        this.f31338a = new c(inputStream);
    }

    private static int a(int i10, int i11) {
        return i10 + 2 + (i11 * 12);
    }

    private byte[] b() throws IOException {
        short sC;
        int iB;
        long j10;
        long jE;
        do {
            short sC2 = this.f31338a.c();
            if (sC2 != 255) {
                if (Log.isLoggable("ImageHeaderParser", 3)) {
                    Log.d("ImageHeaderParser", "Unknown segmentId=" + ((int) sC2));
                }
                return null;
            }
            sC = this.f31338a.c();
            if (sC == 218) {
                return null;
            }
            if (sC == 217) {
                if (Log.isLoggable("ImageHeaderParser", 3)) {
                    Log.d("ImageHeaderParser", "Found MARKER_EOI in exif segment");
                }
                return null;
            }
            iB = this.f31338a.b() - 2;
            if (sC == 225) {
                byte[] bArr = new byte[iB];
                int iD = this.f31338a.d(bArr);
                if (iD == iB) {
                    return bArr;
                }
                if (Log.isLoggable("ImageHeaderParser", 3)) {
                    Log.d("ImageHeaderParser", "Unable to read segment data, type: " + ((int) sC) + ", length: " + iB + ", actually read: " + iD);
                }
                return null;
            }
            j10 = iB;
            jE = this.f31338a.e(j10);
        } while (jE == j10);
        if (Log.isLoggable("ImageHeaderParser", 3)) {
            Log.d("ImageHeaderParser", "Unable to skip enough data, type: " + ((int) sC) + ", wanted to skip: " + iB + ", but actually skipped: " + jE);
        }
        return null;
    }

    private static boolean e(int i10) {
        return (i10 & 65496) == 65496 || i10 == 19789 || i10 == 18761;
    }

    private static int g(b bVar) {
        ByteOrder byteOrder;
        short sA = bVar.a(6);
        if (sA == 19789) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (sA == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                Log.d("ImageHeaderParser", "Unknown endianness = " + ((int) sA));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        bVar.d(byteOrder);
        int iB = bVar.b(10) + 6;
        short sA2 = bVar.a(iB);
        for (int i10 = 0; i10 < sA2; i10++) {
            int iA = a(iB, i10);
            short sA3 = bVar.a(iA);
            if (sA3 == 274) {
                short sA4 = bVar.a(iA + 2);
                if (sA4 >= 1 && sA4 <= 12) {
                    int iB2 = bVar.b(iA + 4);
                    if (iB2 >= 0) {
                        if (Log.isLoggable("ImageHeaderParser", 3)) {
                            Log.d("ImageHeaderParser", "Got tagIndex=" + i10 + " tagType=" + ((int) sA3) + " formatCode=" + ((int) sA4) + " componentCount=" + iB2);
                        }
                        int i11 = iB2 + f31337c[sA4];
                        if (i11 <= 4) {
                            int i12 = iA + 8;
                            if (i12 >= 0 && i12 <= bVar.c()) {
                                if (i11 >= 0 && i11 + i12 <= bVar.c()) {
                                    return bVar.a(i12);
                                }
                                if (Log.isLoggable("ImageHeaderParser", 3)) {
                                    Log.d("ImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) sA3));
                                }
                            } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                                Log.d("ImageHeaderParser", "Illegal tagValueOffset=" + i12 + " tagType=" + ((int) sA3));
                            }
                        } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                            Log.d("ImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) sA4));
                        }
                    } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                        Log.d("ImageHeaderParser", "Negative tiff component count");
                    }
                } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                    Log.d("ImageHeaderParser", "Got invalid format code=" + ((int) sA4));
                }
            }
        }
        return -1;
    }

    public int c() throws IOException {
        if (!e(this.f31338a.b())) {
            return -1;
        }
        byte[] bArrB = b();
        boolean z10 = false;
        boolean z11 = bArrB != null && bArrB.length > f31336b.length;
        if (z11) {
            int i10 = 0;
            while (true) {
                byte[] bArr = f31336b;
                if (i10 >= bArr.length) {
                    break;
                }
                if (bArrB[i10] != bArr[i10]) {
                    break;
                }
                i10++;
            }
            z10 = z11;
        } else {
            z10 = z11;
        }
        if (z10) {
            return g(new b(bArrB));
        }
        return -1;
    }

    public a d() throws IOException {
        int iB = this.f31338a.b();
        if (iB == 65496) {
            return a.JPEG;
        }
        int iB2 = ((iB << 16) & (-65536)) | (this.f31338a.b() & 65535);
        if (iB2 != -1991225785) {
            return (iB2 >> 8) == 4671814 ? a.GIF : a.UNKNOWN;
        }
        this.f31338a.e(21L);
        return this.f31338a.a() >= 3 ? a.PNG_A : a.PNG;
    }

    public boolean f() throws IOException {
        return d().c();
    }
}
