package net.lingala.zip4j.crypto;

import java.util.Random;
import net.lingala.zip4j.crypto.PBKDF2.MacBasedPRF;
import net.lingala.zip4j.crypto.PBKDF2.PBKDF2Engine;
import net.lingala.zip4j.crypto.PBKDF2.PBKDF2Parameters;
import net.lingala.zip4j.crypto.engine.AESEngine;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.util.Raw;

/* JADX INFO: loaded from: classes2.dex */
public class AESEncrpyter implements IEncrypter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f32569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f32570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AESEngine f32571c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MacBasedPRF f32572d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f32573e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f32574f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f32575g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private byte[] f32577i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private byte[] f32578j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f32579k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private byte[] f32580l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f32581m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private byte[] f32584p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private byte[] f32585q;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f32576h = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f32582n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f32583o = 0;

    public AESEncrpyter(char[] cArr, int i10) throws ZipException {
        if (cArr == null || cArr.length == 0) {
            throw new ZipException("input password is empty or null in AES encrypter constructor");
        }
        if (i10 != 1 && i10 != 3) {
            throw new ZipException("Invalid key strength in AES encrypter constructor");
        }
        this.f32569a = cArr;
        this.f32570b = i10;
        this.f32581m = false;
        this.f32585q = new byte[16];
        this.f32584p = new byte[16];
        g();
    }

    private byte[] b(byte[] bArr, char[] cArr) throws ZipException {
        try {
            return new PBKDF2Engine(new PBKDF2Parameters("HmacSHA1", "ISO-8859-1", bArr, 1000)).f(cArr, this.f32573e + this.f32574f + 2);
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    private static byte[] c(int i10) throws ZipException {
        if (i10 != 8 && i10 != 16) {
            throw new ZipException("invalid salt size, cannot generate salt");
        }
        int i11 = i10 == 8 ? 2 : 0;
        if (i10 == 16) {
            i11 = 4;
        }
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i11; i12++) {
            int iNextInt = new Random().nextInt();
            int i13 = i12 * 4;
            bArr[i13 + 0] = (byte) (iNextInt >> 24);
            bArr[i13 + 1] = (byte) (iNextInt >> 16);
            bArr[i13 + 2] = (byte) (iNextInt >> 8);
            bArr[i13 + 3] = (byte) iNextInt;
        }
        return bArr;
    }

    private void g() throws ZipException {
        int i10 = this.f32570b;
        if (i10 == 1) {
            this.f32573e = 16;
            this.f32574f = 16;
            this.f32575g = 8;
        } else {
            if (i10 != 3) {
                throw new ZipException("invalid aes key strength, cannot determine key sizes");
            }
            this.f32573e = 32;
            this.f32574f = 32;
            this.f32575g = 16;
        }
        byte[] bArrC = c(this.f32575g);
        this.f32580l = bArrC;
        byte[] bArrB = b(bArrC, this.f32569a);
        if (bArrB != null) {
            int length = bArrB.length;
            int i11 = this.f32573e;
            int i12 = this.f32574f;
            if (length == i11 + i12 + 2) {
                byte[] bArr = new byte[i11];
                this.f32577i = bArr;
                this.f32578j = new byte[i12];
                this.f32579k = new byte[2];
                System.arraycopy(bArrB, 0, bArr, 0, i11);
                System.arraycopy(bArrB, this.f32573e, this.f32578j, 0, this.f32574f);
                System.arraycopy(bArrB, this.f32573e + this.f32574f, this.f32579k, 0, 2);
                this.f32571c = new AESEngine(this.f32577i);
                MacBasedPRF macBasedPRF = new MacBasedPRF("HmacSHA1");
                this.f32572d = macBasedPRF;
                macBasedPRF.c(this.f32578j);
                return;
            }
        }
        throw new ZipException("invalid key generated, cannot decrypt file");
    }

    @Override // net.lingala.zip4j.crypto.IEncrypter
    public int a(byte[] bArr, int i10, int i11) throws ZipException {
        int i12;
        if (this.f32581m) {
            throw new ZipException("AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)");
        }
        if (i11 % 16 != 0) {
            this.f32581m = true;
        }
        int i13 = i10;
        while (true) {
            int i14 = i10 + i11;
            if (i13 >= i14) {
                return i11;
            }
            int i15 = i13 + 16;
            this.f32583o = i15 <= i14 ? 16 : i14 - i13;
            Raw.d(this.f32584p, this.f32582n, 16);
            this.f32571c.e(this.f32584p, this.f32585q);
            int i16 = 0;
            while (true) {
                i12 = this.f32583o;
                if (i16 < i12) {
                    int i17 = i13 + i16;
                    bArr[i17] = (byte) (bArr[i17] ^ this.f32585q[i16]);
                    i16++;
                }
            }
            this.f32572d.e(bArr, i13, i12);
            this.f32582n++;
            i13 = i15;
        }
    }

    public byte[] d() {
        return this.f32579k;
    }

    public byte[] e() {
        byte[] bArr = new byte[10];
        System.arraycopy(this.f32572d.d(), 0, bArr, 0, 10);
        return bArr;
    }

    public byte[] f() {
        return this.f32580l;
    }
}
