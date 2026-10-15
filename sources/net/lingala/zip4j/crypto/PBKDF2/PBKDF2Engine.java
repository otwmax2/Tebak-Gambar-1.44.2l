package net.lingala.zip4j.crypto.PBKDF2;

import com.facebook.internal.NativeProtocol;
import java.util.Objects;
import net.lingala.zip4j.util.Raw;

/* JADX INFO: loaded from: classes2.dex */
public class PBKDF2Engine {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected PBKDF2Parameters f32589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected PRF f32590b;

    public PBKDF2Engine() {
        this.f32589a = null;
        this.f32590b = null;
    }

    protected void a(byte[] bArr, int i10, int i11) {
        bArr[i10 + 0] = (byte) (i11 / 16777216);
        bArr[i10 + 1] = (byte) (i11 / NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
        bArr[i10 + 2] = (byte) (i11 / 256);
        bArr[i10 + 3] = (byte) i11;
    }

    protected byte[] b(PRF prf, byte[] bArr, int i10, int i11) {
        byte[] bArr2 = bArr == null ? new byte[0] : bArr;
        int iB = prf.b();
        int iE = e(i11, iB);
        int i12 = i11 - ((iE - 1) * iB);
        byte[] bArr3 = new byte[iE * iB];
        int i13 = 0;
        for (int i14 = 1; i14 <= iE; i14++) {
            c(bArr3, i13, prf, bArr2, i10, i14);
            i13 += iB;
        }
        if (i12 >= iB) {
            return bArr3;
        }
        byte[] bArr4 = new byte[i11];
        System.arraycopy(bArr3, 0, bArr4, 0, i11);
        return bArr4;
    }

    protected void c(byte[] bArr, int i10, PRF prf, byte[] bArr2, int i11, int i12) {
        int iB = prf.b();
        byte[] bArr3 = new byte[iB];
        byte[] bArrA = new byte[bArr2.length + 4];
        System.arraycopy(bArr2, 0, bArrA, 0, bArr2.length);
        a(bArrA, bArr2.length, i12);
        for (int i13 = 0; i13 < i11; i13++) {
            bArrA = prf.a(bArrA);
            g(bArr3, bArrA);
        }
        System.arraycopy(bArr3, 0, bArr, i10, iB);
    }

    protected void d(byte[] bArr) {
        if (this.f32590b == null) {
            this.f32590b = new MacBasedPRF(this.f32589a.a());
        }
        this.f32590b.c(bArr);
    }

    protected int e(int i10, int i11) {
        return (i10 / i11) + (i10 % i11 > 0 ? 1 : 0);
    }

    public byte[] f(char[] cArr, int i10) {
        Objects.requireNonNull(cArr);
        d(Raw.c(cArr));
        if (i10 == 0) {
            i10 = this.f32590b.b();
        }
        return b(this.f32590b, this.f32589a.c(), this.f32589a.b(), i10);
    }

    protected void g(byte[] bArr, byte[] bArr2) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr[i10] = (byte) (bArr[i10] ^ bArr2[i10]);
        }
    }

    public PBKDF2Engine(PBKDF2Parameters pBKDF2Parameters) {
        this.f32589a = pBKDF2Parameters;
        this.f32590b = null;
    }
}
