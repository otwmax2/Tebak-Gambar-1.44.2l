package com.google.android.gms.internal.ads;

import com.facebook.internal.NativeProtocol;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzzk implements zzzv {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzr f21193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f21194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f21195d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f21197f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f21198g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte[] f21196e = new byte[NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f21192a = new byte[4096];

    static {
        zzbh.b("media3.extractor");
    }

    public zzzk(zzr zzrVar, long j10, long j11) {
        this.f21193b = zzrVar;
        this.f21195d = j10;
        this.f21194c = j11;
    }

    private final int p(byte[] bArr, int i10, int i11) {
        int i12 = this.f21198g;
        if (i12 == 0) {
            return 0;
        }
        int iMin = Math.min(i12, i11);
        System.arraycopy(this.f21196e, 0, bArr, i10, iMin);
        u(iMin);
        return iMin;
    }

    private final int q(byte[] bArr, int i10, int i11, int i12, boolean z10) throws IOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int iE = this.f21193b.e(bArr, i10 + i12, i11 - i12);
        if (iE != -1) {
            return i12 + iE;
        }
        if (i12 == 0 && z10) {
            return -1;
        }
        throw new EOFException();
    }

    private final int r(int i10) {
        int iMin = Math.min(this.f21198g, i10);
        u(iMin);
        return iMin;
    }

    private final void s(int i10) {
        if (i10 != -1) {
            this.f21195d += (long) i10;
        }
    }

    private final void t(int i10) {
        int i11 = this.f21197f + i10;
        int length = this.f21196e.length;
        if (i11 > length) {
            this.f21196e = Arrays.copyOf(this.f21196e, zzew.Q(length + length, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST + i11, i11 + 524288));
        }
    }

    private final void u(int i10) {
        int i11 = this.f21198g - i10;
        this.f21198g = i11;
        this.f21197f = 0;
        byte[] bArr = this.f21196e;
        byte[] bArr2 = i11 < bArr.length + (-524288) ? new byte[NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST + i11] : bArr;
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        this.f21196e = bArr2;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final int Z(int i10) throws IOException {
        int iR = r(1);
        if (iR == 0) {
            iR = q(this.f21192a, 0, Math.min(1, 4096), 0, true);
        }
        s(iR);
        return iR;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final long b() {
        return this.f21195d + ((long) this.f21197f);
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final long c() {
        return this.f21195d;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final long d() {
        return this.f21194c;
    }

    @Override // com.google.android.gms.internal.ads.zzzv, com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) throws IOException {
        int iP = p(bArr, i10, i11);
        if (iP == 0) {
            iP = q(bArr, i10, i11, 0, true);
        }
        s(iP);
        return iP;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final boolean g(byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        int iP = p(bArr, i10, i11);
        while (iP < i11 && iP != -1) {
            iP = q(bArr, i10, i11, iP, z10);
        }
        s(iP);
        return iP != -1;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final void h() {
        this.f21197f = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final int i(byte[] bArr, int i10, int i11) throws IOException {
        int iMin;
        t(i11);
        int i12 = this.f21198g;
        int i13 = this.f21197f;
        int i14 = i12 - i13;
        if (i14 == 0) {
            iMin = q(this.f21196e, i13, i11, 0, true);
            if (iMin == -1) {
                return -1;
            }
            this.f21198g += iMin;
        } else {
            iMin = Math.min(i11, i14);
        }
        System.arraycopy(this.f21196e, this.f21197f, bArr, i10, iMin);
        this.f21197f += iMin;
        return iMin;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final boolean k(byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        if (!n(i11, z10)) {
            return false;
        }
        System.arraycopy(this.f21196e, this.f21197f - i11, bArr, i10, i11);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final void l(byte[] bArr, int i10, int i11) throws IOException {
        g(bArr, i10, i11, false);
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final void m(byte[] bArr, int i10, int i11) throws IOException {
        k(bArr, i10, i11, false);
    }

    public final boolean n(int i10, boolean z10) throws IOException {
        t(i10);
        int iQ = this.f21198g - this.f21197f;
        while (iQ < i10) {
            iQ = q(this.f21196e, this.f21197f, i10, iQ, z10);
            if (iQ == -1) {
                return false;
            }
            this.f21198g = this.f21197f + iQ;
        }
        this.f21197f += i10;
        return true;
    }

    public final boolean o(int i10, boolean z10) throws IOException {
        int iR = r(i10);
        while (iR < i10 && iR != -1) {
            iR = q(this.f21192a, -iR, Math.min(i10, iR + 4096), iR, false);
        }
        s(iR);
        return iR != -1;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final void r0(int i10) throws IOException {
        o(i10, false);
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final void w(int i10) throws IOException {
        n(i10, false);
    }
}
