package r7;

import com.facebook.appevents.AppEventsConstants;
import i7.h;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: compiled from: PDF417HighLevelEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f34334c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f34332a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f34333b = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f34335d = new byte[128];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Charset f34336e = StandardCharsets.ISO_8859_1;

    /* JADX INFO: compiled from: PDF417HighLevelEncoder.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34337a;

        static {
            int[] iArr = new int[c.values().length];
            f34337a = iArr;
            try {
                iArr[c.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34337a[c.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34337a[c.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        byte[] bArr = new byte[128];
        f34334c = bArr;
        Arrays.fill(bArr, (byte) -1);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr2 = f34332a;
            if (i11 >= bArr2.length) {
                break;
            }
            byte b10 = bArr2[i11];
            if (b10 > 0) {
                f34334c[b10] = (byte) i11;
            }
            i11++;
        }
        Arrays.fill(f34335d, (byte) -1);
        while (true) {
            byte[] bArr3 = f34333b;
            if (i10 >= bArr3.length) {
                return;
            }
            byte b11 = bArr3[i10];
            if (b11 > 0) {
                f34335d[b11] = (byte) i10;
            }
            i10++;
        }
    }

    private static int a(String str, int i10, Charset charset) throws h {
        int i11;
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        int length = str.length();
        int i12 = i10;
        while (i12 < length) {
            char cCharAt = str.charAt(i12);
            int i13 = 0;
            while (i13 < 13 && k(cCharAt) && (i11 = i12 + (i13 = i13 + 1)) < length) {
                cCharAt = str.charAt(i11);
            }
            if (i13 >= 13) {
                return i12 - i10;
            }
            char cCharAt2 = str.charAt(i12);
            if (!charsetEncoderNewEncoder.canEncode(cCharAt2)) {
                throw new h("Non-encodable character detected: " + cCharAt2 + " (Unicode: " + ((int) cCharAt2) + ')');
            }
            i12++;
        }
        return i12 - i10;
    }

    private static int b(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        int i11 = 0;
        if (i10 < length) {
            char cCharAt = charSequence.charAt(i10);
            while (k(cCharAt) && i10 < length) {
                i11++;
                i10++;
                if (i10 < length) {
                    cCharAt = charSequence.charAt(i10);
                }
            }
        }
        return i11;
    }

    private static int c(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        int i11 = i10;
        while (i11 < length) {
            char cCharAt = charSequence.charAt(i11);
            int i12 = 0;
            while (i12 < 13 && k(cCharAt) && i11 < length) {
                i12++;
                i11++;
                if (i11 < length) {
                    cCharAt = charSequence.charAt(i11);
                }
            }
            if (i12 < 13) {
                if (i12 <= 0) {
                    if (!n(charSequence.charAt(i11))) {
                        break;
                    }
                    i11++;
                }
            } else {
                return (i11 - i10) - i12;
            }
        }
        return i11 - i10;
    }

    private static void d(byte[] bArr, int i10, int i11, int i12, StringBuilder sb) {
        int i13;
        if (i11 == 1 && i12 == 0) {
            sb.append((char) 913);
        } else if (i11 % 6 == 0) {
            sb.append((char) 924);
        } else {
            sb.append((char) 901);
        }
        if (i11 >= 6) {
            char[] cArr = new char[5];
            i13 = i10;
            while ((i10 + i11) - i13 >= 6) {
                long j10 = 0;
                for (int i14 = 0; i14 < 6; i14++) {
                    j10 = (j10 << 8) + ((long) (bArr[i13 + i14] & 255));
                }
                for (int i15 = 0; i15 < 5; i15++) {
                    cArr[i15] = (char) (j10 % 900);
                    j10 /= 900;
                }
                for (int i16 = 4; i16 >= 0; i16--) {
                    sb.append(cArr[i16]);
                }
                i13 += 6;
            }
        } else {
            i13 = i10;
        }
        while (i13 < i10 + i11) {
            sb.append((char) (bArr[i13] & 255));
            i13++;
        }
    }

    static String e(String str, c cVar, Charset charset) throws h {
        l7.c cVarC;
        StringBuilder sb = new StringBuilder(str.length());
        if (charset == null) {
            charset = f34336e;
        } else if (!f34336e.equals(charset) && (cVarC = l7.c.c(charset.name())) != null) {
            h(cVarC.e(), sb);
        }
        int length = str.length();
        int i10 = a.f34337a[cVar.ordinal()];
        if (i10 == 1) {
            g(str, 0, length, sb, 0);
        } else if (i10 == 2) {
            byte[] bytes = str.getBytes(charset);
            d(bytes, 0, bytes.length, 1, sb);
        } else if (i10 != 3) {
            int i11 = 0;
            int iG = 0;
            int i12 = 0;
            while (i11 < length) {
                int iB = b(str, i11);
                if (iB >= 13) {
                    sb.append((char) 902);
                    f(str, i11, iB, sb);
                    i11 += iB;
                    iG = 0;
                    i12 = 2;
                } else {
                    int iC = c(str, i11);
                    if (iC >= 5 || iB == length) {
                        if (i12 != 0) {
                            sb.append((char) 900);
                            iG = 0;
                            i12 = 0;
                        }
                        iG = g(str, i11, iC, sb, iG);
                        i11 += iC;
                    } else {
                        int iA = a(str, i11, charset);
                        if (iA == 0) {
                            iA = 1;
                        }
                        int i13 = iA + i11;
                        byte[] bytes2 = str.substring(i11, i13).getBytes(charset);
                        if (bytes2.length == 1 && i12 == 0) {
                            d(bytes2, 0, 1, 0, sb);
                        } else {
                            d(bytes2, 0, bytes2.length, i12, sb);
                            iG = 0;
                            i12 = 1;
                        }
                        i11 = i13;
                    }
                }
            }
        } else {
            sb.append((char) 902);
            f(str, 0, length, sb);
        }
        return sb.toString();
    }

    private static void f(String str, int i10, int i11, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder((i11 / 3) + 1);
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(0L);
        int i12 = 0;
        while (i12 < i11) {
            sb2.setLength(0);
            int iMin = Math.min(44, i11 - i12);
            StringBuilder sb3 = new StringBuilder(AppEventsConstants.EVENT_PARAM_VALUE_YES);
            int i13 = i10 + i12;
            sb3.append(str.substring(i13, i13 + iMin));
            BigInteger bigInteger = new BigInteger(sb3.toString());
            do {
                sb2.append((char) bigInteger.mod(bigIntegerValueOf).intValue());
                bigInteger = bigInteger.divide(bigIntegerValueOf);
            } while (!bigInteger.equals(bigIntegerValueOf2));
            for (int length = sb2.length() - 1; length >= 0; length--) {
                sb.append(sb2.charAt(length));
            }
            i12 += iMin;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x00f6 A[EDGE_INSN: B:76:0x00f6->B:55:0x00f6 BREAK  A[LOOP:0: B:3:0x0011->B:93:0x0011], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0011 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int g(java.lang.CharSequence r16, int r17, int r18, java.lang.StringBuilder r19, int r20) {
        /*
            Method dump skipped, instruction units count: 293
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: r7.g.g(java.lang.CharSequence, int, int, java.lang.StringBuilder, int):int");
    }

    private static void h(int i10, StringBuilder sb) throws h {
        if (i10 >= 0 && i10 < 900) {
            sb.append((char) 927);
            sb.append((char) i10);
        } else if (i10 < 810900) {
            sb.append((char) 926);
            sb.append((char) ((i10 / 900) - 1));
            sb.append((char) (i10 % 900));
        } else {
            if (i10 >= 811800) {
                throw new h("ECI number not in valid range from 0..811799, but was ".concat(String.valueOf(i10)));
            }
            sb.append((char) 925);
            sb.append((char) (810900 - i10));
        }
    }

    private static boolean i(char c10) {
        if (c10 != ' ') {
            return c10 >= 'a' && c10 <= 'z';
        }
        return true;
    }

    private static boolean j(char c10) {
        if (c10 != ' ') {
            return c10 >= 'A' && c10 <= 'Z';
        }
        return true;
    }

    private static boolean k(char c10) {
        return c10 >= '0' && c10 <= '9';
    }

    private static boolean l(char c10) {
        return f34334c[c10] != -1;
    }

    private static boolean m(char c10) {
        return f34335d[c10] != -1;
    }

    private static boolean n(char c10) {
        if (c10 == '\t' || c10 == '\n' || c10 == '\r') {
            return true;
        }
        return c10 >= ' ' && c10 <= '~';
    }
}
