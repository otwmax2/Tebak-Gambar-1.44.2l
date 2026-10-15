package net.lingala.zip4j.progress;

import net.lingala.zip4j.exception.ZipException;

/* JADX INFO: loaded from: classes2.dex */
public class ProgressMonitor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f32762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f32763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f32764c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f32765d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f32766e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f32767f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f32768g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Throwable f32769h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f32770i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f32771j;

    public ProgressMonitor() {
        e();
        this.f32765d = 0;
    }

    public void a(Throwable th) throws ZipException {
        e();
        this.f32768g = 2;
        this.f32769h = th;
    }

    public void b() throws ZipException {
        e();
        this.f32768g = 0;
    }

    public int c() {
        return this.f32762a;
    }

    public boolean d() {
        return this.f32770i;
    }

    public void e() {
        this.f32766e = -1;
        this.f32762a = 0;
        this.f32767f = null;
        this.f32763b = 0L;
        this.f32764c = 0L;
        this.f32765d = 0;
    }

    public void f(int i10) {
        this.f32766e = i10;
    }

    public void g(String str) {
        this.f32767f = str;
    }

    public void h(int i10) {
        this.f32768g = i10;
    }

    public void i(int i10) {
        this.f32762a = i10;
    }

    public void j(long j10) {
        this.f32763b = j10;
    }

    public void k(long j10) {
        long j11 = this.f32764c + j10;
        this.f32764c = j11;
        long j12 = this.f32763b;
        if (j12 > 0) {
            int i10 = (int) ((j11 * 100) / j12);
            this.f32765d = i10;
            if (i10 > 100) {
                this.f32765d = 100;
            }
        }
        while (this.f32771j) {
            try {
                Thread.sleep(150L);
            } catch (InterruptedException unused) {
            }
        }
    }
}
