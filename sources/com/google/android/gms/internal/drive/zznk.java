package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes2.dex */
final class zznk extends zznh {
    zznk() {
    }

    private static int d(byte[] bArr, int i10, long j10, int i11) {
        if (i11 == 0) {
            return zznf.c(i10);
        }
        if (i11 == 1) {
            return zznf.k(i10, zznd.a(bArr, j10));
        }
        if (i11 == 2) {
            return zznf.e(i10, zznd.a(bArr, j10), zznd.a(bArr, j10 + 1));
        }
        throw new AssertionError();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0061, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008b, code lost:
    
        return -1;
     */
    @Override // com.google.android.gms.internal.drive.zznh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final int a(int r16, byte[] r17, int r18, int r19) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zznk.a(int, byte[], int, int):int");
    }

    @Override // com.google.android.gms.internal.drive.zznh
    final int b(CharSequence charSequence, byte[] bArr, int i10, int i11) {
        char c10;
        long j10;
        long j11;
        long j12;
        int i12;
        char cCharAt;
        long j13 = i10;
        long j14 = ((long) i11) + j13;
        int length = charSequence.length();
        if (length > i11 || bArr.length - i11 < i10) {
            char cCharAt2 = charSequence.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(cCharAt2);
            sb.append(" at index ");
            sb.append(i10 + i11);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i13 = 0;
        while (true) {
            c10 = 128;
            j10 = 1;
            if (i13 >= length || (cCharAt = charSequence.charAt(i13)) >= 128) {
                break;
            }
            zznd.i(bArr, j13, (byte) cCharAt);
            i13++;
            j13 = 1 + j13;
        }
        if (i13 == length) {
            return (int) j13;
        }
        while (i13 < length) {
            char cCharAt3 = charSequence.charAt(i13);
            if (cCharAt3 >= c10 || j13 >= j14) {
                if (cCharAt3 < 2048 && j13 <= j14 - 2) {
                    long j15 = j13 + j10;
                    zznd.i(bArr, j13, (byte) ((cCharAt3 >>> 6) | 960));
                    zznd.i(bArr, j15, (byte) ((cCharAt3 & '?') | 128));
                    j11 = j15 + j10;
                    j12 = j10;
                } else {
                    if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || j13 > j14 - 3) {
                        if (j13 > j14 - 4) {
                            if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i12 = i13 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i12)))) {
                                throw new zznj(i13, length);
                            }
                            StringBuilder sb2 = new StringBuilder(46);
                            sb2.append("Failed writing ");
                            sb2.append(cCharAt3);
                            sb2.append(" at index ");
                            sb2.append(j13);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
                        }
                        int i14 = i13 + 1;
                        if (i14 != length) {
                            char cCharAt4 = charSequence.charAt(i14);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                long j16 = j13 + 1;
                                zznd.i(bArr, j13, (byte) ((codePoint >>> 18) | 240));
                                long j17 = j16 + 1;
                                zznd.i(bArr, j16, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j18 = j17 + 1;
                                zznd.i(bArr, j17, (byte) (((codePoint >>> 6) & 63) | 128));
                                j12 = 1;
                                j11 = j18 + 1;
                                zznd.i(bArr, j18, (byte) ((codePoint & 63) | 128));
                                i13 = i14;
                            } else {
                                i13 = i14;
                            }
                        }
                        throw new zznj(i13 - 1, length);
                    }
                    long j19 = j13 + j10;
                    zznd.i(bArr, j13, (byte) ((cCharAt3 >>> '\f') | 480));
                    long j20 = j19 + j10;
                    zznd.i(bArr, j19, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    zznd.i(bArr, j20, (byte) ((cCharAt3 & '?') | 128));
                    j11 = j20 + 1;
                    j12 = 1;
                }
                i13++;
                c10 = 128;
                long j21 = j12;
                j13 = j11;
                j10 = j21;
            } else {
                long j22 = j13 + j10;
                zznd.i(bArr, j13, (byte) cCharAt3);
                j12 = j10;
                j11 = j22;
            }
            i13++;
            c10 = 128;
            long j212 = j12;
            j13 = j11;
            j10 = j212;
        }
        return (int) j13;
    }
}
