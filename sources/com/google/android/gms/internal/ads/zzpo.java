package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzpo extends zzdf {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f20423i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f20424j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f20425k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f20426l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private byte[] f20427m = zzew.f17499f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f20428n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f20429o;

    @Override // com.google.android.gms.internal.ads.zzdf, com.google.android.gms.internal.ads.zzde
    public final boolean f() {
        return super.f() && this.f20428n == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void g(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        if (i10 == 0) {
            return;
        }
        int iMin = Math.min(i10, this.f20426l);
        this.f20429o += (long) (iMin / this.f14473b.f14342d);
        this.f20426l -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.f20426l > 0) {
            return;
        }
        int i11 = i10 - iMin;
        int length = (this.f20428n + i11) - this.f20427m.length;
        ByteBuffer byteBufferI = i(length);
        int iQ = zzew.Q(length, 0, this.f20428n);
        byteBufferI.put(this.f20427m, 0, iQ);
        int iQ2 = zzew.Q(length - iQ, 0, i11);
        byteBuffer.limit(byteBuffer.position() + iQ2);
        byteBufferI.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i12 = i11 - iQ2;
        int i13 = this.f20428n - iQ;
        this.f20428n = i13;
        byte[] bArr = this.f20427m;
        System.arraycopy(bArr, iQ, bArr, 0, i13);
        byteBuffer.get(this.f20427m, this.f20428n, i12);
        this.f20428n += i12;
        byteBufferI.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    public final zzdc h(zzdc zzdcVar) throws zzdd {
        if (zzdcVar.f14341c != 2) {
            throw new zzdd(zzdcVar);
        }
        this.f20425k = true;
        return (this.f20423i == 0 && this.f20424j == 0) ? zzdc.f14338e : zzdcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    protected final void j() {
        if (this.f20425k) {
            this.f20425k = false;
            int i10 = this.f20424j;
            int i11 = this.f14473b.f14342d;
            this.f20427m = new byte[i10 * i11];
            this.f20426l = this.f20423i * i11;
        }
        this.f20428n = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    protected final void k() {
        if (this.f20425k) {
            int i10 = this.f20428n;
            if (i10 > 0) {
                this.f20429o += (long) (i10 / this.f14473b.f14342d);
            }
            this.f20428n = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    protected final void l() {
        this.f20427m = zzew.f17499f;
    }

    public final long n() {
        return this.f20429o;
    }

    public final void o() {
        this.f20429o = 0L;
    }

    public final void p(int i10, int i11) {
        this.f20423i = i10;
        this.f20424j = i11;
    }

    @Override // com.google.android.gms.internal.ads.zzdf, com.google.android.gms.internal.ads.zzde
    public final ByteBuffer zzb() {
        int i10;
        if (super.f() && (i10 = this.f20428n) > 0) {
            i(i10).put(this.f20427m, 0, this.f20428n).flip();
            this.f20428n = 0;
        }
        return super.zzb();
    }
}
