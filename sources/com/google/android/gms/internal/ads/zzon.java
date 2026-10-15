package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzon extends zzdf {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int[] f20351i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int[] f20352j;

    zzon() {
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void g(ByteBuffer byteBuffer) {
        int[] iArr = this.f20352j;
        Objects.requireNonNull(iArr);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferI = i(((iLimit - iPosition) / this.f14473b.f14342d) * this.f14474c.f14342d);
        while (iPosition < iLimit) {
            for (int i10 : iArr) {
                byteBufferI.putShort(byteBuffer.getShort(i10 + i10 + iPosition));
            }
            iPosition += this.f14473b.f14342d;
        }
        byteBuffer.position(iLimit);
        byteBufferI.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    public final zzdc h(zzdc zzdcVar) throws zzdd {
        int[] iArr = this.f20351i;
        if (iArr == null) {
            return zzdc.f14338e;
        }
        if (zzdcVar.f14341c != 2) {
            throw new zzdd(zzdcVar);
        }
        boolean z10 = zzdcVar.f14340b != iArr.length;
        int i10 = 0;
        while (true) {
            int length = iArr.length;
            if (i10 >= length) {
                return z10 ? new zzdc(zzdcVar.f14339a, length, 2) : zzdc.f14338e;
            }
            int i11 = iArr[i10];
            if (i11 >= zzdcVar.f14340b) {
                throw new zzdd(zzdcVar);
            }
            z10 |= i11 != i10;
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    protected final void j() {
        this.f20352j = this.f20351i;
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    protected final void l() {
        this.f20352j = null;
        this.f20351i = null;
    }

    public final void n(int[] iArr) {
        this.f20351i = iArr;
    }
}
