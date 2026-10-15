package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdi extends zzdf {
    @Override // com.google.android.gms.internal.ads.zzde
    public final void g(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        int i11 = this.f14473b.f14341c;
        if (i11 == 3) {
            i10 += i10;
        } else if (i11 == 4) {
            i10 /= 2;
        } else if (i11 != 268435456) {
            if (i11 != 536870912) {
                if (i11 != 805306368) {
                    throw new IllegalStateException();
                }
                i10 /= 2;
            } else {
                i10 /= 3;
                i10 += i10;
            }
        }
        ByteBuffer byteBufferI = i(i10);
        int i12 = this.f14473b.f14341c;
        if (i12 == 3) {
            while (iPosition < iLimit) {
                byteBufferI.put((byte) 0);
                byteBufferI.put((byte) ((byteBuffer.get(iPosition) & 255) - 128));
                iPosition++;
            }
        } else if (i12 == 4) {
            while (iPosition < iLimit) {
                short sA = (short) (zzew.A(byteBuffer.getFloat(iPosition), -1.0f, 1.0f) * 32767.0f);
                byteBufferI.put((byte) (sA & 255));
                byteBufferI.put((byte) ((sA >> 8) & 255));
                iPosition += 4;
            }
        } else if (i12 == 268435456) {
            while (iPosition < iLimit) {
                byteBufferI.put(byteBuffer.get(iPosition + 1));
                byteBufferI.put(byteBuffer.get(iPosition));
                iPosition += 2;
            }
        } else if (i12 == 536870912) {
            while (iPosition < iLimit) {
                byteBufferI.put(byteBuffer.get(iPosition + 1));
                byteBufferI.put(byteBuffer.get(iPosition + 2));
                iPosition += 3;
            }
        } else {
            if (i12 != 805306368) {
                throw new IllegalStateException();
            }
            while (iPosition < iLimit) {
                byteBufferI.put(byteBuffer.get(iPosition + 2));
                byteBufferI.put(byteBuffer.get(iPosition + 3));
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferI.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    public final zzdc h(zzdc zzdcVar) throws zzdd {
        int i10 = zzdcVar.f14341c;
        if (i10 != 3) {
            if (i10 == 2) {
                return zzdc.f14338e;
            }
            if (i10 != 268435456 && i10 != 536870912 && i10 != 805306368 && i10 != 4) {
                throw new zzdd(zzdcVar);
            }
        }
        return new zzdc(zzdcVar.f14339a, zzdcVar.f14340b, 2);
    }
}
