package net.lingala.zip4j.unzip;

import java.io.File;
import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.io.ZipInputStream;
import net.lingala.zip4j.model.CentralDirectory;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.UnzipParameters;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.progress.ProgressMonitor;
import net.lingala.zip4j.util.InternalZipConstants;
import net.lingala.zip4j.util.Zip4jUtil;

/* JADX INFO: loaded from: classes2.dex */
public class Unzip {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ZipModel f32772a;

    /* JADX INFO: renamed from: net.lingala.zip4j.unzip.Unzip$2, reason: invalid class name */
    class AnonymousClass2 extends Thread {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ FileHeader f32778o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ String f32779p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ UnzipParameters f32780q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ String f32781r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        final /* synthetic */ ProgressMonitor f32782s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ Unzip f32783t;

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            try {
                this.f32783t.h(this.f32778o, this.f32779p, this.f32780q, this.f32781r, this.f32782s);
                this.f32782s.b();
            } catch (ZipException unused) {
            }
        }
    }

    public Unzip(ZipModel zipModel) throws ZipException {
        if (zipModel == null) {
            throw new ZipException("ZipModel is null");
        }
        this.f32772a = zipModel;
    }

    private long c(ArrayList arrayList) throws ZipException {
        if (arrayList == null) {
            throw new ZipException("fileHeaders is null, cannot calculate total work");
        }
        long jB = 0;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            FileHeader fileHeader = (FileHeader) arrayList.get(i10);
            jB += (fileHeader.u() == null || fileHeader.u().d() <= 0) ? fileHeader.b() : fileHeader.u().a();
        }
        return jB;
    }

    private void d(FileHeader fileHeader, String str, String str2) throws ZipException {
        if (fileHeader == null || !Zip4jUtil.u(str)) {
            throw new ZipException("Cannot check output directory structure...one of the parameters was null");
        }
        String strK = fileHeader.k();
        if (!Zip4jUtil.u(str2)) {
            str2 = strK;
        }
        if (Zip4jUtil.u(str2)) {
            try {
                File file = new File(new File(str + str2).getParent());
                if (file.exists()) {
                    return;
                }
                file.mkdirs();
            } catch (Exception e10) {
                throw new ZipException(e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(ArrayList arrayList, UnzipParameters unzipParameters, ProgressMonitor progressMonitor, String str) throws Throwable {
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            h((FileHeader) arrayList.get(i10), str, unzipParameters, null, progressMonitor);
            if (progressMonitor.d()) {
                progressMonitor.h(3);
                progressMonitor.i(0);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(FileHeader fileHeader, String str, UnzipParameters unzipParameters, String str2, ProgressMonitor progressMonitor) throws Throwable {
        if (fileHeader == null) {
            throw new ZipException("fileHeader is null");
        }
        try {
            progressMonitor.g(fileHeader.k());
            String str3 = InternalZipConstants.f32799b;
            if (!str.endsWith(str3)) {
                str = str + str3;
            }
            if (!fileHeader.v()) {
                d(fileHeader, str, str2);
                try {
                    new UnzipEngine(this.f32772a, fileHeader).t(progressMonitor, str, str2, unzipParameters);
                    return;
                } catch (Exception e10) {
                    progressMonitor.a(e10);
                    throw new ZipException(e10);
                }
            }
            try {
                String strK = fileHeader.k();
                if (Zip4jUtil.u(strK)) {
                    File file = new File(str + strK);
                    if (file.exists()) {
                        return;
                    }
                    file.mkdirs();
                }
            } catch (Exception e11) {
                progressMonitor.a(e11);
                throw new ZipException(e11);
            }
        } catch (ZipException e12) {
            progressMonitor.a(e12);
            throw e12;
        } catch (Exception e13) {
            progressMonitor.a(e13);
            throw new ZipException(e13);
        }
    }

    public void e(final UnzipParameters unzipParameters, final String str, final ProgressMonitor progressMonitor, boolean z10) throws ZipException {
        CentralDirectory centralDirectoryA = this.f32772a.a();
        if (centralDirectoryA == null || centralDirectoryA.a() == null) {
            throw new ZipException("invalid central directory in zipModel");
        }
        final ArrayList arrayListA = centralDirectoryA.a();
        progressMonitor.f(1);
        progressMonitor.j(c(arrayListA));
        progressMonitor.i(1);
        if (z10) {
            new Thread("Zip4j") { // from class: net.lingala.zip4j.unzip.Unzip.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws Throwable {
                    try {
                        Unzip.this.g(arrayListA, unzipParameters, progressMonitor, str);
                        progressMonitor.b();
                    } catch (ZipException unused) {
                    }
                }
            }.start();
        } else {
            g(arrayListA, unzipParameters, progressMonitor, str);
        }
    }

    public ZipInputStream f(FileHeader fileHeader) throws ZipException {
        return new UnzipEngine(this.f32772a, fileHeader).k();
    }
}
