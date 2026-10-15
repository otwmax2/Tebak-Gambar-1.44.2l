package r5;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: QueueFile.java */
/* JADX INFO: loaded from: classes2.dex */
class g implements Closeable {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final Logger f34266u = Logger.getLogger(g.class.getName());

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final RandomAccessFile f34267o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f34268p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f34269q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private b f34270r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private b f34271s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final byte[] f34272t = new byte[16];

    /* JADX INFO: compiled from: QueueFile.java */
    class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f34273a = true;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ StringBuilder f34274b;

        a(StringBuilder sb) {
            this.f34274b = sb;
        }

        @Override // r5.g.d
        public void a(InputStream inputStream, int i10) throws IOException {
            if (this.f34273a) {
                this.f34273a = false;
            } else {
                this.f34274b.append(", ");
            }
            this.f34274b.append(i10);
        }
    }

    /* JADX INFO: compiled from: QueueFile.java */
    static class b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final b f34276c = new b(0, 0);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f34277a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f34278b;

        b(int i10, int i11) {
            this.f34277a = i10;
            this.f34278b = i11;
        }

        public String toString() {
            return getClass().getSimpleName() + "[position = " + this.f34277a + ", length = " + this.f34278b + "]";
        }
    }

    /* JADX INFO: compiled from: QueueFile.java */
    private final class c extends InputStream {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f34279o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f34280p;

        /* synthetic */ c(g gVar, b bVar, a aVar) {
            this(bVar);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            g.m(bArr, "buffer");
            if ((i10 | i11) < 0 || i11 > bArr.length - i10) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i12 = this.f34280p;
            if (i12 <= 0) {
                return -1;
            }
            if (i11 > i12) {
                i11 = i12;
            }
            g.this.t(this.f34279o, bArr, i10, i11);
            this.f34279o = g.this.x(this.f34279o + i11);
            this.f34280p -= i11;
            return i11;
        }

        private c(b bVar) {
            this.f34279o = g.this.x(bVar.f34277a + 4);
            this.f34280p = bVar.f34278b;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.f34280p == 0) {
                return -1;
            }
            g.this.f34267o.seek(this.f34279o);
            int i10 = g.this.f34267o.read();
            this.f34279o = g.this.x(this.f34279o + 1);
            this.f34280p--;
            return i10;
        }
    }

    /* JADX INFO: compiled from: QueueFile.java */
    public interface d {
        void a(InputStream inputStream, int i10) throws IOException;
    }

    public g(File file) throws IOException {
        if (!file.exists()) {
            k(file);
        }
        this.f34267o = n(file);
        p();
    }

    private static void A(byte[] bArr, int... iArr) {
        int i10 = 0;
        for (int i11 : iArr) {
            z(bArr, i10, i11);
            i10 += 4;
        }
    }

    private void i(int i10) throws IOException {
        int i11 = i10 + 4;
        int iR = r();
        if (iR >= i11) {
            return;
        }
        int i12 = this.f34268p;
        do {
            iR += i12;
            i12 <<= 1;
        } while (iR < i11);
        v(i12);
        b bVar = this.f34271s;
        int iX = x(bVar.f34277a + 4 + bVar.f34278b);
        if (iX < this.f34270r.f34277a) {
            FileChannel channel = this.f34267o.getChannel();
            channel.position(this.f34268p);
            long j10 = iX - 4;
            if (channel.transferTo(16L, j10, channel) != j10) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int i13 = this.f34271s.f34277a;
        int i14 = this.f34270r.f34277a;
        if (i13 < i14) {
            int i15 = (this.f34268p + i13) - 16;
            y(i12, this.f34269q, i14, i15);
            this.f34271s = new b(i15, this.f34271s.f34278b);
        } else {
            y(i12, this.f34269q, i14, i13);
        }
        this.f34268p = i12;
    }

    private static void k(File file) throws IOException {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile randomAccessFileN = n(file2);
        try {
            randomAccessFileN.setLength(4096L);
            randomAccessFileN.seek(0L);
            byte[] bArr = new byte[16];
            A(bArr, 4096, 0, 0, 0);
            randomAccessFileN.write(bArr);
            randomAccessFileN.close();
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } catch (Throwable th) {
            randomAccessFileN.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T m(T t10, String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }

    private static RandomAccessFile n(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    private b o(int i10) throws IOException {
        if (i10 == 0) {
            return b.f34276c;
        }
        this.f34267o.seek(i10);
        return new b(i10, this.f34267o.readInt());
    }

    private void p() throws IOException {
        this.f34267o.seek(0L);
        this.f34267o.readFully(this.f34272t);
        int iQ = q(this.f34272t, 0);
        this.f34268p = iQ;
        if (iQ <= this.f34267o.length()) {
            this.f34269q = q(this.f34272t, 4);
            int iQ2 = q(this.f34272t, 8);
            int iQ3 = q(this.f34272t, 12);
            this.f34270r = o(iQ2);
            this.f34271s = o(iQ3);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f34268p + ", Actual length: " + this.f34267o.length());
    }

    private static int q(byte[] bArr, int i10) {
        return ((bArr[i10] & 255) << 24) + ((bArr[i10 + 1] & 255) << 16) + ((bArr[i10 + 2] & 255) << 8) + (bArr[i10 + 3] & 255);
    }

    private int r() {
        return this.f34268p - w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(int i10, byte[] bArr, int i11, int i12) throws IOException {
        int iX = x(i10);
        int i13 = iX + i12;
        int i14 = this.f34268p;
        if (i13 <= i14) {
            this.f34267o.seek(iX);
            this.f34267o.readFully(bArr, i11, i12);
            return;
        }
        int i15 = i14 - iX;
        this.f34267o.seek(iX);
        this.f34267o.readFully(bArr, i11, i15);
        this.f34267o.seek(16L);
        this.f34267o.readFully(bArr, i11 + i15, i12 - i15);
    }

    private void u(int i10, byte[] bArr, int i11, int i12) throws IOException {
        int iX = x(i10);
        int i13 = iX + i12;
        int i14 = this.f34268p;
        if (i13 <= i14) {
            this.f34267o.seek(iX);
            this.f34267o.write(bArr, i11, i12);
            return;
        }
        int i15 = i14 - iX;
        this.f34267o.seek(iX);
        this.f34267o.write(bArr, i11, i15);
        this.f34267o.seek(16L);
        this.f34267o.write(bArr, i11 + i15, i12 - i15);
    }

    private void v(int i10) throws IOException {
        this.f34267o.setLength(i10);
        this.f34267o.getChannel().force(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int x(int i10) {
        int i11 = this.f34268p;
        return i10 < i11 ? i10 : (i10 + 16) - i11;
    }

    private void y(int i10, int i11, int i12, int i13) throws IOException {
        A(this.f34272t, i10, i11, i12, i13);
        this.f34267o.seek(0L);
        this.f34267o.write(this.f34272t);
    }

    private static void z(byte[] bArr, int i10, int i11) {
        bArr[i10] = (byte) (i11 >> 24);
        bArr[i10 + 1] = (byte) (i11 >> 16);
        bArr[i10 + 2] = (byte) (i11 >> 8);
        bArr[i10 + 3] = (byte) i11;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f34267o.close();
    }

    public void f(byte[] bArr) throws IOException {
        g(bArr, 0, bArr.length);
    }

    public synchronized void g(byte[] bArr, int i10, int i11) throws IOException {
        int iX;
        m(bArr, "buffer");
        if ((i10 | i11) < 0 || i11 > bArr.length - i10) {
            throw new IndexOutOfBoundsException();
        }
        i(i11);
        boolean zL = l();
        if (zL) {
            iX = 16;
        } else {
            b bVar = this.f34271s;
            iX = x(bVar.f34277a + 4 + bVar.f34278b);
        }
        b bVar2 = new b(iX, i11);
        z(this.f34272t, 0, i11);
        u(bVar2.f34277a, this.f34272t, 0, 4);
        u(bVar2.f34277a + 4, bArr, i10, i11);
        y(this.f34268p, this.f34269q + 1, zL ? bVar2.f34277a : this.f34270r.f34277a, bVar2.f34277a);
        this.f34271s = bVar2;
        this.f34269q++;
        if (zL) {
            this.f34270r = bVar2;
        }
    }

    public synchronized void h() throws IOException {
        y(4096, 0, 0, 0);
        this.f34269q = 0;
        b bVar = b.f34276c;
        this.f34270r = bVar;
        this.f34271s = bVar;
        if (this.f34268p > 4096) {
            v(4096);
        }
        this.f34268p = 4096;
    }

    public synchronized void j(d dVar) throws IOException {
        int iX = this.f34270r.f34277a;
        for (int i10 = 0; i10 < this.f34269q; i10++) {
            b bVarO = o(iX);
            dVar.a(new c(this, bVarO, null), bVarO.f34278b);
            iX = x(bVarO.f34277a + 4 + bVarO.f34278b);
        }
    }

    public synchronized boolean l() {
        return this.f34269q == 0;
    }

    public synchronized void s() throws IOException {
        if (l()) {
            throw new NoSuchElementException();
        }
        if (this.f34269q == 1) {
            h();
        } else {
            b bVar = this.f34270r;
            int iX = x(bVar.f34277a + 4 + bVar.f34278b);
            t(iX, this.f34272t, 0, 4);
            int iQ = q(this.f34272t, 0);
            y(this.f34268p, this.f34269q - 1, iX, this.f34271s.f34277a);
            this.f34269q--;
            this.f34270r = new b(iX, iQ);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f34268p);
        sb.append(", size=");
        sb.append(this.f34269q);
        sb.append(", first=");
        sb.append(this.f34270r);
        sb.append(", last=");
        sb.append(this.f34271s);
        sb.append(", element lengths=[");
        try {
            j(new a(sb));
        } catch (IOException e10) {
            f34266u.log(Level.WARNING, "read error", (Throwable) e10);
        }
        sb.append("]]");
        return sb.toString();
    }

    public int w() {
        if (this.f34269q == 0) {
            return 16;
        }
        b bVar = this.f34271s;
        int i10 = bVar.f34277a;
        int i11 = this.f34270r.f34277a;
        return i10 >= i11 ? (i10 - i11) + 4 + bVar.f34278b + 16 : (((i10 + 4) + bVar.f34278b) + this.f34268p) - i11;
    }
}
