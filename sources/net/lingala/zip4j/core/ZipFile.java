package net.lingala.zip4j.core;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.io.ZipInputStream;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.UnzipParameters;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.progress.ProgressMonitor;
import net.lingala.zip4j.unzip.Unzip;
import net.lingala.zip4j.util.Zip4jUtil;

/* JADX INFO: loaded from: classes2.dex */
public class ZipFile {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f32547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f32548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ZipModel f32549c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f32550d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ProgressMonitor f32551e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f32552f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f32553g;

    public ZipFile(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("Input zip file parameter is not null", 1);
        }
        this.f32547a = file.getPath();
        this.f32548b = 2;
        this.f32551e = new ProgressMonitor();
        this.f32552f = false;
    }

    private void a() throws Throwable {
        if (this.f32549c == null) {
            if (Zip4jUtil.b(this.f32547a)) {
                h();
            } else {
                b();
            }
        }
    }

    private void b() {
        ZipModel zipModel = new ZipModel();
        this.f32549c = zipModel;
        zipModel.v(this.f32547a);
        this.f32549c.o(this.f32553g);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void h() throws java.lang.Throwable {
        /*
            r5 = this;
            java.lang.String r0 = r5.f32547a
            boolean r0 = net.lingala.zip4j.util.Zip4jUtil.b(r0)
            if (r0 == 0) goto L68
            java.lang.String r0 = r5.f32547a
            boolean r0 = net.lingala.zip4j.util.Zip4jUtil.c(r0)
            if (r0 == 0) goto L60
            int r0 = r5.f32548b
            r1 = 2
            if (r0 != r1) goto L58
            r0 = 0
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L42 java.io.FileNotFoundException -> L47
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L42 java.io.FileNotFoundException -> L47
            java.lang.String r3 = r5.f32547a     // Catch: java.lang.Throwable -> L42 java.io.FileNotFoundException -> L47
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L42 java.io.FileNotFoundException -> L47
            java.lang.String r3 = "r"
            r1.<init>(r2, r3)     // Catch: java.lang.Throwable -> L42 java.io.FileNotFoundException -> L47
            net.lingala.zip4j.model.ZipModel r0 = r5.f32549c     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
            if (r0 != 0) goto L3c
            net.lingala.zip4j.core.HeaderReader r0 = new net.lingala.zip4j.core.HeaderReader     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
            r0.<init>(r1)     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
            java.lang.String r2 = r5.f32553g     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
            net.lingala.zip4j.model.ZipModel r0 = r0.c(r2)     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
            r5.f32549c = r0     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
            if (r0 == 0) goto L3c
            java.lang.String r2 = r5.f32547a     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
            r0.v(r2)     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
        L3c:
            r1.close()     // Catch: java.io.IOException -> L3f
        L3f:
            return
        L40:
            r0 = move-exception
            goto L4b
        L42:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L52
        L47:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L4b:
            net.lingala.zip4j.exception.ZipException r2 = new net.lingala.zip4j.exception.ZipException     // Catch: java.lang.Throwable -> L51
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L51
            throw r2     // Catch: java.lang.Throwable -> L51
        L51:
            r0 = move-exception
        L52:
            if (r1 == 0) goto L57
            r1.close()     // Catch: java.io.IOException -> L57
        L57:
            throw r0
        L58:
            net.lingala.zip4j.exception.ZipException r0 = new net.lingala.zip4j.exception.ZipException
            java.lang.String r1 = "Invalid mode"
            r0.<init>(r1)
            throw r0
        L60:
            net.lingala.zip4j.exception.ZipException r0 = new net.lingala.zip4j.exception.ZipException
            java.lang.String r1 = "no read access for the input zip file"
            r0.<init>(r1)
            throw r0
        L68:
            net.lingala.zip4j.exception.ZipException r0 = new net.lingala.zip4j.exception.ZipException
            java.lang.String r1 = "zip file does not exist"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.lingala.zip4j.core.ZipFile.h():void");
    }

    public void c(String str) throws ZipException {
        d(str, null);
    }

    public void d(String str, UnzipParameters unzipParameters) throws Throwable {
        if (!Zip4jUtil.u(str)) {
            throw new ZipException("output path is null or invalid");
        }
        if (!Zip4jUtil.d(str)) {
            throw new ZipException("invalid output path");
        }
        if (this.f32549c == null) {
            h();
        }
        if (this.f32549c == null) {
            throw new ZipException("Internal error occurred when extracting zip file");
        }
        if (this.f32551e.c() == 1) {
            throw new ZipException("invalid operation - Zip4j is in busy state");
        }
        new Unzip(this.f32549c).e(unzipParameters, str, this.f32551e, this.f32552f);
    }

    public List e() throws Throwable {
        h();
        ZipModel zipModel = this.f32549c;
        if (zipModel == null || zipModel.a() == null) {
            return null;
        }
        return this.f32549c.a().a();
    }

    public ZipInputStream f(FileHeader fileHeader) throws Throwable {
        if (fileHeader == null) {
            throw new ZipException("FileHeader is null, cannot get InputStream");
        }
        a();
        ZipModel zipModel = this.f32549c;
        if (zipModel != null) {
            return new Unzip(zipModel).f(fileHeader);
        }
        throw new ZipException("zip model is null, cannot get inputstream");
    }

    public boolean g() throws Throwable {
        if (this.f32549c == null) {
            h();
            if (this.f32549c == null) {
                throw new ZipException("Zip Model is null");
            }
        }
        if (this.f32549c.a() == null || this.f32549c.a().a() == null) {
            throw new ZipException("invalid zip file");
        }
        ArrayList arrayListA = this.f32549c.a().a();
        int i10 = 0;
        while (true) {
            if (i10 < arrayListA.size()) {
                FileHeader fileHeader = (FileHeader) arrayListA.get(i10);
                if (fileHeader != null && fileHeader.w()) {
                    this.f32550d = true;
                    break;
                }
                i10++;
            } else {
                break;
            }
        }
        return this.f32550d;
    }

    public void i(String str) throws Throwable {
        if (!Zip4jUtil.u(str)) {
            throw null;
        }
        j(str.toCharArray());
    }

    public void j(char[] cArr) throws Throwable {
        if (this.f32549c == null) {
            h();
            if (this.f32549c == null) {
                throw new ZipException("Zip Model is null");
            }
        }
        if (this.f32549c.a() == null || this.f32549c.a().a() == null) {
            throw new ZipException("invalid zip file");
        }
        for (int i10 = 0; i10 < this.f32549c.a().a().size(); i10++) {
            if (this.f32549c.a().a().get(i10) != null && ((FileHeader) this.f32549c.a().a().get(i10)).w()) {
                ((FileHeader) this.f32549c.a().a().get(i10)).T(cArr);
            }
        }
    }
}
