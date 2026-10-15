package net.lingala.zip4j.io;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Objects;
import java.util.zip.CRC32;
import net.lingala.zip4j.core.HeaderWriter;
import net.lingala.zip4j.crypto.AESEncrpyter;
import net.lingala.zip4j.crypto.IEncrypter;
import net.lingala.zip4j.crypto.StandardEncrypter;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.AESExtraDataRecord;
import net.lingala.zip4j.model.CentralDirectory;
import net.lingala.zip4j.model.EndCentralDirRecord;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.LocalFileHeader;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.model.ZipParameters;
import net.lingala.zip4j.util.Raw;
import net.lingala.zip4j.util.Zip4jUtil;

/* JADX INFO: loaded from: classes2.dex */
public class CipherOutputStream extends BaseOutputStream {
    private long A;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected OutputStream f32613o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private File f32614p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected FileHeader f32615q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected LocalFileHeader f32616r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private IEncrypter f32617s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected ZipParameters f32618t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected ZipModel f32619u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f32620v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected CRC32 f32621w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f32622x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private byte[] f32623y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f32624z;

    public CipherOutputStream(OutputStream outputStream, ZipModel zipModel) {
        this.f32613o = outputStream;
        l(zipModel);
        this.f32621w = new CRC32();
        this.f32620v = 0L;
        this.f32622x = 0L;
        this.f32623y = new byte[16];
        this.f32624z = 0;
        this.A = 0L;
    }

    private void c() throws ZipException {
        String strS;
        int i10;
        FileHeader fileHeader = new FileHeader();
        this.f32615q = fileHeader;
        fileHeader.U(33639248);
        this.f32615q.W(20);
        this.f32615q.X(20);
        if (this.f32618t.m() && this.f32618t.g() == 99) {
            this.f32615q.A(99);
            this.f32615q.y(h(this.f32618t));
        } else {
            this.f32615q.A(this.f32618t.d());
        }
        if (this.f32618t.m()) {
            this.f32615q.G(true);
            this.f32615q.H(this.f32618t.g());
        }
        if (this.f32618t.n()) {
            this.f32615q.R((int) Zip4jUtil.v(System.currentTimeMillis()));
            if (!Zip4jUtil.u(this.f32618t.h())) {
                throw new ZipException("fileNameInZip is null or empty");
            }
            strS = this.f32618t.h();
        } else {
            this.f32615q.R((int) Zip4jUtil.v(Zip4jUtil.r(this.f32614p, this.f32618t.l())));
            this.f32615q.V(this.f32614p.length());
            strS = Zip4jUtil.s(this.f32614p.getAbsolutePath(), this.f32618t.j(), this.f32618t.f());
        }
        if (!Zip4jUtil.u(strS)) {
            throw new ZipException("fileName is null or empty. unable to create file header");
        }
        this.f32615q.M(strS);
        if (Zip4jUtil.u(this.f32619u.d())) {
            this.f32615q.N(Zip4jUtil.l(strS, this.f32619u.d()));
        } else {
            this.f32615q.N(Zip4jUtil.k(strS));
        }
        OutputStream outputStream = this.f32613o;
        if (outputStream instanceof SplitOutputStream) {
            this.f32615q.F(((SplitOutputStream) outputStream).c());
        } else {
            this.f32615q.F(0);
        }
        this.f32615q.I(new byte[]{(byte) (!this.f32618t.n() ? j(this.f32614p) : 0), 0, 0, 0});
        if (this.f32618t.n()) {
            this.f32615q.E(strS.endsWith("/") || strS.endsWith("\\"));
        } else {
            this.f32615q.E(this.f32614p.isDirectory());
        }
        if (this.f32615q.v()) {
            this.f32615q.z(0L);
            this.f32615q.V(0L);
        } else if (!this.f32618t.n()) {
            long jO = Zip4jUtil.o(this.f32614p);
            if (this.f32618t.d() != 0) {
                this.f32615q.z(0L);
            } else if (this.f32618t.g() == 0) {
                this.f32615q.z(12 + jO);
            } else if (this.f32618t.g() == 99) {
                int iA = this.f32618t.a();
                if (iA == 1) {
                    i10 = 8;
                } else {
                    if (iA != 3) {
                        throw new ZipException("invalid aes key strength, cannot determine key sizes");
                    }
                    i10 = 16;
                }
                this.f32615q.z(((long) i10) + jO + 10 + 2);
            } else {
                this.f32615q.z(0L);
            }
            this.f32615q.V(jO);
        }
        if (this.f32618t.m() && this.f32618t.g() == 0) {
            this.f32615q.B(this.f32618t.k());
        }
        byte[] bArr = new byte[2];
        bArr[0] = Raw.a(i(this.f32615q.w(), this.f32618t.d()));
        boolean zU = Zip4jUtil.u(this.f32619u.d());
        if (!(zU && this.f32619u.d().equalsIgnoreCase("UTF8")) && (zU || !Zip4jUtil.g(this.f32615q.k()).equals("UTF8"))) {
            bArr[1] = 0;
        } else {
            bArr[1] = 8;
        }
        this.f32615q.P(bArr);
    }

