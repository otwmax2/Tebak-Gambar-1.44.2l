package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfb extends zzfa {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f17842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Uri f17843f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f17844g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f17845h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f17846i;

    public zzfb(byte[] bArr) {
        super(false);
        Objects.requireNonNull(bArr);
        zzdl.d(bArr.length > 0);
        this.f17842e = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        return this.f17843f;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void d() {
        if (this.f17846i) {
            this.f17846i = false;
            n();
        }
        this.f17843f = null;
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.f17845h;
        if (i12 == 0) {
            return -1;
        }
        int iMin = Math.min(i11, i12);
        System.arraycopy(this.f17842e, this.f17844g, bArr, i10, iMin);
        this.f17844g += iMin;
        this.f17845h -= iMin;
        w(iMin);
        return iMin;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final long j(zzfl zzflVar) throws IOException {
        this.f17843f = zzflVar.f18368a;
        o(zzflVar);
        long j10 = zzflVar.f18373f;
        int length = this.f17842e.length;
        if (j10 > length) {
            throw new zzfh(2008);
        }
        int i10 = (int) j10;
        this.f17844g = i10;
        int i11 = length - i10;
        this.f17845h = i11;
        long j11 = zzflVar.f18374g;
        if (j11 != -1) {
            this.f17845h = (int) Math.min(i11, j11);
        }
        this.f17846i = true;
        p(zzflVar);
        long j12 = zzflVar.f18374g;
        return j12 != -1 ? j12 : this.f17845h;
    }
}
