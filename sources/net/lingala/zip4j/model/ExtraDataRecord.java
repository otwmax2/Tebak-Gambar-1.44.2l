package net.lingala.zip4j.model;

/* JADX INFO: loaded from: classes2.dex */
public class ExtraDataRecord {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f32664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f32665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f32666c;

    public byte[] a() {
        return this.f32666c;
    }

    public long b() {
        return this.f32664a;
    }

    public int c() {
        return this.f32665b;
    }

    public void d(byte[] bArr) {
        this.f32666c = bArr;
    }

    public void e(long j10) {
        this.f32664a = j10;
    }

    public void f(int i10) {
        this.f32665b = i10;
    }
}
