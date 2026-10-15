package net.lingala.zip4j.unzip;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.zip.CRC32;
import net.lingala.zip4j.core.HeaderReader;
import net.lingala.zip4j.crypto.AESDecrypter;
import net.lingala.zip4j.crypto.IDecrypter;
import net.lingala.zip4j.crypto.StandardDecrypter;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.io.InflaterInputStream;
import net.lingala.zip4j.io.PartInputStream;
import net.lingala.zip4j.io.ZipInputStream;
import net.lingala.zip4j.model.AESExtraDataRecord;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.LocalFileHeader;
import net.lingala.zip4j.model.UnzipParameters;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.progress.ProgressMonitor;
import net.lingala.zip4j.util.Raw;
import net.lingala.zip4j.util.Zip4jUtil;

/* JADX INFO: loaded from: classes2.dex */
public class UnzipEngine {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ZipModel f32784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FileHeader f32785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f32786c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LocalFileHeader f32787d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private IDecrypter f32788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CRC32 f32789f;

    public UnzipEngine(ZipModel zipModel, FileHeader fileHeader) throws ZipException {
        if (zipModel == null || fileHeader == null) {
            throw new ZipException("Invalid parameters passed to StoreUnzip. One or more of the parameters were null");
        }
        this.f32784a = zipModel;
        this.f32785b = fileHeader;
        this.f32789f = new CRC32();
    }

    private int a(AESExtraDataRecord aESExtraDataRecord) throws ZipException {
        if (aESExtraDataRecord == null) {
            throw new ZipException("unable to determine salt length: AESExtraDataRecord is null");
        }
        int iA = aESExtraDataRecord.a();
        if (iA == 1) {
            return 8;
        }
        if (iA == 2) {
            return 12;
        }
        if (iA == 3) {
            return 16;
        }
        throw new ZipException("unable to determine salt length: invalid aes key strength");
    }

