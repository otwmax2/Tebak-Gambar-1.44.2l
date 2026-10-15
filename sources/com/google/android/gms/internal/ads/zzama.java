package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzama {
    public static double a(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        double d10 = ((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680) | (65280 & (bArr[2] << 8)) | (bArr[3] & 255);
        Double.isNaN(d10);
        return d10 / 1.073741824E9d;
    }

    public static double b(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        double d10 = ((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680) | (65280 & (bArr[2] << 8)) | (bArr[3] & 255);
        Double.isNaN(d10);
        return d10 / 65536.0d;
    }

    public static int c(byte b10) {
        return b10 < 0 ? b10 + 256 : b10;
    }

    public static int d(ByteBuffer byteBuffer) {
        return (c(byteBuffer.get()) << 8) + c(byteBuffer.get());
    }

    public static long e(ByteBuffer byteBuffer) {
        long j10 = byteBuffer.getInt();
        return j10 < 0 ? j10 + 4294967296L : j10;
    }

    public static long f(ByteBuffer byteBuffer) {
        long jE = e(byteBuffer) << 32;
        if (jE >= 0) {
            return jE + e(byteBuffer);
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }
}
