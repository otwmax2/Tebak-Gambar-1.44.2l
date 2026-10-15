package net.lingala.zip4j.crypto;

import net.lingala.zip4j.crypto.engine.ZipCryptoEngine;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.FileHeader;

/* JADX INFO: loaded from: classes2.dex */
public class StandardDecrypter implements IDecrypter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private FileHeader f32596a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f32597b = new byte[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ZipCryptoEngine f32598c;

    public StandardDecrypter(FileHeader fileHeader, byte[] bArr) throws ZipException {
        if (fileHeader == null) {
            throw new ZipException("one of more of the input parameters were null in StandardDecryptor");
        }
        this.f32596a = fileHeader;
        this.f32598c = new ZipCryptoEngine();
        b(bArr);
    }

    @Override // net.lingala.zip4j.crypto.IDecrypter
    public int a(byte[] bArr, int i10, int i11) throws ZipException {
        if (i10 < 0 || i11 < 0) {
            throw new ZipException("one of the input parameters were null in standard decrpyt data");
        }
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            try {
                byte b10 = (byte) (((bArr[i12] & 255) ^ this.f32598c.b()) & 255);
                this.f32598c.d(b10);
                bArr[i12] = b10;
            } catch (Exception e10) {
                throw new ZipException(e10);
            }
        }
        return i11;
    }

    public void b(byte[] bArr) throws ZipException {
        byte[] bArrE = this.f32596a.e();
        byte[] bArr2 = this.f32597b;
        bArr2[3] = (byte) (bArrE[3] & 255);
        bArr2[2] = (byte) ((bArrE[3] >> 8) & 255);
        bArr2[1] = (byte) ((bArrE[3] >> 16) & 255);
        int i10 = 0;
        bArr2[0] = (byte) ((bArrE[3] >> 24) & 255);
        if (bArr2[2] > 0 || bArr2[1] > 0 || bArr2[0] > 0) {
            throw new IllegalStateException("Invalid CRC in File Header");
        }
        if (this.f32596a.p() == null || this.f32596a.p().length <= 0) {
            throw new ZipException("Wrong password!", 5);
        }
        this.f32598c.c(this.f32596a.p());
        try {
            byte b10 = bArr[0];
            while (i10 < 12) {
                ZipCryptoEngine zipCryptoEngine = this.f32598c;
                zipCryptoEngine.d((byte) (zipCryptoEngine.b() ^ b10));
                i10++;
                if (i10 != 12) {
                    b10 = bArr[i10];
                }
            }
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }
}