    private void d() throws ZipException {
        if (this.f32615q == null) {
            throw new ZipException("file header is null, cannot create local file header");
        }
        LocalFileHeader localFileHeader = new LocalFileHeader();
        this.f32616r = localFileHeader;
        localFileHeader.J(67324752);
        this.f32616r.L(this.f32615q.t());
        this.f32616r.u(this.f32615q.c());
        this.f32616r.G(this.f32615q.n());
        this.f32616r.K(this.f32615q.r());
        this.f32616r.D(this.f32615q.l());
        this.f32616r.C(this.f32615q.k());
        this.f32616r.y(this.f32615q.w());
        this.f32616r.z(this.f32615q.g());
        this.f32616r.s(this.f32615q.a());
        this.f32616r.v(this.f32615q.d());
        this.f32616r.t(this.f32615q.b());
        this.f32616r.F((byte[]) this.f32615q.m().clone());
    }

    private void f(byte[] bArr, int i10, int i11) throws IOException {
        IEncrypter iEncrypter = this.f32617s;
        if (iEncrypter != null) {
            try {
                iEncrypter.a(bArr, i10, i11);
            } catch (ZipException e10) {
                throw new IOException(e10.getMessage());
            }
        }
        this.f32613o.write(bArr, i10, i11);
        long j10 = i11;
        this.f32620v += j10;
        this.f32622x += j10;
    }

    private AESExtraDataRecord h(ZipParameters zipParameters) throws ZipException {
        if (zipParameters == null) {
            throw new ZipException("zip parameters are null, cannot generate AES Extra Data record");
        }
        AESExtraDataRecord aESExtraDataRecord = new AESExtraDataRecord();
        aESExtraDataRecord.j(39169L);
        aESExtraDataRecord.i(7);
        aESExtraDataRecord.k("AE");
        aESExtraDataRecord.l(2);
        if (zipParameters.a() == 1) {
            aESExtraDataRecord.g(1);
        } else {
            if (zipParameters.a() != 3) {
                throw new ZipException("invalid AES key strength, cannot generate AES Extra data record");
            }
            aESExtraDataRecord.g(3);
        }
        aESExtraDataRecord.h(zipParameters.d());
        return aESExtraDataRecord;
    }

    private int[] i(boolean z10, int i10) {
        int[] iArr = new int[8];
        if (z10) {
            iArr[0] = 1;
        } else {
            iArr[0] = 0;
        }
        if (i10 != 8) {
            iArr[1] = 0;
            iArr[2] = 0;
        }
        iArr[3] = 1;
        return iArr;
    }

