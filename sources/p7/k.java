package p7;

import java.util.Map;

/* JADX INFO: compiled from: EAN8Writer.java */
/* JADX INFO: loaded from: classes2.dex */
public final class k extends q {
    @Override // p7.n, i7.g
    public l7.b a(String str, i7.a aVar, int i10, int i11, Map<i7.c, ?> map) throws i7.h {
        if (aVar == i7.a.EAN_8) {
            return super.a(str, aVar, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_8, but got ".concat(String.valueOf(aVar)));
    }

    @Override // p7.n
    public boolean[] c(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + p.b(str);
            } catch (i7.d e10) {
                throw new IllegalArgumentException(e10);
            }
        } else {
            if (length != 8) {
                throw new IllegalArgumentException("Requested contents should be 8 digits long, but got ".concat(String.valueOf(length)));
            }
            try {
                if (!p.a(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (i7.d unused) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        boolean[] zArr = new boolean[67];
        int iB = n.b(zArr, 0, p.f33543a, true) + 0;
        for (int i10 = 0; i10 <= 3; i10++) {
            iB += n.b(zArr, iB, p.f33546d[Character.digit(str.charAt(i10), 10)], false);
        }
        int iB2 = iB + n.b(zArr, iB, p.f33544b, false);
        for (int i11 = 4; i11 <= 7; i11++) {
            iB2 += n.b(zArr, iB2, p.f33546d[Character.digit(str.charAt(i11), 10)], true);
        }
        n.b(zArr, iB2, p.f33543a, true);
        return zArr;
    }
}
