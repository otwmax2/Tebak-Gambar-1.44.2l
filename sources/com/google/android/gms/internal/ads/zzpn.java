package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzpn extends zzdf {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f20422i = Float.floatToIntBits(Float.NaN);

    zzpn() {
    }

    private static void n(int i10, ByteBuffer byteBuffer) {
        double d10 = i10;
        Double.isNaN(d10);
        int iFloatToIntBits = Float.floatToIntBits((float) (d10 * 4.656612875245797E-10d));
        if (iFloatToIntBits == f20422i) {
            iFloatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(iFloatToIntBits);
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void g(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferI;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        int i11 = this.f14473b.f14341c;
        if (i11 == 536870912) {
            byteBufferI = i((i10 / 3) * 4);
            while (iPosition < iLimit) {
                n(((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24), byteBufferI);
                iPosition += 3;
            }
        } else {
            if (i11 != 805306368) {
                throw new IllegalStateException();
            }
            byteBufferI = i(i10);
            while (iPosition < iLimit) {
                int i12 = byteBuffer.get(iPosition) & 255;
                int i13 = (byteBuffer.get(iPosition + 1) & 255) << 8;
                n(i12 | i13 | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24), byteBufferI);
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferI.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    public final zzdc h(zzdc zzdcVar) throws zzdd {
        int i10 = zzdcVar.f14341c;
        if (zzew.v(i10)) {
            return i10 != 4 ? new zzdc(zzdcVar.f14339a, zzdcVar.f14340b, 4) : zzdc.f14338e;
        }
        throw new zzdd(zzdcVar);
    }
}
