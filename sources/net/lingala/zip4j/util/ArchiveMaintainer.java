package net.lingala.zip4j.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.progress.ProgressMonitor;

/* JADX INFO: loaded from: classes2.dex */
public class ArchiveMaintainer {

    /* JADX INFO: renamed from: net.lingala.zip4j.util.ArchiveMaintainer$1, reason: invalid class name */
    class AnonymousClass1 extends Thread {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ ZipModel f32790o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ FileHeader f32791p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ ProgressMonitor f32792q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ ArchiveMaintainer f32793r;

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            try {
                this.f32793r.f(this.f32790o, this.f32791p, this.f32792q);
                this.f32792q.b();
            } catch (ZipException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: net.lingala.zip4j.util.ArchiveMaintainer$2, reason: invalid class name */
    class AnonymousClass2 extends Thread {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ ZipModel f32794o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ File f32795p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ ProgressMonitor f32796q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ ArchiveMaintainer f32797r;

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            try {
                this.f32797r.e(this.f32794o, this.f32795p, this.f32796q);
            } catch (ZipException unused) {
            }
        }
    }

    private void b(RandomAccessFile randomAccessFile, OutputStream outputStream, long j10, long j11, ProgressMonitor progressMonitor) throws ZipException {
        if (randomAccessFile == null || outputStream == null) {
            throw new ZipException("input or output stream is null, cannot copy file");
        }
        long j12 = 0;
        if (j10 < 0) {
            throw new ZipException("starting offset is negative, cannot copy file");
        }
        if (j11 < 0) {
            throw new ZipException("end offset is negative, cannot copy file");
        }
        if (j10 > j11) {
            throw new ZipException("start offset is greater than end offset, cannot copy file");
        }
        if (j10 == j11) {
            return;
        }
        if (progressMonitor.d()) {
            progressMonitor.h(3);
            progressMonitor.i(0);
            return;
        }
        try {
            randomAccessFile.seek(j10);
            long j13 = j11 - j10;
            byte[] bArr = j13 < 4096 ? new byte[(int) j13] : new byte[4096];
            while (true) {
                int i10 = randomAccessFile.read(bArr);
                if (i10 == -1) {
                    return;
                }
                outputStream.write(bArr, 0, i10);
                long j14 = i10;
                progressMonitor.k(j14);
                if (progressMonitor.d()) {
                    progressMonitor.h(3);
                    return;
                }
                j12 += j14;
                if (j12 == j13) {
                    return;
                }
                if (((long) bArr.length) + j12 > j13) {
                    bArr = new byte[(int) (j13 - j12)];
                }
            }
        } catch (IOException e10) {
            throw new ZipException(e10);
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private RandomAccessFile c(ZipModel zipModel, String str) throws ZipException {
        if (zipModel == null || !Zip4jUtil.u(zipModel.j())) {
            throw new ZipException("input parameter is null in getFilePointer, cannot create file handler to remove file");
        }
        try {
            return new RandomAccessFile(new File(zipModel.j()), str);
        } catch (FileNotFoundException e10) {
            throw new ZipException(e10);
        }
    }

    private RandomAccessFile d(ZipModel zipModel, int i10) throws ZipException {
        String strJ;
        if (zipModel == null) {
            throw new ZipException("zip model is null, cannot create split file handler");
        }
        if (i10 < 0) {
            throw new ZipException("invlaid part number, cannot create split file handler");
        }
        try {
            String strJ2 = zipModel.j();
            if (i10 == zipModel.b().d()) {
                strJ = zipModel.j();
            } else if (i10 >= 9) {
                strJ = strJ2.substring(0, strJ2.lastIndexOf(".")) + ".z" + (i10 + 1);
            } else {
                strJ = strJ2.substring(0, strJ2.lastIndexOf(".")) + ".z0" + (i10 + 1);
            }
            File file = new File(strJ);
            if (Zip4jUtil.a(file)) {
                return new RandomAccessFile(file, "r");
            }
            throw new ZipException("split file does not exist: " + strJ);
        } catch (FileNotFoundException e10) {
            throw new ZipException(e10);
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0182 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x017b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:166:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0086 A[Catch: all -> 0x0075, Exception -> 0x0078, IOException -> 0x007b, TRY_LEAVE, TryCatch #22 {IOException -> 0x007b, Exception -> 0x0078, all -> 0x0075, blocks: (B:16:0x003b, B:18:0x0041, B:20:0x004b, B:22:0x0059, B:34:0x0086), top: B:151:0x003b }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cc A[Catch: all -> 0x00e0, Exception -> 0x00e8, IOException -> 0x00f0, TRY_ENTER, TRY_LEAVE, TryCatch #5 {IOException -> 0x00f0, blocks: (B:38:0x00ab, B:40:0x00bc, B:45:0x00cc), top: B:134:0x00ab }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void e(net.lingala.zip4j.model.ZipModel r24, java.io.File r25, net.lingala.zip4j.progress.ProgressMonitor r26) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 416
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: net.lingala.zip4j.util.ArchiveMaintainer.e(net.lingala.zip4j.model.ZipModel, java.io.File, net.lingala.zip4j.progress.ProgressMonitor):void");
    }

    private OutputStream g(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("outFile is null, cannot create outputstream");
        }
        try {
            return new FileOutputStream(file);
        } catch (FileNotFoundException e10) {
            throw new ZipException(e10);
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private void h(File file, String str) throws ZipException {
        if (!file.delete()) {
            throw new ZipException("cannot delete old zip file");
        }
        if (!new File(str).renameTo(file)) {
            throw new ZipException("cannot rename modified zip file");
        }
    }

    private void i(ZipModel zipModel) throws ZipException {
        try {
            if (zipModel == null) {
                throw new ZipException("zip model is null - cannot update end of central directory for split zip model");
            }
            if (zipModel.a() == null) {
                throw new ZipException("corrupt zip model - getCentralDirectory, cannot update split zip model");
            }
            zipModel.b().m(0);
            zipModel.b().n(0);
            zipModel.b().r(zipModel.a().a().size());
            zipModel.b().s(zipModel.a().a().size());
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private void j(ZipModel zipModel, ArrayList arrayList, boolean z10) throws ZipException {
        try {
            if (zipModel.a() == null) {
                throw new ZipException("corrupt zip model - getCentralDirectory, cannot update split zip model");
            }
            int size = zipModel.a().a().size();
            int i10 = z10 ? 4 : 0;
            for (int i11 = 0; i11 < size; i11++) {
                long jLongValue = 0;
                for (int i12 = 0; i12 < ((FileHeader) zipModel.a().a().get(i11)).f(); i12++) {
                    jLongValue += ((Long) arrayList.get(i12)).longValue();
                }
                ((FileHeader) zipModel.a().a().get(i11)).S((((FileHeader) zipModel.a().a().get(i11)).o() + jLongValue) - ((long) i10));
                ((FileHeader) zipModel.a().a().get(i11)).F(0);
            }
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private void k(ZipModel zipModel, ArrayList arrayList) throws ZipException {
        if (zipModel == null) {
            throw new ZipException("zip model is null, cannot update split Zip64 end of central directory locator");
        }
        if (zipModel.h() == null) {
            return;
        }
        zipModel.h().d(0);
        long jLongValue = 0;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            jLongValue += ((Long) arrayList.get(i10)).longValue();
        }
        zipModel.h().e(zipModel.h().b() + jLongValue);
        zipModel.h().g(1);
    }

    private void l(ZipModel zipModel, ArrayList arrayList) throws ZipException {
        if (zipModel == null) {
            throw new ZipException("zip model is null, cannot update split Zip64 end of central directory record");
        }
        if (zipModel.i() == null) {
            return;
        }
        zipModel.i().f(0);
        zipModel.i().g(0);
        zipModel.i().m(zipModel.b().h());
        long jLongValue = 0;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            jLongValue += ((Long) arrayList.get(i10)).longValue();
        }
        zipModel.i().h(zipModel.i().b() + jLongValue);
    }

    private void m(ZipModel zipModel, ArrayList arrayList, boolean z10) throws ZipException {
        if (zipModel == null) {
            throw new ZipException("zip model is null, cannot update split zip model");
        }
        zipModel.q(false);
        j(zipModel, arrayList, z10);
        i(zipModel);
        if (zipModel.l()) {
            k(zipModel, arrayList);
            l(zipModel, arrayList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 14, insn: 0x041d: MOVE (r3 I:??[OBJECT, ARRAY]) = (r14 I:??[OBJECT, ARRAY]), block:B:250:0x041d */
    /* JADX WARN: Not initialized variable reg: 28, insn: 0x041e: MOVE (r14 I:??[OBJECT, ARRAY]) = (r28 I:??[OBJECT, ARRAY]), block:B:250:0x041d */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0427 A[Catch: IOException -> 0x042b, TRY_LEAVE, TryCatch #32 {IOException -> 0x042b, blocks: (B:252:0x0422, B:254:0x0427), top: B:276:0x0422 }] */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0433  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0437  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0422 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v18 */
    /* JADX WARN: Type inference failed for: r14v19 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v20 */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v5, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r28v12 */
    /* JADX WARN: Type inference failed for: r28v13 */
    /* JADX WARN: Type inference failed for: r28v19 */
    /* JADX WARN: Type inference failed for: r28v20 */
    /* JADX WARN: Type inference failed for: r28v23 */
    /* JADX WARN: Type inference failed for: r28v24 */
    /* JADX WARN: Type inference failed for: r28v25 */
    /* JADX WARN: Type inference failed for: r28v26, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r28v27 */
    /* JADX WARN: Type inference failed for: r28v28, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r28v29 */
    /* JADX WARN: Type inference failed for: r28v30 */
    /* JADX WARN: Type inference failed for: r28v31 */
    /* JADX WARN: Type inference failed for: r28v32 */
    /* JADX WARN: Type inference failed for: r28v9 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v39, types: [net.lingala.zip4j.model.LocalFileHeader] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r2v60 */
    /* JADX WARN: Type inference failed for: r2v62 */
    /* JADX WARN: Type inference failed for: r2v65, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v66 */
    /* JADX WARN: Type inference failed for: r2v67 */
    /* JADX WARN: Type inference failed for: r2v70 */
    /* JADX WARN: Type inference failed for: r2v77 */
    /* JADX WARN: Type inference failed for: r2v78 */
    /* JADX WARN: Type inference failed for: r2v79 */
    /* JADX WARN: Type inference failed for: r2v80 */
    /* JADX WARN: Type inference failed for: r2v81 */
    /* JADX WARN: Type inference failed for: r2v82 */
    /* JADX WARN: Type inference failed for: r32v0, types: [net.lingala.zip4j.util.ArchiveMaintainer] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v23, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v41 */
    /* JADX WARN: Type inference failed for: r4v49 */
    /* JADX WARN: Type inference failed for: r4v55 */
    /* JADX WARN: Type inference failed for: r4v56 */
    /* JADX WARN: Type inference failed for: r4v57 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.HashMap f(net.lingala.zip4j.model.ZipModel r33, net.lingala.zip4j.model.FileHeader r34, net.lingala.zip4j.progress.ProgressMonitor r35) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1098
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: net.lingala.zip4j.util.ArchiveMaintainer.f(net.lingala.zip4j.model.ZipModel, net.lingala.zip4j.model.FileHeader, net.lingala.zip4j.progress.ProgressMonitor):java.util.HashMap");
    }
}
