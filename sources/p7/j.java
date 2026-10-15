package p7;

import java.util.Map;

/* JADX INFO: compiled from: EAN13Writer.java */
/* JADX INFO: loaded from: classes2.dex */
public final class j extends q {
    @Override // p7.n, i7.g
    public l7.b a(String str, i7.a aVar, int i10, int i11, Map<i7.c, ?> map) throws i7.h {
        if (aVar == i7.a.EAN_13) {
            return super.a(str, aVar, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_13, but got ".concat(String.valueOf(aVar)));
    }

    @Override // p7.n
    public boolean[] c(String str) {
        int length = str.length();
        if (length == 12) {
            try {
                str = str + p.b(str);
            } catch (i7.d e10) {
                throw new IllegalArgumentException(e10);
            }
        } else {
            if (length != 13) {
                throw new IllegalArgumentException("Requested contents should be 12 or 13 digits long, but got ".concat(String.valueOf(length)));
            }
            try {
                if (!p.a(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (i7.d unused) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        int i10 = i.f33538f[Character.digit(str.charAt(0), 10)];
        boolean[] zArr = new boolean[95];
        int iB = n.b(zArr, 0, p.f33543a, true) + 0;
        for (int i11 = 1; i11 <= 6; i11++) {
            int iDigit = Character.digit(str.charAt(i11), 10);
            if (((i10 >> (6 - i11)) & 1) == 1) {
                iDigit += 10;
            }
            iB += n.b(zArr, iB, p.f33547e[iDigit], false);
        }
        int iB2 = iB + n.b(zArr, iB, p.f33544b, false);
        for (int i12 = 7; i12 <= 12; i12++) {
            iB2 += n.b(zArr, iB2, p.f33546d[Character.digit(str.charAt(i12), 10)], true);
        }
        n.b(zArr, iB2, p.f33543a, true);
        return zArr;
    }
}
