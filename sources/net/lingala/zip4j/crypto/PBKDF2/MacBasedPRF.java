package net.lingala.zip4j.crypto.PBKDF2;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class MacBasedPRF implements PRF {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Mac f32586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f32587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f32588c;

    public MacBasedPRF(String str) {
        this.f32588c = str;
        try {
            Mac mac = Mac.getInstance(str);
            this.f32586a = mac;
            this.f32587b = mac.getMacLength();
        } catch (NoSuchAlgorithmException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // net.lingala.zip4j.crypto.PBKDF2.PRF
    public byte[] a(byte[] bArr) {
        return this.f32586a.doFinal(bArr);
    }

    @Override // net.lingala.zip4j.crypto.PBKDF2.PRF
    public int b() {
        return this.f32587b;
    }

    @Override // net.lingala.zip4j.crypto.PBKDF2.PRF
    public void c(byte[] bArr) {
        try {
            this.f32586a.init(new SecretKeySpec(bArr, this.f32588c));
        } catch (InvalidKeyException e10) {
            throw new RuntimeException(e10);
        }
    }

    public byte[] d() {
        return this.f32586a.doFinal();
    }

    public void e(byte[] bArr, int i10, int i11) {
        try {
            this.f32586a.update(bArr, i10, i11);
        } catch (IllegalStateException e10) {
            throw new RuntimeException(e10);
        }
    }
}
