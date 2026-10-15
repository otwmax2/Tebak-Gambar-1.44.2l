package net.lingala.zip4j.core;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.io.SplitOutputStream;
import net.lingala.zip4j.model.AESExtraDataRecord;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.LocalFileHeader;
import net.lingala.zip4j.model.Zip64EndCentralDirLocator;
import net.lingala.zip4j.model.Zip64EndCentralDirRecord;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.util.Raw;
import net.lingala.zip4j.util.Zip4jUtil;

/* JADX INFO: loaded from: classes2.dex */
public class HeaderWriter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f32546a = 50;

    private byte[] a(List list) throws ZipException {
        if (list == null) {
            throw new ZipException("input byte array list is null, cannot conver to byte array");
        }
        if (list.size() <= 0) {
            return null;
        }
        byte[] bArr = new byte[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            bArr[i10] = Byte.parseByte((String) list.get(i10));
        }
        return bArr;
    }

    private void b(byte[] bArr, List list) throws ZipException {
        if (list == null || bArr == null) {
            throw new ZipException("one of the input parameters is null, cannot copy byte array to array list");
        }
        for (byte b10 : bArr) {
            list.add(Byte.toString(b10));
        }
    }

    private int c(ArrayList arrayList, int i10) throws ZipException {
        if (arrayList == null) {
            throw new ZipException("file headers are null, cannot calculate number of entries on this disk");
        }
        int i11 = 0;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            if (((FileHeader) arrayList.get(i12)).f() == i10) {
                i11++;
            }
        }
        return i11;
    }

    private void f(ZipModel zipModel, OutputStream outputStream) throws ZipException {
        int iC = 0;
        try {
            if (outputStream instanceof SplitOutputStream) {
                zipModel.b().o(((SplitOutputStream) outputStream).d());
                iC = ((SplitOutputStream) outputStream).c();
            }
            if (zipModel.l()) {
                if (zipModel.i() == null) {
                    zipModel.t(new Zip64EndCentralDirRecord());
                }
                if (zipModel.h() == null) {
                    zipModel.s(new Zip64EndCentralDirLocator());
                }
                zipModel.h().d(iC);
                zipModel.h().g(iC + 1);
            }
            zipModel.b().m(iC);
            zipModel.b().n(iC);
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    private int g(ZipModel zipModel, OutputStream outputStream, List list) throws ZipException {
        if (zipModel == null || outputStream == null) {
            throw new ZipException("input parameters is null, cannot write central directory");
        }
        if (zipModel.a() == null || zipModel.a().a() == null || zipModel.a().a().size() <= 0) {
            return 0;
        }
        int iJ = 0;
        for (int i10 = 0; i10 < zipModel.a().a().size(); i10++) {
            iJ += j(zipModel, (FileHeader) zipModel.a().a().get(i10), outputStream, list);
        }
        return iJ;
    }

    private void h(ZipModel zipModel, OutputStream outputStream, int i10, long j10, List list) throws ZipException {
        if (zipModel == null || outputStream == null) {
            throw new ZipException("zip model or output stream is null, cannot write end of central directory record");
        }
        try {
            byte[] bArr = new byte[2];
            byte[] bArr2 = new byte[4];
            byte[] bArr3 = new byte[8];
            Raw.j(bArr2, 0, (int) zipModel.b().g());
            b(bArr2, list);
            Raw.l(bArr, 0, (short) zipModel.b().d());
            b(bArr, list);
            Raw.l(bArr, 0, (short) zipModel.b().e());
            b(bArr, list);
            if (zipModel.a() == null || zipModel.a().a() == null) {
                throw new ZipException("invalid central directory/file headers, cannot write end of central directory record");
            }
            int size = zipModel.a().a().size();
            Raw.l(bArr, 0, (short) (zipModel.k() ? c(zipModel.a().a(), zipModel.b().d()) : size));
            b(bArr, list);
            Raw.l(bArr, 0, (short) size);
            b(bArr, list);
            Raw.j(bArr2, 0, i10);
            b(bArr2, list);
            if (j10 > 4294967295L) {
                Raw.k(bArr3, 0, 4294967295L);
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, list);
            } else {
                Raw.k(bArr3, 0, j10);
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, list);
            }
            int iC = zipModel.b().a() != null ? zipModel.b().c() : 0;
            Raw.l(bArr, 0, (short) iC);
            b(bArr, list);
            if (iC > 0) {
                b(zipModel.b().b(), list);
            }
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    private int j(ZipModel zipModel, FileHeader fileHeader, OutputStream outputStream, List list) throws ZipException {
        boolean z10;
        boolean z11;
        int i10;
        int iK;
        if (fileHeader == null || outputStream == null) {
            throw new ZipException("input parameters is null, cannot write local file header");
        }
        try {
            byte[] bArr = new byte[2];
            byte[] bArr2 = new byte[4];
            byte[] bArr3 = new byte[8];
            byte[] bArr4 = {0, 0};
            byte[] bArr5 = {0, 0, 0, 0};
            Raw.j(bArr2, 0, fileHeader.q());
            b(bArr2, list);
            Raw.l(bArr, 0, (short) fileHeader.s());
            b(bArr, list);
            Raw.l(bArr, 0, (short) fileHeader.t());
            b(bArr, list);
            b(fileHeader.m(), list);
            Raw.l(bArr, 0, (short) fileHeader.c());
            b(bArr, list);
            Raw.j(bArr2, 0, fileHeader.n());
            b(bArr2, list);
            Raw.j(bArr2, 0, (int) fileHeader.d());
            b(bArr2, list);
            if (fileHeader.b() >= 4294967295L || fileHeader.r() + 50 >= 4294967295L) {
                Raw.k(bArr3, 0, 4294967295L);
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, list);
                b(bArr2, list);
                z10 = true;
            } else {
                Raw.k(bArr3, 0, fileHeader.b());
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, list);
                Raw.k(bArr3, 0, fileHeader.r());
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, list);
                z10 = false;
            }
            Raw.l(bArr, 0, (short) fileHeader.l());
            b(bArr, list);
            byte[] bArr6 = new byte[4];
            if (fileHeader.o() > 4294967295L) {
                Raw.k(bArr3, 0, 4294967295L);
                System.arraycopy(bArr3, 0, bArr6, 0, 4);
                z11 = true;
            } else {
                Raw.k(bArr3, 0, fileHeader.o());
                System.arraycopy(bArr3, 0, bArr6, 0, 4);
                z11 = false;
            }
            if (z10 || z11) {
                i10 = z10 ? 20 : 4;
                if (z11) {
                    i10 += 8;
                }
            } else {
                i10 = 0;
            }
            if (fileHeader.a() != null) {
                i10 += 11;
            }
            Raw.l(bArr, 0, (short) i10);
            b(bArr, list);
            b(bArr4, list);
            Raw.l(bArr, 0, (short) fileHeader.f());
            b(bArr, list);
            b(bArr4, list);
            if (fileHeader.h() != null) {
                b(fileHeader.h(), list);
            } else {
                b(bArr5, list);
            }
            b(bArr6, list);
            if (Zip4jUtil.u(zipModel.d())) {
                byte[] bytes = fileHeader.k().getBytes(zipModel.d());
                b(bytes, list);
                iK = bytes.length;
            } else {
                b(Zip4jUtil.e(fileHeader.k()), list);
                iK = Zip4jUtil.k(fileHeader.k());
            }
            int i11 = 46 + iK;
            if (z10 || z11) {
                zipModel.u(true);
                Raw.l(bArr, 0, (short) 1);
                b(bArr, list);
                int i12 = i11 + 2;
                int i13 = z10 ? 16 : 0;
                if (z11) {
                    i13 += 8;
                }
                Raw.l(bArr, 0, (short) i13);
                b(bArr, list);
                i11 = i12 + 2;
                if (z10) {
                    Raw.k(bArr3, 0, fileHeader.r());
                    b(bArr3, list);
                    Raw.k(bArr3, 0, fileHeader.b());
                    b(bArr3, list);
                    i11 = i11 + 8 + 8;
                }
                if (z11) {
                    Raw.k(bArr3, 0, fileHeader.o());
                    b(bArr3, list);
                    i11 += 8;
                }
            }
            if (fileHeader.a() == null) {
                return i11;
            }
            AESExtraDataRecord aESExtraDataRecordA = fileHeader.a();
            Raw.l(bArr, 0, (short) aESExtraDataRecordA.d());
            b(bArr, list);
            Raw.l(bArr, 0, (short) aESExtraDataRecordA.c());
            b(bArr, list);
            Raw.l(bArr, 0, (short) aESExtraDataRecordA.f());
            b(bArr, list);
            b(aESExtraDataRecordA.e().getBytes(), list);
            b(new byte[]{(byte) aESExtraDataRecordA.a()}, list);
            Raw.l(bArr, 0, (short) aESExtraDataRecordA.b());
            b(bArr, list);
            return i11 + 11;
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    private void l(ZipModel zipModel, OutputStream outputStream, List list) throws ZipException {
        if (zipModel == null || outputStream == null) {
            throw new ZipException("zip model or output stream is null, cannot write zip64 end of central directory locator");
        }
        try {
            byte[] bArr = new byte[4];
            byte[] bArr2 = new byte[8];
            Raw.j(bArr, 0, 117853008);
            b(bArr, list);
            Raw.j(bArr, 0, zipModel.h().a());
            b(bArr, list);
            Raw.k(bArr2, 0, zipModel.h().b());
            b(bArr2, list);
            Raw.j(bArr, 0, zipModel.h().c());
            b(bArr, list);
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private void m(ZipModel zipModel, OutputStream outputStream, int i10, long j10, List list) throws ZipException {
        int i11;
        if (zipModel == null || outputStream == null) {
            throw new ZipException("zip model or output stream is null, cannot write zip64 end of central directory record");
        }
        try {
            byte[] bArr = new byte[2];
            byte[] bArr2 = {0, 0};
            byte[] bArr3 = new byte[4];
            byte[] bArr4 = new byte[8];
            Raw.j(bArr3, 0, 101075792);
            b(bArr3, list);
            Raw.k(bArr4, 0, 44L);
            b(bArr4, list);
            if (zipModel.a() == null || zipModel.a().a() == null || zipModel.a().a().size() <= 0) {
                b(bArr2, list);
                b(bArr2, list);
            } else {
                Raw.l(bArr, 0, (short) ((FileHeader) zipModel.a().a().get(0)).s());
                b(bArr, list);
                Raw.l(bArr, 0, (short) ((FileHeader) zipModel.a().a().get(0)).t());
                b(bArr, list);
            }
            Raw.j(bArr3, 0, zipModel.b().d());
            b(bArr3, list);
            Raw.j(bArr3, 0, zipModel.b().e());
            b(bArr3, list);
            if (zipModel.a() == null || zipModel.a().a() == null) {
                throw new ZipException("invalid central directory/file headers, cannot write end of central directory record");
            }
            int size = zipModel.a().a().size();
            if (zipModel.k()) {
                c(zipModel.a().a(), zipModel.b().d());
                i11 = 0;
            } else {
                i11 = size;
            }
            Raw.k(bArr4, 0, i11);
            b(bArr4, list);
            Raw.k(bArr4, 0, size);
            b(bArr4, list);
            Raw.k(bArr4, 0, i10);
            b(bArr4, list);
            Raw.k(bArr4, 0, j10);
            b(bArr4, list);
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private void n(ZipModel zipModel, OutputStream outputStream, byte[] bArr) throws ZipException {
        if (bArr == null) {
            throw new ZipException("invalid buff to write as zip headers");
        }
        try {
            if ((outputStream instanceof SplitOutputStream) && ((SplitOutputStream) outputStream).b(bArr.length)) {
                d(zipModel, outputStream);
            } else {
                outputStream.write(bArr);
            }
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    public void d(ZipModel zipModel, OutputStream outputStream) throws ZipException {
        if (zipModel == null || outputStream == null) {
            throw new ZipException("input parameters is null, cannot finalize zip file");
        }
        try {
            f(zipModel, outputStream);
            long jF = zipModel.b().f();
            ArrayList arrayList = new ArrayList();
            int iG = g(zipModel, outputStream, arrayList);
            if (zipModel.l()) {
                if (zipModel.i() == null) {
                    zipModel.t(new Zip64EndCentralDirRecord());
                }
                if (zipModel.h() == null) {
                    zipModel.s(new Zip64EndCentralDirLocator());
                }
                zipModel.h().e(((long) iG) + jF);
                if (outputStream instanceof SplitOutputStream) {
                    zipModel.h().d(((SplitOutputStream) outputStream).c());
                    zipModel.h().g(((SplitOutputStream) outputStream).c() + 1);
                } else {
                    zipModel.h().d(0);
                    zipModel.h().g(1);
                }
                m(zipModel, outputStream, iG, jF, arrayList);
                l(zipModel, outputStream, arrayList);
            }
            h(zipModel, outputStream, iG, jF, arrayList);
            n(zipModel, outputStream, a(arrayList));
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    public void e(ZipModel zipModel, OutputStream outputStream) throws ZipException {
        if (zipModel == null || outputStream == null) {
            throw new ZipException("input parameters is null, cannot finalize zip file without validations");
        }
        try {
            ArrayList arrayList = new ArrayList();
            long jF = zipModel.b().f();
            int iG = g(zipModel, outputStream, arrayList);
            if (zipModel.l()) {
                if (zipModel.i() == null) {
                    zipModel.t(new Zip64EndCentralDirRecord());
                }
                if (zipModel.h() == null) {
                    zipModel.s(new Zip64EndCentralDirLocator());
                }
                zipModel.h().e(((long) iG) + jF);
                m(zipModel, outputStream, iG, jF, arrayList);
                l(zipModel, outputStream, arrayList);
            }
            h(zipModel, outputStream, iG, jF, arrayList);
            n(zipModel, outputStream, a(arrayList));
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    public int i(LocalFileHeader localFileHeader, OutputStream outputStream) throws ZipException, IOException {
        if (localFileHeader == null || outputStream == null) {
            throw new ZipException("input parameters is null, cannot write extended local header");
        }
        ArrayList arrayList = new ArrayList();
        byte[] bArr = new byte[4];
        Raw.j(bArr, 0, 134695760);
        b(bArr, arrayList);
        Raw.j(bArr, 0, (int) localFileHeader.d());
        b(bArr, arrayList);
        long jB = localFileHeader.b();
        if (jB >= 2147483647L) {
            jB = 2147483647L;
        }
        Raw.j(bArr, 0, (int) jB);
        b(bArr, arrayList);
        long jO = localFileHeader.o();
        Raw.j(bArr, 0, (int) (jO < 2147483647L ? jO : 2147483647L));
        b(bArr, arrayList);
        byte[] bArrA = a(arrayList);
        outputStream.write(bArrA);
        return bArrA.length;
    }

    public int k(ZipModel zipModel, LocalFileHeader localFileHeader, OutputStream outputStream) throws ZipException {
        boolean z10;
        if (localFileHeader == null) {
            throw new ZipException("input parameters are null, cannot write local file header");
        }
        try {
            ArrayList arrayList = new ArrayList();
            byte[] bArr = new byte[2];
            byte[] bArr2 = new byte[4];
            byte[] bArr3 = new byte[8];
            byte[] bArr4 = {0, 0, 0, 0, 0, 0, 0, 0};
            Raw.j(bArr2, 0, localFileHeader.n());
            b(bArr2, arrayList);
            Raw.l(bArr, 0, (short) localFileHeader.p());
            b(bArr, arrayList);
            b(localFileHeader.j(), arrayList);
            Raw.l(bArr, 0, (short) localFileHeader.c());
            b(bArr, arrayList);
            Raw.j(bArr2, 0, localFileHeader.k());
            b(bArr2, arrayList);
            Raw.j(bArr2, 0, (int) localFileHeader.d());
            b(bArr2, arrayList);
            if (localFileHeader.o() + 50 >= 4294967295L) {
                Raw.k(bArr3, 0, 4294967295L);
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, arrayList);
                b(bArr2, arrayList);
                zipModel.u(true);
                localFileHeader.M(true);
                z10 = true;
            } else {
                Raw.k(bArr3, 0, localFileHeader.b());
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, arrayList);
                Raw.k(bArr3, 0, localFileHeader.o());
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, arrayList);
                localFileHeader.M(false);
                z10 = false;
            }
            Raw.l(bArr, 0, (short) localFileHeader.i());
            b(bArr, arrayList);
            int i10 = z10 ? 20 : 0;
            if (localFileHeader.a() != null) {
                i10 += 11;
            }
            Raw.l(bArr, 0, (short) i10);
            b(bArr, arrayList);
            if (Zip4jUtil.u(zipModel.d())) {
                b(localFileHeader.h().getBytes(zipModel.d()), arrayList);
            } else {
                b(Zip4jUtil.e(localFileHeader.h()), arrayList);
            }
            if (z10) {
                Raw.l(bArr, 0, (short) 1);
                b(bArr, arrayList);
                Raw.l(bArr, 0, (short) 16);
                b(bArr, arrayList);
                Raw.k(bArr3, 0, localFileHeader.o());
                b(bArr3, arrayList);
                b(bArr4, arrayList);
            }
            if (localFileHeader.a() != null) {
                AESExtraDataRecord aESExtraDataRecordA = localFileHeader.a();
                Raw.l(bArr, 0, (short) aESExtraDataRecordA.d());
                b(bArr, arrayList);
                Raw.l(bArr, 0, (short) aESExtraDataRecordA.c());
                b(bArr, arrayList);
                Raw.l(bArr, 0, (short) aESExtraDataRecordA.f());
                b(bArr, arrayList);
                b(aESExtraDataRecordA.e().getBytes(), arrayList);
                b(new byte[]{(byte) aESExtraDataRecordA.a()}, arrayList);
                Raw.l(bArr, 0, (short) aESExtraDataRecordA.b());
                b(bArr, arrayList);
            }
            byte[] bArrA = a(arrayList);
            outputStream.write(bArrA);
            return bArrA.length;
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }
}
