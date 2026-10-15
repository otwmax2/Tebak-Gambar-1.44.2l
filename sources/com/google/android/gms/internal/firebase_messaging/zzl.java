package com.google.android.gms.internal.firebase_messaging;

import com.facebook.internal.Utility;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final OutputStream f23002a = new zzj();

    public static byte[] a(InputStream inputStream) throws IOException {
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int i10 = Utility.DEFAULT_STREAM_BUFFER_SIZE;
        int i11 = 0;
        while (i11 < 2147483639) {
            int iMin = Math.min(i10, 2147483639 - i11);
            byte[] bArr = new byte[iMin];
            arrayDeque.add(bArr);
            int i12 = 0;
            while (i12 < iMin) {
                int i13 = inputStream.read(bArr, i12, iMin - i12);
                if (i13 == -1) {
                    return c(arrayDeque, i11);
                }
                i12 += i13;
                i11 += i13;
            }
            long j10 = i10;
            long j11 = j10 + j10;
            i10 = j11 > 2147483647L ? Integer.MAX_VALUE : j11 < -2147483648L ? Integer.MIN_VALUE : (int) j11;
        }
        if (inputStream.read() == -1) {
            return c(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    public static InputStream b(InputStream inputStream, long j10) {
        return new zzk(inputStream, 1048577L);
    }

    private static byte[] c(Queue<byte[]> queue, int i10) {
        byte[] bArr = new byte[i10];
        int i11 = i10;
        while (i11 > 0) {
            byte[] bArrRemove = queue.remove();
            int iMin = Math.min(i11, bArrRemove.length);
            System.arraycopy(bArrRemove, 0, bArr, i10 - i11, iMin);
            i11 -= iMin;
        }
        return bArr;
    }
}
