package net.lingala.zip4j.crypto.PBKDF2;

/* JADX INFO: loaded from: classes2.dex */
public class PBKDF2Parameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected byte[] f32591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f32592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f32593c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f32594d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected byte[] f32595e;

    public PBKDF2Parameters() {
        this.f32593c = null;
        this.f32594d = "UTF-8";
        this.f32591a = null;
        this.f32592b = 1000;
        this.f32595e = null;
    }

    public String a() {
        return this.f32593c;
    }

    public int b() {
        return this.f32592b;
    }

    public byte[] c() {
        return this.f32591a;
    }

    public PBKDF2Parameters(String str, String str2, byte[] bArr, int i10) {
        this.f32593c = str;
        this.f32594d = str2;
        this.f32591a = bArr;
        this.f32592b = i10;
        this.f32595e = null;
    }
}
