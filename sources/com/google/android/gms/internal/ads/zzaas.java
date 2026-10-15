package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaas {
    public static int a(ByteBuffer byteBuffer) {
        return (int) ((d(byteBuffer.get(0), byteBuffer.limit() > 1 ? byteBuffer.get(1) : (byte) 0) * 48000) / 1000000);
    }

    public static long b(byte[] bArr) {
        return d(bArr[0], bArr.length > 1 ? bArr[1] : (byte) 0);
    }

    public static List c(byte[] bArr) {
        int i10 = bArr[11] & 255;
        int i11 = bArr[10] & 255;
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(f(e((i10 << 8) | i11)));
        arrayList.add(f(e(3840L)));
        return arrayList;
    }

    private static long d(byte b10, byte b11) {
        int i10 = b10 & 255;
        int i11 = i10 & 3;
        int i12 = 2;
        if (i11 == 0) {
            i12 = 1;
        } else if (i11 != 1 && i11 != 2) {
            i12 = b11 & 63;
        }
        int i13 = i10 >> 3;
        int i14 = i13 & 3;
        return ((long) i12) * ((long) (i13 >= 16 ? 2500 << i14 : i13 >= 12 ? 10000 << (i14 & 1) : i14 == 3 ? 60000 : 10000 << i14));
    }

    private static long e(long j10) {
        return (j10 * 1000000000) / 48000;
    }

    private static byte[] f(long j10) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j10).array();
    }
}
