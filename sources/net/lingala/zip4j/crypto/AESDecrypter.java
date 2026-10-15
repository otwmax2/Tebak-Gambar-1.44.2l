package net.lingala.zip4j.crypto;

import java.util.Arrays;
import net.lingala.zip4j.crypto.PBKDF2.MacBasedPRF;
import net.lingala.zip4j.crypto.PBKDF2.PBKDF2Engine;
import net.lingala.zip4j.crypto.PBKDF2.PBKDF2Parameters;
import net.lingala.zip4j.crypto.engine.AESEngine;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.AESExtraDataRecord;
import net.lingala.zip4j.model.LocalFileHeader;
import net.lingala.zip4j.util.Raw;

/* JADX INFO: loaded from: classes2.dex */
public class AESDecrypter implements IDecrypter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LocalFileHeader f32554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AESEngine f32555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private MacBasedPRF f32556c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f32558e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f32559f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f32560g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private byte[] f32561h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private byte[] f32562i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private byte[] f32563j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f32564k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private byte[] f32566m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private byte[] f32567n;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f32557d = 2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f32565l = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f32568o = 0;

    public AESDecrypter(LocalFileHeader localFileHeader, byte[] bArr, byte[] bArr2) throws ZipException {
        if (localFileHeader == null) {
            throw new ZipException("one of the input parameters is null in AESDecryptor Constructor");
        }
        this.f32554a = localFileHeader;
        this.f32564k = null;
        this.f32566m = new byte[16];
        this.f32567n = new byte[16];
        g(bArr, bArr2);
    }

    private byte[] b(byte[] bArr, char[] cArr) throws ZipException {
        try {
            return new PBKDF2Engine(new PBKDF2Parameters("HmacSHA1", "ISO-8859-1", bArr, 1000)).f(cArr, this.f32558e + this.f32559f + 2);
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    private void g(byte[] bArr, byte[] bArr2) throws ZipException {
        LocalFileHeader localFileHeader = this.f32554a;
        if (localFileHeader == null) {
            throw new ZipException("invalid file header in init method of AESDecryptor");
        }
        AESExtraDataRecord aESExtraDataRecordA = localFileHeader.a();
        if (aESExtraDataRecordA == null) {
            throw new ZipException("invalid aes extra data record - in init method of AESDecryptor");
        }
        int iA = aESExtraDataRecordA.a();
        if (iA == 1) {
            this.f32558e = 16;
            this.f32559f = 16;
            this.f32560g = 8;
        } else if (iA == 2) {
            this.f32558e = 24;
            this.f32559f = 24;
            this.f32560g = 12;
        } else {
            if (iA != 3) {
                throw new ZipException("invalid aes key strength for file: " + this.f32554a.h());
            }
            this.f32558e = 32;
            this.f32559f = 32;
            this.f32560g = 16;
        }
        if (this.f32554a.m() == null || this.f32554a.m().length <= 0) {
            throw new ZipException("empty or null password provided for AES Decryptor");
        }
        byte[] bArrB = b(bArr, this.f32554a.m());
        if (bArrB != null) {
            int length = bArrB.length;
            int i10 = this.f32558e;
            int i11 = this.f32559f;
            if (length == i10 + i11 + 2) {
                byte[] bArr3 = new byte[i10];
                this.f32561h = bArr3;
                this.f32562i = new byte[i11];
                this.f32563j = new byte[2];
                System.arraycopy(bArrB, 0, bArr3, 0, i10);
                System.arraycopy(bArrB, this.f32558e, this.f32562i, 0, this.f32559f);
                System.arraycopy(bArrB, this.f32558e + this.f32559f, this.f32563j, 0, 2);
                byte[] bArr4 = this.f32563j;
                if (bArr4 == null) {
                    throw new ZipException("invalid derived password verifier for AES");
                }
                if (!Arrays.equals(bArr2, bArr4)) {
                    throw new ZipException("Wrong Password for file: " + this.f32554a.h(), 5);
                }
                this.f32555b = new AESEngine(this.f32561h);
                MacBasedPRF macBasedPRF = new MacBasedPRF("HmacSHA1");
                this.f32556c = macBasedPRF;
                macBasedPRF.c(this.f32562i);
                return;
            }
        }
        throw new ZipException("invalid derived key");
    }

    @Override // net.lingala.zip4j.crypto.IDecrypter
    public int a(byte[] bArr, int i10, int i11) throws ZipException {
        if (this.f32555b == null) {
            throw new ZipException("AES not initialized properly");
        }
        int i12 = i10;
        while (true) {
            int i13 = i10 + i11;
            if (i12 >= i13) {
                return i11;
            }
            int i14 = i12 + 16;
            int i15 = i14 <= i13 ? 16 : i13 - i12;
            try {
                this.f32568o = i15;
                this.f32556c.e(bArr, i12, i15);
                Raw.d(this.f32566m, this.f32565l, 16);
                this.f32555b.e(this.f32566m, this.f32567n);
                for (int i16 = 0; i16 < this.f32568o; i16++) {
                    int i17 = i12 + i16;
                    bArr[i17] = (byte) (bArr[i17] ^ this.f32567n[i16]);
                }
                this.f32565l++;
                i12 = i14;
            } catch (ZipException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new ZipException(e11);
            }
        }
    }

    public byte[] c() {
        return this.f32556c.d();
    }

    public int d() {
        return 2;
    }

    public int e() {
        return this.f32560g;
    }

    public byte[] f() {
        return this.f32564k;
    }

    public void h(byte[] bArr) {
        this.f32564k = bArr;
    }
}
