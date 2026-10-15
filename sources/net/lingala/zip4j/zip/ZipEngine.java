package net.lingala.zip4j.zip;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.HashMap;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.EndCentralDirRecord;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.model.ZipParameters;
import net.lingala.zip4j.progress.ProgressMonitor;
import net.lingala.zip4j.util.ArchiveMaintainer;
import net.lingala.zip4j.util.Zip4jUtil;

/* JADX INFO: loaded from: classes2.dex */
public class ZipEngine {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ZipModel f32800a;

    /* JADX INFO: renamed from: net.lingala.zip4j.zip.ZipEngine$1, reason: invalid class name */
    class AnonymousClass1 extends Thread {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ ArrayList f32801o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ ZipParameters f32802p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ ProgressMonitor f32803q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ ZipEngine f32804r;

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            try {
                this.f32804r.d(this.f32801o, this.f32802p, this.f32803q);
            } catch (ZipException unused) {
            }
        }
    }

    private void b(ZipParameters zipParameters) throws ZipException {
        if (zipParameters == null) {
            throw new ZipException("cannot validate zip parameters");
        }
        if (zipParameters.d() != 0 && zipParameters.d() != 8) {
            throw new ZipException("unsupported compression type");
        }
        if (zipParameters.d() == 8 && zipParameters.b() < 0 && zipParameters.b() > 9) {
            throw new ZipException("invalid compression level. compression level dor deflate should be in the range of 0-9");
        }
        if (!zipParameters.m()) {
            zipParameters.o(-1);
            zipParameters.r(-1);
        } else {
            if (zipParameters.g() != 0 && zipParameters.g() != 99) {
                throw new ZipException("unsupported encryption method");
            }
            if (zipParameters.i() == null || zipParameters.i().length <= 0) {
                throw new ZipException("input password is empty or null");
            }
        }
    }

    private EndCentralDirRecord c() {
        EndCentralDirRecord endCentralDirRecord = new EndCentralDirRecord();
        endCentralDirRecord.p(101010256L);
        endCentralDirRecord.m(0);
        endCentralDirRecord.r(0);
        endCentralDirRecord.s(0);
        endCentralDirRecord.o(0L);
        return endCentralDirRecord;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0127, code lost:
    
        r15.h(3);
        r15.i(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x012d, code lost:
    
        r5.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0186 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x017f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:148:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(java.util.ArrayList r13, net.lingala.zip4j.model.ZipParameters r14, net.lingala.zip4j.progress.ProgressMonitor r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 412
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: net.lingala.zip4j.zip.ZipEngine.d(java.util.ArrayList, net.lingala.zip4j.model.ZipParameters, net.lingala.zip4j.progress.ProgressMonitor):void");
    }

    private RandomAccessFile e() throws ZipException {
        String strJ = this.f32800a.j();
        if (!Zip4jUtil.u(strJ)) {
            throw new ZipException("invalid output path");
        }
        try {
            File file = new File(strJ);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            return new RandomAccessFile(file, "rw");
        } catch (FileNotFoundException e10) {
            throw new ZipException(e10);
        }
    }

    private void f(ArrayList arrayList, ZipParameters zipParameters, ProgressMonitor progressMonitor) throws ZipException {
        ZipModel zipModel = this.f32800a;
        if (zipModel == null || zipModel.a() == null || this.f32800a.a().a() == null || this.f32800a.a().a().size() <= 0) {
            return;
        }
        RandomAccessFile randomAccessFileE = null;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            try {
                try {
                    FileHeader fileHeaderM = Zip4jUtil.m(this.f32800a, Zip4jUtil.s(((File) arrayList.get(i10)).getAbsolutePath(), zipParameters.j(), zipParameters.f()));
                    if (fileHeaderM != null) {
                        if (randomAccessFileE != null) {
                            randomAccessFileE.close();
                            randomAccessFileE = null;
                        }
                        ArchiveMaintainer archiveMaintainer = new ArchiveMaintainer();
                        progressMonitor.f(2);
                        HashMap mapF = archiveMaintainer.f(this.f32800a, fileHeaderM, progressMonitor);
                        if (progressMonitor.d()) {
                            progressMonitor.h(3);
                            progressMonitor.i(0);
                            if (randomAccessFileE != null) {
                                try {
                                    randomAccessFileE.close();
                                    return;
                                } catch (IOException unused) {
                                    return;
                                }
                            }
                            return;
                        }
                        progressMonitor.f(0);
                        if (randomAccessFileE == null) {
                            randomAccessFileE = e();
                            if (mapF != null && mapF.get("offsetCentralDir") != null) {
                                try {
                                    long j10 = Long.parseLong((String) mapF.get("offsetCentralDir"));
                                    if (j10 >= 0) {
                                        randomAccessFileE.seek(j10);
                                    }
                                } catch (NumberFormatException unused2) {
                                    throw new ZipException("NumberFormatException while parsing offset central directory. Cannot update already existing file header");
                                } catch (Exception unused3) {
                                    throw new ZipException("Error while parsing offset central directory. Cannot update already existing file header");
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                } catch (IOException e10) {
                    throw new ZipException(e10);
                }
            } catch (Throwable th) {
                if (randomAccessFileE != null) {
                    try {
                        randomAccessFileE.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        }
        if (randomAccessFileE != null) {
            try {
                randomAccessFileE.close();
            } catch (IOException unused5) {
            }
        }
    }
}
