package com.google.android.gms.internal.auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzhb f21587a;

    static {
        if (zzgz.u() && zzgz.v()) {
            int i10 = zzdo.f21449a;
        }
        f21587a = new zzhc();
    }

    static /* synthetic */ int a(byte[] bArr, int i10, int i11) {
        byte b10 = bArr[i10 - 1];
        int i12 = i11 - i10;
        if (i12 != 0) {
            if (i12 == 1) {
                byte b11 = bArr[i10];
                if (b10 <= -12 && b11 <= -65) {
                    return b10 ^ (b11 << 8);
                }
            } else {
                if (i12 != 2) {
                    throw new AssertionError();
                }
                byte b12 = bArr[i10];
                byte b13 = bArr[i10 + 1];
                if (b10 <= -12 && b12 <= -65 && b13 <= -65) {
                    return ((b12 << 8) ^ b10) ^ (b13 << 16);
                }
            }
        } else if (b10 <= -12) {
            return b10;
        }
        return -1;
    }

    static String b(byte[] bArr, int i10, int i11) throws zzew {
        int length = bArr.length;
        if ((i10 | i11 | ((length - i10) - i11)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i10), Integer.valueOf(i11)));
        }
        int i12 = i10 + i11;
        char[] cArr = new char[i11];
        int i13 = 0;
        while (i10 < i12) {
            byte b10 = bArr[i10];
            if (!zzha.d(b10)) {
                break;
            }
            i10++;
            cArr[i13] = (char) b10;
            i13++;
        }
        while (i10 < i12) {
            int i14 = i10 + 1;
            byte b11 = bArr[i10];
            if (zzha.d(b11)) {
                int i15 = i13 + 1;
                cArr[i13] = (char) b11;
                i10 = i14;
                while (true) {
                    i13 = i15;
                    if (i10 < i12) {
                        byte b12 = bArr[i10];
                        if (!zzha.d(b12)) {
                            break;
                        }
                        i10++;
                        i15 = i13 + 1;
                        cArr[i13] = (char) b12;
                    }
                }
            } else if (b11 < -32) {
                if (i14 >= i12) {
                    throw zzew.b();
                }
                zzha.b(b11, bArr[i14], cArr, i13);
                i10 = i14 + 1;
                i13++;
            } else if (b11 < -16) {
                if (i14 >= i12 - 1) {
                    throw zzew.b();
                }
                int i16 = i14 + 1;
                zzha.c(b11, bArr[i14], bArr[i16], cArr, i13);
                i10 = i16 + 1;
                i13++;
            } else {
                if (i14 >= i12 - 2) {
                    throw zzew.b();
                }
                int i17 = i14 + 1;
                int i18 = i17 + 1;
                zzha.a(b11, bArr[i14], bArr[i17], bArr[i18], cArr, i13);
                i13 += 2;
                i10 = i18 + 1;
            }
        }
        return new String(cArr, 0, i13);
    }

    public static boolean c(byte[] bArr) {
        return f21587a.b(bArr, 0, bArr.length);
    }

    public static boolean d(byte[] bArr, int i10, int i11) {
        return f21587a.b(bArr, i10, i11);
    }
}