    private boolean c() throws ZipException {
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                RandomAccessFile randomAccessFileD = d();
                if (randomAccessFileD == null) {
                    randomAccessFileD = new RandomAccessFile(new File(this.f32784a.j()), "r");
                }
                LocalFileHeader localFileHeaderN = new HeaderReader(randomAccessFileD).n(this.f32785b);
                this.f32787d = localFileHeaderN;
                if (localFileHeaderN == null) {
                    throw new ZipException("error reading local file header. Is this a valid zip file?");
                }
                if (localFileHeaderN.c() != this.f32785b.c()) {
                    try {
                        randomAccessFileD.close();
                    } catch (IOException | Exception unused) {
                    }
                    return false;
                }
                try {
                    randomAccessFileD.close();
                } catch (IOException | Exception unused2) {
                }
                return true;
            } catch (FileNotFoundException e10) {
                throw new ZipException(e10);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    randomAccessFile.close();
                } catch (IOException | Exception unused3) {
                }
            }
            throw th;
        }
    }

    private RandomAccessFile d() throws ZipException {
        String strJ;
        if (!this.f32784a.k()) {
            return null;
        }
        int iF = this.f32785b.f();
        int i10 = iF + 1;
        this.f32786c = i10;
        String strJ2 = this.f32784a.j();
        if (iF == this.f32784a.b().d()) {
            strJ = this.f32784a.j();
        } else if (iF >= 9) {
            strJ = strJ2.substring(0, strJ2.lastIndexOf(".")) + ".z" + i10;
        } else {
            strJ = strJ2.substring(0, strJ2.lastIndexOf(".")) + ".z0" + i10;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(strJ, "r");
            if (this.f32786c == 1) {
                randomAccessFile.read(new byte[4]);
                if (Raw.e(r0, 0) != 134695760) {
                    throw new ZipException("invalid first part split file signature");
                }
            }
            return randomAccessFile;
        } catch (FileNotFoundException e10) {
            throw new ZipException(e10);
        } catch (IOException e11) {
            throw new ZipException(e11);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void e(java.io.InputStream r3, java.io.OutputStream r4) throws net.lingala.zip4j.exception.ZipException {
        /*
            r2 = this;
            if (r3 == 0) goto L36
            r3.close()     // Catch: java.lang.Throwable -> L6 java.io.IOException -> L8
            goto L36
        L6:
            r3 = move-exception
            goto L30
        L8:
            r3 = move-exception
            java.lang.String r0 = r3.getMessage()     // Catch: java.lang.Throwable -> L6
            boolean r0 = net.lingala.zip4j.util.Zip4jUtil.u(r0)     // Catch: java.lang.Throwable -> L6
            if (r0 == 0) goto L2a
            java.lang.String r0 = r3.getMessage()     // Catch: java.lang.Throwable -> L6
            java.lang.String r1 = " - Wrong Password?"
            int r0 = r0.indexOf(r1)     // Catch: java.lang.Throwable -> L6
            if (r0 >= 0) goto L20
            goto L2a
        L20:
            net.lingala.zip4j.exception.ZipException r0 = new net.lingala.zip4j.exception.ZipException     // Catch: java.lang.Throwable -> L6
            java.lang.String r3 = r3.getMessage()     // Catch: java.lang.Throwable -> L6
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L6
            throw r0     // Catch: java.lang.Throwable -> L6
        L2a:
            if (r4 == 0) goto L39
        L2c:
            r4.close()     // Catch: java.io.IOException -> L39
            goto L39
        L30:
            if (r4 == 0) goto L35
            r4.close()     // Catch: java.io.IOException -> L35
        L35:
            throw r3
        L36:
            if (r4 == 0) goto L39
            goto L2c
        L39:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.lingala.zip4j.unzip.UnzipEngine.e(java.io.InputStream, java.io.OutputStream):void");
    }

    private RandomAccessFile f(String str) throws ZipException {
        ZipModel zipModel = this.f32784a;
        if (zipModel == null || !Zip4jUtil.u(zipModel.j())) {
            throw new ZipException("input parameter is null in getFilePointer");
        }
        try {
            return this.f32784a.k() ? d() : new RandomAccessFile(new File(this.f32784a.j()), str);
        } catch (FileNotFoundException e10) {
            throw new ZipException(e10);
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private byte[] g(RandomAccessFile randomAccessFile) throws ZipException {
        try {
            byte[] bArr = new byte[2];
            randomAccessFile.read(bArr);
            return bArr;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    private byte[] h(RandomAccessFile randomAccessFile) throws ZipException {
        if (this.f32787d.a() == null) {
            return null;
        }
        try {
            byte[] bArr = new byte[a(this.f32787d.a())];
            randomAccessFile.seek(this.f32787d.l());
            randomAccessFile.read(bArr);
            return bArr;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    private String m(String str, String str2) throws ZipException {
        if (!Zip4jUtil.u(str2)) {
            str2 = this.f32785b.k();
        }
        return str + System.getProperty("file.separator") + str2;
    }

    private FileOutputStream n(String str, String str2) throws ZipException {
        if (!Zip4jUtil.u(str)) {
            throw new ZipException("invalid output path");
        }
        try {
            File file = new File(m(str, str2));
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            if (file.exists()) {
                file.delete();
            }
            return new FileOutputStream(file);
        } catch (FileNotFoundException e10) {
            throw new ZipException(e10);
        }
    }

    private byte[] o(RandomAccessFile randomAccessFile) throws ZipException {
        try {
            byte[] bArr = new byte[12];
            randomAccessFile.seek(this.f32787d.l());
            randomAccessFile.read(bArr, 0, 12);
            return bArr;
        } catch (IOException e10) {
            throw new ZipException(e10);
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private void q(RandomAccessFile randomAccessFile) throws ZipException {
        if (this.f32787d == null) {
            throw new ZipException("local file header is null, cannot initialize input stream");
        }
        try {
            r(randomAccessFile);
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private void r(RandomAccessFile randomAccessFile) throws ZipException {
        LocalFileHeader localFileHeader = this.f32787d;
        if (localFileHeader == null) {
            throw new ZipException("local file header is null, cannot init decrypter");
        }
        if (localFileHeader.q()) {
            if (this.f32787d.e() == 0) {
                this.f32788e = new StandardDecrypter(this.f32785b, o(randomAccessFile));
            } else {
                if (this.f32787d.e() != 99) {
                    throw new ZipException("unsupported encryption method");
                }
                this.f32788e = new AESDecrypter(this.f32787d, h(randomAccessFile), g(randomAccessFile));
            }
        }
    }

    public void b() throws ZipException {
        FileHeader fileHeader = this.f32785b;
        if (fileHeader != null) {
            if (fileHeader.g() != 99) {
                if ((this.f32789f.getValue() & 4294967295L) != this.f32785b.d()) {
                    String str = "invalid CRC for file: " + this.f32785b.k();
                    if (this.f32787d.q() && this.f32787d.e() == 0) {
                        str = str + " - Wrong Password?";
                    }
                    throw new ZipException(str);
                }
                return;
            }
            IDecrypter iDecrypter = this.f32788e;
            if (iDecrypter == null || !(iDecrypter instanceof AESDecrypter)) {
                return;
            }
            byte[] bArrC = ((AESDecrypter) iDecrypter).c();
            byte[] bArrF = ((AESDecrypter) this.f32788e).f();
            byte[] bArr = new byte[10];
            if (bArrF == null) {
                throw new ZipException("CRC (MAC) check failed for " + this.f32785b.k());
            }
            System.arraycopy(bArrC, 0, bArr, 0, 10);
            if (Arrays.equals(bArr, bArrF)) {
                return;
            }
            throw new ZipException("invalid CRC (MAC) for file: " + this.f32785b.k());
        }
    }

    public IDecrypter i() {
        return this.f32788e;
    }

    public FileHeader j() {
        return this.f32785b;
    }

    public ZipInputStream k() throws ZipException {
        long jE;
        if (this.f32785b == null) {
            throw new ZipException("file header is null, cannot get inputstream");
        }
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFileF = f("r");
            if (!c()) {
                throw new ZipException("local header and file header do not match");
            }
            q(randomAccessFileF);
            long jB = this.f32787d.b();
            long jL = this.f32787d.l();
            if (this.f32787d.q()) {
                if (this.f32787d.e() == 99) {
                    IDecrypter iDecrypter = this.f32788e;
                    if (!(iDecrypter instanceof AESDecrypter)) {
                        throw new ZipException("invalid decryptor when trying to calculate compressed size for AES encrypted file: " + this.f32785b.k());
                    }
                    jB -= (long) ((((AESDecrypter) iDecrypter).e() + ((AESDecrypter) this.f32788e).d()) + 10);
                    jE = ((AESDecrypter) this.f32788e).e() + ((AESDecrypter) this.f32788e).d();
                } else if (this.f32787d.e() == 0) {
                    jE = 12;
                    jB -= 12;
                }
                jL += jE;
            }
            long j10 = jB;
            long j11 = jL;
            int iC = this.f32785b.c();
            if (this.f32785b.g() == 99) {
                if (this.f32785b.a() == null) {
                    throw new ZipException("AESExtraDataRecord does not exist for AES encrypted file: " + this.f32785b.k());
                }
                iC = this.f32785b.a().b();
            }
            randomAccessFileF.seek(j11);
            if (iC == 0) {
                return new ZipInputStream(new PartInputStream(randomAccessFileF, j11, j10, this));
            }
            if (iC == 8) {
                return new ZipInputStream(new InflaterInputStream(randomAccessFileF, j11, j10, this));
            }
            throw new ZipException("compression type not supported");
        } catch (ZipException e10) {
            if (0 != 0) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused) {
                }
            }
            throw e10;
        } catch (Exception e11) {
            if (0 != 0) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            }
            throw new ZipException(e11);
        }
    }

    public LocalFileHeader l() {
        return this.f32787d;
    }

    public ZipModel p() {
        return this.f32784a;
    }

    public RandomAccessFile s() throws IOException {
        String strJ;
        String strJ2 = this.f32784a.j();
        if (this.f32786c == this.f32784a.b().d()) {
            strJ = this.f32784a.j();
        } else if (this.f32786c >= 9) {
            strJ = strJ2.substring(0, strJ2.lastIndexOf(".")) + ".z" + (this.f32786c + 1);
        } else {
            strJ = strJ2.substring(0, strJ2.lastIndexOf(".")) + ".z0" + (this.f32786c + 1);
        }
        this.f32786c++;
        try {
            if (Zip4jUtil.b(strJ)) {
                return new RandomAccessFile(strJ, "r");
            }
            throw new IOException("zip split file does not exist: " + strJ);
        } catch (ZipException e10) {
            throw new IOException(e10.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [net.lingala.zip4j.unzip.UnzipEngine] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r9v6 */
    public void t(ProgressMonitor progressMonitor, String str, String str2, UnzipParameters unzipParameters) throws Throwable {
        byte[] bArr;
        ZipInputStream zipInputStreamK;
        if (this.f32784a == null || this.f32785b == null || !Zip4jUtil.u(str)) {
            throw new ZipException("Invalid parameters passed during unzipping file. One or more of the parameters were null");
        }
        ZipInputStream zipInputStream = null;
        try {
            try {
                bArr = new byte[4096];
                zipInputStreamK = k();
            } catch (Throwable th) {
                th = th;
            }
            try {
                FileOutputStream fileOutputStreamN = n(str, str2);
                do {
                    int i10 = zipInputStreamK.read(bArr);
                    if (i10 == -1) {
                        e(zipInputStreamK, fileOutputStreamN);
                        UnzipUtil.a(this.f32785b, new File(m(str, str2)), unzipParameters);
                        e(zipInputStreamK, fileOutputStreamN);
                        return;
                    }
                    fileOutputStreamN.write(bArr, 0, i10);
                    progressMonitor.k(i10);
                } while (!progressMonitor.d());
                progressMonitor.h(3);
                progressMonitor.i(0);
                e(zipInputStreamK, fileOutputStreamN);
            } catch (IOException e10) {
                e = e10;
                throw new ZipException(e);
            } catch (Exception e11) {
                e = e11;
                throw new ZipException(e);
            } catch (Throwable th2) {
                th = th2;
                str = 0;
                zipInputStream = zipInputStreamK;
                e(zipInputStream, str);
                throw th;
            }
        } catch (IOException e12) {
            e = e12;
        } catch (Exception e13) {
            e = e13;
        } catch (Throwable th3) {
            th = th3;
            str = 0;
        }
    }

    public void u(int i10) {
        this.f32789f.update(i10);
    }

    public void v(byte[] bArr, int i10, int i11) {
        if (bArr != null) {
            this.f32789f.update(bArr, i10, i11);
        }
    }
}
