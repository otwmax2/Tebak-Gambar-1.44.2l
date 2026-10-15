package net.lingala.zip4j.crypto;

import java.util.Objects;
import java.util.Random;
import net.lingala.zip4j.crypto.engine.ZipCryptoEngine;
import net.lingala.zip4j.exception.ZipException;

/* JADX INFO: loaded from: classes2.dex */
public class StandardEncrypter implements IEncrypter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ZipCryptoEngine f32599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f32600b;

    public StandardEncrypter(char[] cArr, int i10) throws ZipException {
        if (cArr == null || cArr.length <= 0) {
            throw new ZipException("input password is null or empty in standard encrpyter constructor");
        }
        this.f32599a = new ZipCryptoEngine();
        this.f32600b = new byte[12];
        f(cArr, i10);
    }

    private void f(char[] cArr, int i10) throws ZipException {
        if (cArr == null || cArr.length <= 0) {
            throw new ZipException("input password is null or empty, cannot initialize standard encrypter");
        }
        this.f32599a.c(cArr);
        this.f32600b = d(12);
        this.f32599a.c(cArr);
        byte[] bArr = this.f32600b;
        bArr[11] = (byte) (i10 >>> 24);
        bArr[10] = (byte) (i10 >>> 16);
        if (bArr.length < 12) {
            throw new ZipException("invalid header bytes generated, cannot perform standard encryption");
        }
        c(bArr);
    }

    @Override // net.lingala.zip4j.crypto.IEncrypter
    public int a(byte[] bArr, int i10, int i11) throws ZipException {
        if (i11 < 0) {
            throw new ZipException("invalid length specified to decrpyt data");
        }
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            try {
                bArr[i12] = b(bArr[i12]);
            } catch (Exception e10) {
                throw new ZipException(e10);
            }
        }
        return i11;
    }

    protected byte b(byte b10) {
        byte b11 = (byte) ((this.f32599a.b() & 255) ^ b10);
        this.f32599a.d(b10);
        return b11;
    }

    public int c(byte[] bArr) throws ZipException {
        Objects.requireNonNull(bArr);
        return a(bArr, 0, bArr.length);
    }

    protected byte[] d(int i10) throws ZipException {
        if (i10 <= 0) {
            throw new ZipException("size is either 0 or less than 0, cannot generate header for standard encryptor");
        }
        byte[] bArr = new byte[i10];
        Random random = new Random();
        for (int i11 = 0; i11 < i10; i11++) {
            bArr[i11] = b((byte) random.nextInt(256));
        }
        return bArr;
    }

    public byte[] e() {
        return this.f32600b;
    }
}
