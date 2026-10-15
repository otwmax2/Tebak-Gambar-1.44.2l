package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzpm extends zzdf {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f20413i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f20414j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f20415k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private byte[] f20416l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f20417m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f20418n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f20419o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f20420p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f20421q;

    public zzpm() {
        byte[] bArr = zzew.f17499f;
        this.f20415k = bArr;
        this.f20416l = bArr;
    }

    private final int p(long j10) {
        return (int) ((j10 * ((long) this.f14473b.f14339a)) / 1000000);
    }

    private final int q(ByteBuffer byteBuffer) {
        for (int iPosition = byteBuffer.position(); iPosition < byteBuffer.limit(); iPosition += 2) {
            if (Math.abs((int) byteBuffer.getShort(iPosition)) > 1024) {
                int i10 = this.f20413i;
                return i10 * (iPosition / i10);
            }
        }
        return byteBuffer.limit();
    }

    private final void r(byte[] bArr, int i10) {
        i(i10).put(bArr, 0, i10).flip();
        if (i10 > 0) {
            this.f20420p = true;
        }
    }

    private final void s(ByteBuffer byteBuffer, byte[] bArr, int i10) {
        int iMin = Math.min(byteBuffer.remaining(), this.f20419o);
        int i11 = this.f20419o - iMin;
        System.arraycopy(bArr, i10 - i11, this.f20416l, 0, i11);
        byteBuffer.position(byteBuffer.limit() - iMin);
        byteBuffer.get(this.f20416l, i11, iMin);
    }

    @Override // com.google.android.gms.internal.ads.zzdf, com.google.android.gms.internal.ads.zzde
    public final boolean e() {
        return this.f20414j;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void g(ByteBuffer byteBuffer) {
        int iPosition;
        while (byteBuffer.hasRemaining() && !m()) {
            int i10 = this.f20417m;
            if (i10 == 0) {
                int iLimit = byteBuffer.limit();
                byteBuffer.limit(Math.min(iLimit, byteBuffer.position() + this.f20415k.length));
                int iLimit2 = byteBuffer.limit();
                while (true) {
                    iLimit2 -= 2;
                    if (iLimit2 < byteBuffer.position()) {
                        iPosition = byteBuffer.position();
                        break;
                    } else if (Math.abs((int) byteBuffer.getShort(iLimit2)) > 1024) {
                        int i11 = this.f20413i;
                        iPosition = ((iLimit2 / i11) * i11) + i11;
                        break;
                    }
                }
                if (iPosition == byteBuffer.position()) {
                    this.f20417m = 1;
                } else {
                    byteBuffer.limit(iPosition);
                    int iRemaining = byteBuffer.remaining();
                    i(iRemaining).put(byteBuffer).flip();
                    if (iRemaining > 0) {
                        this.f20420p = true;
                    }
                }
                byteBuffer.limit(iLimit);
            } else if (i10 != 1) {
                int iLimit3 = byteBuffer.limit();
                int iQ = q(byteBuffer);
                byteBuffer.limit(iQ);
                this.f20421q += (long) (byteBuffer.remaining() / this.f20413i);
                s(byteBuffer, this.f20416l, this.f20419o);
                if (iQ < iLimit3) {
                    r(this.f20416l, this.f20419o);
                    this.f20417m = 0;
                    byteBuffer.limit(iLimit3);
                }
            } else {
                int iLimit4 = byteBuffer.limit();
                int iQ2 = q(byteBuffer);
                int iPosition2 = iQ2 - byteBuffer.position();
                byte[] bArr = this.f20415k;
                int length = bArr.length;
                int i12 = this.f20418n;
                int i13 = length - i12;
                if (iQ2 >= iLimit4 || iPosition2 >= i13) {
                    int iMin = Math.min(iPosition2, i13);
                    byteBuffer.limit(byteBuffer.position() + iMin);
                    byteBuffer.get(this.f20415k, this.f20418n, iMin);
                    int i14 = this.f20418n + iMin;
                    this.f20418n = i14;
                    byte[] bArr2 = this.f20415k;
                    if (i14 == bArr2.length) {
                        if (this.f20420p) {
                            r(bArr2, this.f20419o);
                            long j10 = this.f20421q;
                            int i15 = this.f20418n;
                            int i16 = this.f20419o;
                            this.f20421q = j10 + ((long) ((i15 - (i16 + i16)) / this.f20413i));
                            i14 = i15;
                        } else {
                            this.f20421q += (long) ((i14 - this.f20419o) / this.f20413i);
                        }
                        s(byteBuffer, this.f20415k, i14);
                        this.f20418n = 0;
                        this.f20417m = 2;
                    }
                    byteBuffer.limit(iLimit4);
                } else {
                    r(bArr, i12);
                    this.f20418n = 0;
                    this.f20417m = 0;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    public final zzdc h(zzdc zzdcVar) throws zzdd {
        if (zzdcVar.f14341c == 2) {
            return this.f20414j ? zzdcVar : zzdc.f14338e;
        }
        throw new zzdd(zzdcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    protected final void j() {
        if (this.f20414j) {
            this.f20413i = this.f14473b.f14342d;
            int iP = p(150000L) * this.f20413i;
            if (this.f20415k.length != iP) {
                this.f20415k = new byte[iP];
            }
            int iP2 = p(20000L) * this.f20413i;
            this.f20419o = iP2;
            if (this.f20416l.length != iP2) {
                this.f20416l = new byte[iP2];
            }
        }
        this.f20417m = 0;
        this.f20421q = 0L;
        this.f20418n = 0;
        this.f20420p = false;
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    protected final void k() {
        int i10 = this.f20418n;
        if (i10 > 0) {
            r(this.f20415k, i10);
        }
        if (this.f20420p) {
            return;
        }
        this.f20421q += (long) (this.f20419o / this.f20413i);
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    protected final void l() {
        this.f20414j = false;
        this.f20419o = 0;
        byte[] bArr = zzew.f17499f;
        this.f20415k = bArr;
        this.f20416l = bArr;
    }

    public final long n() {
        return this.f20421q;
    }

    public final void o(boolean z10) {
        this.f20414j = z10;
    }
}
