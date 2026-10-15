package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzgts {
    zzgts() {
    }

    static final String d(ByteBuffer byteBuffer, int i10, int i11) throws zzgqy {
        if ((((byteBuffer.limit() - i10) - i11) | i10 | i11) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
        }
        int i12 = i10 + i11;
        char[] cArr = new char[i11];
        int i13 = 0;
        while (i10 < i12) {
            byte b10 = byteBuffer.get(i10);
            if (!zzgtr.d(b10)) {
                break;
            }
            i10++;
            cArr[i13] = (char) b10;
            i13++;
        }
        int i14 = i13;
        while (i10 < i12) {
            int i15 = i10 + 1;
            byte b11 = byteBuffer.get(i10);
            if (zzgtr.d(b11)) {
                int i16 = i14 + 1;
                cArr[i14] = (char) b11;
                i10 = i15;
                while (true) {
                    i14 = i16;
                    if (i10 < i12) {
                        byte b12 = byteBuffer.get(i10);
                        if (zzgtr.d(b12)) {
                            i10++;
                            i16 = i14 + 1;
                            cArr[i14] = (char) b12;
                        }
                    }
                }
            } else if (zzgtr.f(b11)) {
                if (i15 >= i12) {
                    throw zzgqy.d();
                }
                zzgtr.c(b11, byteBuffer.get(i15), cArr, i14);
                i10 = i15 + 1;
                i14++;
            } else if (zzgtr.e(b11)) {
                if (i15 >= i12 - 1) {
                    throw zzgqy.d();
                }
                int i17 = i15 + 1;
                zzgtr.b(b11, byteBuffer.get(i15), byteBuffer.get(i17), cArr, i14);
                i10 = i17 + 1;
                i14++;
            } else {
                if (i15 >= i12 - 2) {
                    throw zzgqy.d();
                }
                int i18 = i15 + 1;
                byte b13 = byteBuffer.get(i15);
                int i19 = i18 + 1;
                zzgtr.a(b11, b13, byteBuffer.get(i18), byteBuffer.get(i19), cArr, i14);
                i14 += 2;
                i10 = i19 + 1;
            }
        }
        return new String(cArr, 0, i14);
    }

    abstract int a(int i10, byte[] bArr, int i11, int i12);

    abstract String b(byte[] bArr, int i10, int i11) throws zzgqy;

    final boolean c(byte[] bArr, int i10, int i11) {
        return a(0, bArr, i10, i11) == 0;
    }
}
