package net.lingala.zip4j.exception;

/* JADX INFO: loaded from: classes2.dex */
public class ZipException extends Exception {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f32612o;

    public ZipException() {
        this.f32612o = -1;
    }

    public ZipException(String str) {
        super(str);
        this.f32612o = -1;
    }

    public ZipException(String str, Throwable th) {
        super(str, th);
        this.f32612o = -1;
    }

    public ZipException(String str, int i10) {
        super(str);
        this.f32612o = -1;
        this.f32612o = i10;
    }

    public ZipException(String str, Throwable th, int i10) {
        super(str, th);
        this.f32612o = -1;
        this.f32612o = i10;
    }

    public ZipException(Throwable th) {
        super(th);
        this.f32612o = -1;
    }
}