    private int j(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("input file is null, cannot get file attributes");
        }
        if (!file.exists()) {
            return 0;
        }
        if (file.isDirectory()) {
            return file.isHidden() ? 18 : 16;
        }
        if (!file.canWrite() && file.isHidden()) {
            return 3;
        }
        if (file.canWrite()) {
            return file.isHidden() ? 2 : 0;
        }
        return 1;
    }

    private void k() throws ZipException {
        if (!this.f32618t.m()) {
            this.f32617s = null;
            return;
        }
        int iG = this.f32618t.g();
        if (iG == 0) {
            this.f32617s = new StandardEncrypter(this.f32618t.i(), (this.f32616r.k() & 65535) << 16);
        } else {
            if (iG != 99) {
                throw new ZipException("invalid encprytion method");
            }
            this.f32617s = new AESEncrpyter(this.f32618t.i(), this.f32618t.a());
        }
    }

    private void l(ZipModel zipModel) {
        if (zipModel == null) {
            this.f32619u = new ZipModel();
        } else {
            this.f32619u = zipModel;
        }
        if (this.f32619u.b() == null) {
            this.f32619u.n(new EndCentralDirRecord());
        }
        if (this.f32619u.a() == null) {
            this.f32619u.m(new CentralDirectory());
        }
        if (this.f32619u.a().a() == null) {
            this.f32619u.a().b(new ArrayList());
        }
        if (this.f32619u.f() == null) {
            this.f32619u.p(new ArrayList());
        }
        OutputStream outputStream = this.f32613o;
        if ((outputStream instanceof SplitOutputStream) && ((SplitOutputStream) outputStream).h()) {
            this.f32619u.q(true);
            this.f32619u.r(((SplitOutputStream) this.f32613o).e());
        }
        this.f32619u.b().p(101010256L);
    }

    public void b() throws ZipException, IOException {
        int i10 = this.f32624z;
        if (i10 != 0) {
            f(this.f32623y, 0, i10);
            this.f32624z = 0;
        }
        if (this.f32618t.m() && this.f32618t.g() == 99) {
            IEncrypter iEncrypter = this.f32617s;
            if (!(iEncrypter instanceof AESEncrpyter)) {
                throw new ZipException("invalid encrypter for AES encrypted file");
            }
            this.f32613o.write(((AESEncrpyter) iEncrypter).e());
            this.f32622x += 10;
            this.f32620v += 10;
        }
        this.f32615q.z(this.f32622x);
        this.f32616r.t(this.f32622x);
        if (this.f32618t.n()) {
            this.f32615q.V(this.A);
            long jO = this.f32616r.o();
            long j10 = this.A;
            if (jO != j10) {
                this.f32616r.K(j10);
            }
        }
        long value = this.f32621w.getValue();
        if (this.f32615q.w() && this.f32615q.g() == 99) {
            value = 0;
        }
        if (this.f32618t.m() && this.f32618t.g() == 99) {
            this.f32615q.B(0L);
            this.f32616r.v(0L);
        } else {
            this.f32615q.B(value);
            this.f32616r.v(value);
        }
        this.f32619u.f().add(this.f32616r);
        this.f32619u.a().a().add(this.f32615q);
        this.f32620v += (long) new HeaderWriter().i(this.f32616r, this.f32613o);
        this.f32621w.reset();
        this.f32622x = 0L;
        this.f32617s = null;
        this.A = 0L;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        OutputStream outputStream = this.f32613o;
        if (outputStream != null) {
            outputStream.close();
        }
    }

    public void e(int i10) {
        if (i10 <= 0) {
            return;
        }
        long j10 = i10;
        long j11 = this.f32622x;
        if (j10 <= j11) {
            this.f32622x = j11 - j10;
        }
    }

    public void g() throws ZipException, IOException {
        this.f32619u.b().o(this.f32620v);
        new HeaderWriter().d(this.f32619u, this.f32613o);
    }

    public void m(File file, ZipParameters zipParameters) throws ZipException {
        if (!zipParameters.n() && file == null) {
            throw new ZipException("input file is null");
        }
        if (!zipParameters.n() && !Zip4jUtil.a(file)) {
            throw new ZipException("input file does not exist");
        }
        try {
            this.f32614p = file;
            this.f32618t = (ZipParameters) zipParameters.clone();
            if (zipParameters.n()) {
                if (!Zip4jUtil.u(this.f32618t.h())) {
                    throw new ZipException("file name is empty for external stream");
                }
                if (this.f32618t.h().endsWith("/") || this.f32618t.h().endsWith("\\")) {
                    this.f32618t.q(false);
                    this.f32618t.r(-1);
                    this.f32618t.p(0);
                }
            } else if (this.f32614p.isDirectory()) {
                this.f32618t.q(false);
                this.f32618t.r(-1);
                this.f32618t.p(0);
            }
            c();
            d();
            if (this.f32619u.k() && (this.f32619u.a() == null || this.f32619u.a().a() == null || this.f32619u.a().a().size() == 0)) {
                byte[] bArr = new byte[4];
                Raw.j(bArr, 0, 134695760);
                this.f32613o.write(bArr);
                this.f32620v += 4;
            }
            OutputStream outputStream = this.f32613o;
            if (!(outputStream instanceof SplitOutputStream)) {
                long j10 = this.f32620v;
                if (j10 == 4) {
                    this.f32615q.S(4L);
                } else {
                    this.f32615q.S(j10);
                }
            } else if (this.f32620v == 4) {
                this.f32615q.S(4L);
            } else {
                this.f32615q.S(((SplitOutputStream) outputStream).d());
            }
            this.f32620v += (long) new HeaderWriter().k(this.f32619u, this.f32616r, this.f32613o);
            if (this.f32618t.m()) {
                k();
                if (this.f32617s != null) {
                    if (zipParameters.g() == 0) {
                        byte[] bArrE = ((StandardEncrypter) this.f32617s).e();
                        this.f32613o.write(bArrE);
                        this.f32620v += (long) bArrE.length;
                        this.f32622x += (long) bArrE.length;
                    } else if (zipParameters.g() == 99) {
                        byte[] bArrF = ((AESEncrpyter) this.f32617s).f();
                        byte[] bArrD = ((AESEncrpyter) this.f32617s).d();
                        this.f32613o.write(bArrF);
                        this.f32613o.write(bArrD);
                        this.f32620v += (long) (bArrF.length + bArrD.length);
                        this.f32622x += (long) (bArrF.length + bArrD.length);
                    }
                }
            }
            this.f32621w.reset();
        } catch (CloneNotSupportedException e10) {
            throw new ZipException(e10);
        } catch (ZipException e11) {
            throw e11;
        } catch (Exception e12) {
            throw new ZipException(e12);
        }
    }

    protected void n(int i10) {
        if (i10 > 0) {
            this.A += (long) i10;
        }
    }

    @Override // net.lingala.zip4j.io.BaseOutputStream, java.io.OutputStream
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        Objects.requireNonNull(bArr);
        if (bArr.length == 0) {
            return;
        }
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i11 == 0) {
            return;
        }
        if (this.f32618t.m() && this.f32618t.g() == 99) {
            int i13 = this.f32624z;
            if (i13 != 0) {
                if (i11 >= 16 - i13) {
                    System.arraycopy(bArr, i10, this.f32623y, i13, 16 - i13);
                    byte[] bArr2 = this.f32623y;
                    f(bArr2, 0, bArr2.length);
                    i10 = 16 - this.f32624z;
                    i11 -= i10;
                    this.f32624z = 0;
                } else {
                    System.arraycopy(bArr, i10, this.f32623y, i13, i11);
                    this.f32624z += i11;
                    return;
                }
            }
            if (i11 != 0 && (i12 = i11 % 16) != 0) {
                System.arraycopy(bArr, (i11 + i10) - i12, this.f32623y, 0, i12);
                this.f32624z = i12;
                i11 -= i12;
            }
        }
        if (i11 != 0) {
            f(bArr, i10, i11);
        }
    }
}
