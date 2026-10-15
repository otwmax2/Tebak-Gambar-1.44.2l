package net.lingala.zip4j.io;

import com.vungle.mediation.BuildConfig;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.util.Raw;
import net.lingala.zip4j.util.Zip4jUtil;

/* JADX INFO: loaded from: classes2.dex */
public class SplitOutputStream extends OutputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private RandomAccessFile f32637o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f32638p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private File f32639q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private File f32640r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f32641s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f32642t;

    public SplitOutputStream(File file) throws ZipException, FileNotFoundException {
        this(file, -1L);
    }

    private boolean g(byte[] bArr) {
        if (bArr != null && bArr.length >= 4) {
            int iE = Raw.e(bArr, 0);
            long[] jArrI = Zip4jUtil.i();
            if (jArrI != null && jArrI.length > 0) {
                for (int i10 = 0; i10 < jArrI.length; i10++) {
                    if (jArrI[i10] != 134695760 && jArrI[i10] == iE) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private void j() throws IOException {
        String str;
        File file;
        try {
            String strT = Zip4jUtil.t(this.f32640r.getName());
            String absolutePath = this.f32639q.getAbsolutePath();
            if (this.f32640r.getParent() == null) {
                str = BuildConfig.FLAVOR;
            } else {
                str = this.f32640r.getParent() + System.getProperty("file.separator");
            }
            if (this.f32641s < 9) {
                file = new File(str + strT + ".z0" + (this.f32641s + 1));
            } else {
                file = new File(str + strT + ".z" + (this.f32641s + 1));
            }
            this.f32637o.close();
            if (file.exists()) {
                throw new IOException("split file: " + file.getName() + " already exists in the current directory, cannot rename this file");
            }
            if (!this.f32639q.renameTo(file)) {
                throw new IOException("cannot rename newly created split file");
            }
            this.f32639q = new File(absolutePath);
            this.f32637o = new RandomAccessFile(this.f32639q, "rw");
            this.f32641s++;
        } catch (ZipException e10) {
            throw new IOException(e10.getMessage());
        }
    }

    public boolean b(int i10) throws ZipException {
        if (i10 < 0) {
            throw new ZipException("negative buffersize for checkBuffSizeAndStartNextSplitFile");
        }
        if (f(i10)) {
            return false;
        }
        try {
            j();
            this.f32642t = 0L;
            return true;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    public int c() {
        return this.f32641s;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        RandomAccessFile randomAccessFile = this.f32637o;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
    }

    public long d() throws IOException {
        return this.f32637o.getFilePointer();
    }

    public long e() {
        return this.f32638p;
    }

    public boolean f(int i10) throws ZipException {
        if (i10 < 0) {
            throw new ZipException("negative buffersize for isBuffSizeFitForCurrSplitFile");
        }
        long j10 = this.f32638p;
        return j10 < 65536 || this.f32642t + ((long) i10) <= j10;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
    }

    public boolean h() {
        return this.f32638p != -1;
    }

    public void i(long j10) throws IOException {
        this.f32637o.seek(j10);
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    public SplitOutputStream(File file, long j10) throws ZipException, FileNotFoundException {
        if (j10 >= 0 && j10 < 65536) {
            throw new ZipException("split length less than minimum allowed split length of 65536 Bytes");
        }
        this.f32637o = new RandomAccessFile(file, "rw");
        this.f32638p = j10;
        this.f32640r = file;
        this.f32639q = file;
        this.f32641s = 0;
        this.f32642t = 0L;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 <= 0) {
            return;
        }
        long j10 = this.f32638p;
        if (j10 == -1) {
            this.f32637o.write(bArr, i10, i11);
            this.f32642t += (long) i11;
            return;
        }
        if (j10 >= 65536) {
            long j11 = this.f32642t;
            if (j11 >= j10) {
                j();
                this.f32637o.write(bArr, i10, i11);
                this.f32642t = i11;
                return;
            }
            long j12 = i11;
            if (j11 + j12 > j10) {
                if (g(bArr)) {
                    j();
                    this.f32637o.write(bArr, i10, i11);
                    this.f32642t = j12;
                    return;
                }
                this.f32637o.write(bArr, i10, (int) (this.f32638p - this.f32642t));
                j();
                RandomAccessFile randomAccessFile = this.f32637o;
                long j13 = this.f32638p;
                long j14 = this.f32642t;
                randomAccessFile.write(bArr, i10 + ((int) (j13 - j14)), (int) (j12 - (j13 - j14)));
                this.f32642t = j12 - (this.f32638p - this.f32642t);
                return;
            }
            this.f32637o.write(bArr, i10, i11);
            this.f32642t += j12;
            return;
        }
        throw new IOException("split length less than minimum allowed split length of 65536 Bytes");
    }
}
