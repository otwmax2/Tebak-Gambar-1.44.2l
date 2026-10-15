package net.lingala.zip4j.core;

import com.facebook.internal.security.CertificateUtil;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.AESExtraDataRecord;
import net.lingala.zip4j.model.CentralDirectory;
import net.lingala.zip4j.model.DigitalSignature;
import net.lingala.zip4j.model.EndCentralDirRecord;
import net.lingala.zip4j.model.ExtraDataRecord;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.LocalFileHeader;
import net.lingala.zip4j.model.Zip64EndCentralDirLocator;
import net.lingala.zip4j.model.Zip64EndCentralDirRecord;
import net.lingala.zip4j.model.Zip64ExtendedInfo;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.util.Raw;
import net.lingala.zip4j.util.Zip4jUtil;

/* JADX INFO: loaded from: classes2.dex */
public class HeaderReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RandomAccessFile f32544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ZipModel f32545b;

    public HeaderReader(RandomAccessFile randomAccessFile) {
        this.f32544a = null;
        this.f32544a = randomAccessFile;
    }

    private byte[] a(byte[] bArr) throws ZipException {
        if (bArr == null) {
            throw new ZipException("input parameter is null, cannot expand to 8 bytes");
        }
        if (bArr.length == 4) {
            return new byte[]{bArr[0], bArr[1], bArr[2], bArr[3], 0, 0, 0, 0};
        }
        throw new ZipException("invalid byte length, cannot expand to 8 bytes");
    }

    private AESExtraDataRecord b(ArrayList arrayList) throws ZipException {
        if (arrayList == null) {
            return null;
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            ExtraDataRecord extraDataRecord = (ExtraDataRecord) arrayList.get(i10);
            if (extraDataRecord != null && extraDataRecord.b() == 39169) {
                if (extraDataRecord.a() == null) {
                    throw new ZipException("corrput AES extra data records");
                }
                AESExtraDataRecord aESExtraDataRecord = new AESExtraDataRecord();
                aESExtraDataRecord.j(39169L);
                aESExtraDataRecord.i(extraDataRecord.c());
                byte[] bArrA = extraDataRecord.a();
                aESExtraDataRecord.l(Raw.i(bArrA, 0));
                byte[] bArr = new byte[2];
                System.arraycopy(bArrA, 2, bArr, 0, 2);
                aESExtraDataRecord.k(new String(bArr));
                aESExtraDataRecord.g(bArrA[4] & 255);
                aESExtraDataRecord.h(Raw.i(bArrA, 5));
                return aESExtraDataRecord;
            }
        }
        return null;
    }

    private void d(FileHeader fileHeader) throws ZipException {
        AESExtraDataRecord aESExtraDataRecordB;
        if (fileHeader == null) {
            throw new ZipException("file header is null in reading Zip64 Extended Info");
        }
        if (fileHeader.i() == null || fileHeader.i().size() <= 0 || (aESExtraDataRecordB = b(fileHeader.i())) == null) {
            return;
        }
        fileHeader.y(aESExtraDataRecordB);
        fileHeader.H(99);
    }

    private void e(LocalFileHeader localFileHeader) throws ZipException {
        AESExtraDataRecord aESExtraDataRecordB;
        if (localFileHeader == null) {
            throw new ZipException("file header is null in reading Zip64 Extended Info");
        }
        if (localFileHeader.f() == null || localFileHeader.f().size() <= 0 || (aESExtraDataRecordB = b(localFileHeader.f())) == null) {
            return;
        }
        localFileHeader.s(aESExtraDataRecordB);
        localFileHeader.z(99);
    }

    private void f(FileHeader fileHeader) throws ZipException {
        if (this.f32544a == null) {
            throw new ZipException("invalid file handler when trying to read extra data record");
        }
        if (fileHeader == null) {
            throw new ZipException("file header is null");
        }
        int iJ = fileHeader.j();
        if (iJ <= 0) {
            return;
        }
        fileHeader.J(l(iJ));
    }

    private void g(LocalFileHeader localFileHeader) throws ZipException {
        if (this.f32544a == null) {
            throw new ZipException("invalid file handler when trying to read extra data record");
        }
        if (localFileHeader == null) {
            throw new ZipException("file header is null");
        }
        int iG = localFileHeader.g();
        if (iG <= 0) {
            return;
        }
        localFileHeader.A(l(iG));
    }

    private void h(FileHeader fileHeader) throws ZipException {
        Zip64ExtendedInfo zip64ExtendedInfoQ;
        if (fileHeader == null) {
            throw new ZipException("file header is null in reading Zip64 Extended Info");
        }
        if (fileHeader.i() == null || fileHeader.i().size() <= 0 || (zip64ExtendedInfoQ = q(fileHeader.i(), fileHeader.r(), fileHeader.b(), fileHeader.o(), fileHeader.f())) == null) {
            return;
        }
        fileHeader.Y(zip64ExtendedInfoQ);
        if (zip64ExtendedInfoQ.d() != -1) {
            fileHeader.V(zip64ExtendedInfoQ.d());
        }
        if (zip64ExtendedInfoQ.a() != -1) {
            fileHeader.z(zip64ExtendedInfoQ.a());
        }
        if (zip64ExtendedInfoQ.c() != -1) {
            fileHeader.S(zip64ExtendedInfoQ.c());
        }
        if (zip64ExtendedInfoQ.b() != -1) {
            fileHeader.F(zip64ExtendedInfoQ.b());
        }
    }

    private void i(LocalFileHeader localFileHeader) throws ZipException {
        Zip64ExtendedInfo zip64ExtendedInfoQ;
        if (localFileHeader == null) {
            throw new ZipException("file header is null in reading Zip64 Extended Info");
        }
        if (localFileHeader.f() == null || localFileHeader.f().size() <= 0 || (zip64ExtendedInfoQ = q(localFileHeader.f(), localFileHeader.o(), localFileHeader.b(), -1L, -1)) == null) {
            return;
        }
        localFileHeader.N(zip64ExtendedInfoQ);
        if (zip64ExtendedInfoQ.d() != -1) {
            localFileHeader.K(zip64ExtendedInfoQ.d());
        }
        if (zip64ExtendedInfoQ.a() != -1) {
            localFileHeader.t(zip64ExtendedInfoQ.a());
        }
    }

    private CentralDirectory j() throws ZipException {
        if (this.f32544a == null) {
            throw new ZipException("random access file was null", 3);
        }
        if (this.f32545b.b() == null) {
            throw new ZipException("EndCentralRecord was null, maybe a corrupt zip file");
        }
        try {
            CentralDirectory centralDirectory = new CentralDirectory();
            ArrayList arrayList = new ArrayList();
            EndCentralDirRecord endCentralDirRecordB = this.f32545b.b();
            long jF = endCentralDirRecordB.f();
            int iH = endCentralDirRecordB.h();
            if (this.f32545b.l()) {
                jF = this.f32545b.i().b();
                iH = (int) this.f32545b.i().d();
            }
            this.f32544a.seek(jF);
            byte[] bArr = new byte[4];
            byte[] bArr2 = new byte[2];
            for (int i10 = 0; i10 < iH; i10++) {
                FileHeader fileHeader = new FileHeader();
                m(this.f32544a, bArr);
                int iE = Raw.e(bArr, 0);
                boolean z10 = true;
                if (iE != 33639248) {
                    throw new ZipException("Expected central directory entry not found (#" + (i10 + 1) + ")");
                }
                fileHeader.U(iE);
                m(this.f32544a, bArr2);
                fileHeader.W(Raw.i(bArr2, 0));
                m(this.f32544a, bArr2);
                fileHeader.X(Raw.i(bArr2, 0));
                m(this.f32544a, bArr2);
                fileHeader.O((Raw.i(bArr2, 0) & 2048) != 0);
                byte b10 = bArr2[0];
                if ((b10 & 1) != 0) {
                    fileHeader.G(true);
                }
                fileHeader.P((byte[]) bArr2.clone());
                fileHeader.D((b10 >> 3) == 1);
                m(this.f32544a, bArr2);
                fileHeader.A(Raw.i(bArr2, 0));
                m(this.f32544a, bArr);
                fileHeader.R(Raw.e(bArr, 0));
                m(this.f32544a, bArr);
                fileHeader.B(Raw.e(bArr, 0));
                fileHeader.C((byte[]) bArr.clone());
                m(this.f32544a, bArr);
                fileHeader.z(Raw.g(a(bArr), 0));
                m(this.f32544a, bArr);
                fileHeader.V(Raw.g(a(bArr), 0));
                m(this.f32544a, bArr2);
                int i11 = Raw.i(bArr2, 0);
                fileHeader.N(i11);
                m(this.f32544a, bArr2);
                fileHeader.K(Raw.i(bArr2, 0));
                m(this.f32544a, bArr2);
                int i12 = Raw.i(bArr2, 0);
                fileHeader.L(new String(bArr2));
                m(this.f32544a, bArr2);
                fileHeader.F(Raw.i(bArr2, 0));
                m(this.f32544a, bArr2);
                fileHeader.Q((byte[]) bArr2.clone());
                m(this.f32544a, bArr);
                fileHeader.I((byte[]) bArr.clone());
                m(this.f32544a, bArr);
                fileHeader.S(Raw.g(a(bArr), 0) & 4294967295L);
                if (i11 > 0) {
                    byte[] bArr3 = new byte[i11];
                    m(this.f32544a, bArr3);
                    String str = Zip4jUtil.u(this.f32545b.d()) ? new String(bArr3, this.f32545b.d()) : Zip4jUtil.f(bArr3, fileHeader.x());
                    if (str == null) {
                        throw new ZipException("fileName is null when reading central directory");
                    }
                    if (str.indexOf(CertificateUtil.DELIMITER + System.getProperty("file.separator")) >= 0) {
                        str = str.substring(str.indexOf(CertificateUtil.DELIMITER + System.getProperty("file.separator")) + 2);
                    }
                    fileHeader.M(str);
                    if (!str.endsWith("/") && !str.endsWith("\\")) {
                        z10 = false;
                    }
                    fileHeader.E(z10);
                } else {
                    fileHeader.M(null);
                }
                f(fileHeader);
                h(fileHeader);
                d(fileHeader);
                if (i12 > 0) {
                    byte[] bArr4 = new byte[i12];
                    m(this.f32544a, bArr4);
                    fileHeader.L(new String(bArr4));
                }
                arrayList.add(fileHeader);
            }
            centralDirectory.b(arrayList);
            DigitalSignature digitalSignature = new DigitalSignature();
            m(this.f32544a, bArr);
            int iE2 = Raw.e(bArr, 0);
            if (iE2 != 84233040) {
                return centralDirectory;
            }
            digitalSignature.a(iE2);
            m(this.f32544a, bArr2);
            int i13 = Raw.i(bArr2, 0);
            digitalSignature.c(i13);
            if (i13 > 0) {
                byte[] bArr5 = new byte[i13];
                m(this.f32544a, bArr5);
                digitalSignature.b(new String(bArr5));
            }
            return centralDirectory;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    private EndCentralDirRecord k() throws ZipException {
        RandomAccessFile randomAccessFile = this.f32544a;
        if (randomAccessFile == null) {
            throw new ZipException("random access file was null", 3);
        }
        try {
            byte[] bArr = new byte[4];
            long length = randomAccessFile.length() - 22;
            EndCentralDirRecord endCentralDirRecord = new EndCentralDirRecord();
            int i10 = 0;
            while (true) {
                long j10 = length - 1;
                this.f32544a.seek(length);
                i10++;
                if (Raw.f(this.f32544a, bArr) == 101010256 || i10 > 3000) {
                    break;
                }
                length = j10;
            }
            if (Raw.e(bArr, 0) != 101010256) {
                throw new ZipException("zip headers not found. probably not a zip file");
            }
            byte[] bArr2 = new byte[4];
            byte[] bArr3 = new byte[2];
            endCentralDirRecord.p(101010256L);
            m(this.f32544a, bArr3);
            endCentralDirRecord.m(Raw.i(bArr3, 0));
            m(this.f32544a, bArr3);
            endCentralDirRecord.n(Raw.i(bArr3, 0));
            m(this.f32544a, bArr3);
            endCentralDirRecord.s(Raw.i(bArr3, 0));
            m(this.f32544a, bArr3);
            endCentralDirRecord.r(Raw.i(bArr3, 0));
            m(this.f32544a, bArr2);
            endCentralDirRecord.q(Raw.e(bArr2, 0));
            m(this.f32544a, bArr2);
            endCentralDirRecord.o(Raw.g(a(bArr2), 0));
            m(this.f32544a, bArr3);
            int i11 = Raw.i(bArr3, 0);
            endCentralDirRecord.l(i11);
            if (i11 > 0) {
                byte[] bArr4 = new byte[i11];
                m(this.f32544a, bArr4);
                endCentralDirRecord.j(new String(bArr4));
                endCentralDirRecord.k(bArr4);
            } else {
                endCentralDirRecord.j(null);
            }
            if (endCentralDirRecord.d() > 0) {
                this.f32545b.q(true);
            } else {
                this.f32545b.q(false);
            }
            return endCentralDirRecord;
        } catch (IOException e10) {
            throw new ZipException("Probably not a zip file or a corrupted zip file", e10, 4);
        }
    }

    private ArrayList l(int i10) throws ZipException {
        if (i10 <= 0) {
            return null;
        }
        try {
            byte[] bArr = new byte[i10];
            this.f32544a.read(bArr);
            ArrayList arrayList = new ArrayList();
            int i11 = 0;
            while (i11 < i10) {
                ExtraDataRecord extraDataRecord = new ExtraDataRecord();
                extraDataRecord.e(Raw.i(bArr, i11));
                int i12 = i11 + 2;
                int i13 = Raw.i(bArr, i12);
                if (i13 + 2 > i10) {
                    i13 = Raw.h(bArr, i12);
                    if (i13 + 2 > i10) {
                        break;
                    }
                }
                extraDataRecord.f(i13);
                int i14 = i12 + 2;
                if (i13 > 0) {
                    byte[] bArr2 = new byte[i13];
                    System.arraycopy(bArr, i14, bArr2, 0, i13);
                    extraDataRecord.d(bArr2);
                }
                i11 = i14 + i13;
                arrayList.add(extraDataRecord);
            }
            if (arrayList.size() > 0) {
                return arrayList;
            }
            return null;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    private byte[] m(RandomAccessFile randomAccessFile, byte[] bArr) throws ZipException {
        try {
            if (randomAccessFile.read(bArr, 0, bArr.length) != -1) {
                return bArr;
            }
            throw new ZipException("unexpected end of file when reading short buff");
        } catch (IOException e10) {
            throw new ZipException("IOException when reading short buff", e10);
        }
    }

    private Zip64EndCentralDirLocator o() throws ZipException {
        if (this.f32544a == null) {
            throw new ZipException("invalid file handler when trying to read Zip64EndCentralDirLocator");
        }
        try {
            Zip64EndCentralDirLocator zip64EndCentralDirLocator = new Zip64EndCentralDirLocator();
            r();
            byte[] bArr = new byte[4];
            byte[] bArr2 = new byte[8];
            m(this.f32544a, bArr);
            long jE = Raw.e(bArr, 0);
            if (jE != 117853008) {
                this.f32545b.u(false);
                return null;
            }
            this.f32545b.u(true);
            zip64EndCentralDirLocator.f(jE);
            m(this.f32544a, bArr);
            zip64EndCentralDirLocator.d(Raw.e(bArr, 0));
            m(this.f32544a, bArr2);
            zip64EndCentralDirLocator.e(Raw.g(bArr2, 0));
            m(this.f32544a, bArr);
            zip64EndCentralDirLocator.g(Raw.e(bArr, 0));
            return zip64EndCentralDirLocator;
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    private Zip64EndCentralDirRecord p() throws ZipException {
        if (this.f32545b.h() == null) {
            throw new ZipException("invalid zip64 end of central directory locator");
        }
        long jB = this.f32545b.h().b();
        if (jB < 0) {
            throw new ZipException("invalid offset for start of end of central directory record");
        }
        try {
            this.f32544a.seek(jB);
            Zip64EndCentralDirRecord zip64EndCentralDirRecord = new Zip64EndCentralDirRecord();
            byte[] bArr = new byte[2];
            byte[] bArr2 = new byte[4];
            byte[] bArr3 = new byte[8];
            m(this.f32544a, bArr2);
            long jE = Raw.e(bArr2, 0);
            if (jE != 101075792) {
                throw new ZipException("invalid signature for zip64 end of central directory record");
            }
            zip64EndCentralDirRecord.i(jE);
            m(this.f32544a, bArr3);
            zip64EndCentralDirRecord.k(Raw.g(bArr3, 0));
            m(this.f32544a, bArr);
            zip64EndCentralDirRecord.n(Raw.i(bArr, 0));
            m(this.f32544a, bArr);
            zip64EndCentralDirRecord.o(Raw.i(bArr, 0));
            m(this.f32544a, bArr2);
            zip64EndCentralDirRecord.f(Raw.e(bArr2, 0));
            m(this.f32544a, bArr2);
            zip64EndCentralDirRecord.g(Raw.e(bArr2, 0));
            m(this.f32544a, bArr3);
            zip64EndCentralDirRecord.m(Raw.g(bArr3, 0));
            m(this.f32544a, bArr3);
            zip64EndCentralDirRecord.l(Raw.g(bArr3, 0));
            m(this.f32544a, bArr3);
            zip64EndCentralDirRecord.j(Raw.g(bArr3, 0));
            m(this.f32544a, bArr3);
            zip64EndCentralDirRecord.h(Raw.g(bArr3, 0));
            long jC = zip64EndCentralDirRecord.c() - 44;
            if (jC > 0) {
                byte[] bArr4 = new byte[(int) jC];
                m(this.f32544a, bArr4);
                zip64EndCentralDirRecord.e(bArr4);
            }
            return zip64EndCentralDirRecord;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    private Zip64ExtendedInfo q(ArrayList arrayList, long j10, long j11, long j12, int i10) throws ZipException {
        int i11;
        boolean z10;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            ExtraDataRecord extraDataRecord = (ExtraDataRecord) arrayList.get(i12);
            if (extraDataRecord != null && extraDataRecord.b() == 1) {
                Zip64ExtendedInfo zip64ExtendedInfo = new Zip64ExtendedInfo();
                byte[] bArrA = extraDataRecord.a();
                if (extraDataRecord.c() <= 0) {
                    return null;
                }
                byte[] bArr = new byte[8];
                byte[] bArr2 = new byte[4];
                boolean z11 = true;
                if ((j10 & 65535) != 65535 || extraDataRecord.c() <= 0) {
                    i11 = 0;
                    z10 = false;
                } else {
                    System.arraycopy(bArrA, 0, bArr, 0, 8);
                    zip64ExtendedInfo.h(Raw.g(bArr, 0));
                    i11 = 8;
                    z10 = true;
                }
                if ((j11 & 65535) == 65535 && i11 < extraDataRecord.c()) {
                    System.arraycopy(bArrA, i11, bArr, 0, 8);
                    zip64ExtendedInfo.e(Raw.g(bArr, 0));
                    i11 += 8;
                    z10 = true;
                }
                if ((j12 & 65535) == 65535 && i11 < extraDataRecord.c()) {
                    System.arraycopy(bArrA, i11, bArr, 0, 8);
                    zip64ExtendedInfo.g(Raw.g(bArr, 0));
                    i11 += 8;
                    z10 = true;
                }
                if ((i10 & 65535) != 65535 || i11 >= extraDataRecord.c()) {
                    z11 = z10;
                } else {
                    System.arraycopy(bArrA, i11, bArr2, 0, 4);
                    zip64ExtendedInfo.f(Raw.e(bArr2, 0));
                }
                if (z11) {
                    return zip64ExtendedInfo;
                }
                return null;
            }
        }
        return null;
    }

    private void r() throws ZipException {
        try {
            byte[] bArr = new byte[4];
            long length = this.f32544a.length() - 22;
            while (true) {
                long j10 = length - 1;
                this.f32544a.seek(length);
                if (Raw.f(this.f32544a, bArr) == 101010256) {
                    RandomAccessFile randomAccessFile = this.f32544a;
                    randomAccessFile.seek(((((randomAccessFile.getFilePointer() - 4) - 4) - 8) - 4) - 4);
                    return;
                }
                length = j10;
            }
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    public ZipModel c(String str) throws ZipException {
        ZipModel zipModel = new ZipModel();
        this.f32545b = zipModel;
        zipModel.o(str);
        this.f32545b.n(k());
        this.f32545b.s(o());
        if (this.f32545b.l()) {
            this.f32545b.t(p());
            if (this.f32545b.i() == null || this.f32545b.i().a() <= 0) {
                this.f32545b.q(false);
            } else {
                this.f32545b.q(true);
            }
        }
        this.f32545b.m(j());
        return this.f32545b;
    }

    public LocalFileHeader n(FileHeader fileHeader) throws ZipException {
        if (fileHeader == null || this.f32544a == null) {
            throw new ZipException("invalid read parameters for local header");
        }
        long jO = fileHeader.o();
        if (fileHeader.u() != null && fileHeader.u().c() > 0) {
            jO = fileHeader.o();
        }
        if (jO < 0) {
            throw new ZipException("invalid local header offset");
        }
        try {
            this.f32544a.seek(jO);
            LocalFileHeader localFileHeader = new LocalFileHeader();
            byte[] bArr = new byte[2];
            byte[] bArr2 = new byte[4];
            m(this.f32544a, bArr2);
            int iE = Raw.e(bArr2, 0);
            if (iE != 67324752) {
                throw new ZipException("invalid local header signature for file: " + fileHeader.k());
            }
            localFileHeader.J(iE);
            m(this.f32544a, bArr);
            localFileHeader.L(Raw.i(bArr, 0));
            m(this.f32544a, bArr);
            localFileHeader.E((Raw.i(bArr, 0) & 2048) != 0);
            byte b10 = bArr[0];
            if ((b10 & 1) != 0) {
                localFileHeader.y(true);
            }
            localFileHeader.F(bArr);
            String binaryString = Integer.toBinaryString(b10);
            if (binaryString.length() >= 4) {
                localFileHeader.x(binaryString.charAt(3) == '1');
            }
            m(this.f32544a, bArr);
            localFileHeader.u(Raw.i(bArr, 0));
            m(this.f32544a, bArr2);
            localFileHeader.G(Raw.e(bArr2, 0));
            m(this.f32544a, bArr2);
            localFileHeader.v(Raw.e(bArr2, 0));
            localFileHeader.w((byte[]) bArr2.clone());
            m(this.f32544a, bArr2);
            localFileHeader.t(Raw.g(a(bArr2), 0));
            m(this.f32544a, bArr2);
            localFileHeader.K(Raw.g(a(bArr2), 0));
            m(this.f32544a, bArr);
            int i10 = Raw.i(bArr, 0);
            localFileHeader.D(i10);
            m(this.f32544a, bArr);
            int i11 = Raw.i(bArr, 0);
            localFileHeader.B(i11);
            int i12 = 30;
            if (i10 > 0) {
                byte[] bArr3 = new byte[i10];
                m(this.f32544a, bArr3);
                String strF = Zip4jUtil.f(bArr3, localFileHeader.r());
                if (strF == null) {
                    throw new ZipException("file name is null, cannot assign file name to local file header");
                }
                if (strF.indexOf(CertificateUtil.DELIMITER + System.getProperty("file.separator")) >= 0) {
                    strF = strF.substring(strF.indexOf(CertificateUtil.DELIMITER + System.getProperty("file.separator")) + 2);
                }
                localFileHeader.C(strF);
                i12 = 30 + i10;
            } else {
                localFileHeader.C(null);
            }
            g(localFileHeader);
            localFileHeader.H(jO + ((long) (i12 + i11)));
            localFileHeader.I(fileHeader.p());
            i(localFileHeader);
            e(localFileHeader);
            if (localFileHeader.q() && localFileHeader.e() != 99) {
                if ((b10 & 64) == 64) {
                    localFileHeader.z(1);
                } else {
                    localFileHeader.z(0);
                }
            }
            if (localFileHeader.d() <= 0) {
                localFileHeader.v(fileHeader.d());
                localFileHeader.w(fileHeader.e());
            }
            if (localFileHeader.b() <= 0) {
                localFileHeader.t(fileHeader.b());
            }
            if (localFileHeader.o() <= 0) {
                localFileHeader.K(fileHeader.r());
            }
            return localFileHeader;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }
}
