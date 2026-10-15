package p7;

import java.util.Map;

/* JADX INFO: compiled from: Code39Writer.java */
/* JADX INFO: loaded from: classes2.dex */
public final class f extends n {
    private static void f(int i10, int[] iArr) {
        for (int i11 = 0; i11 < 9; i11++) {
            int i12 = 1;
            if (((1 << (8 - i11)) & i10) != 0) {
                i12 = 2;
            }
            iArr[i11] = i12;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String g(java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p7.f.g(java.lang.String):java.lang.String");
    }

    @Override // p7.n, i7.g
    public l7.b a(String str, i7.a aVar, int i10, int i11, Map<i7.c, ?> map) throws i7.h {
        if (aVar == i7.a.CODE_39) {
            return super.a(str, aVar, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_39, but got ".concat(String.valueOf(aVar)));
    }

    @Override // p7.n
    public boolean[] c(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            if ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i10)) < 0) {
                str = g(str);
                length = str.length();
                if (length > 80) {
                    throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length + " (extended full ASCII mode)");
                }
            } else {
                i10++;
            }
        }
        int[] iArr = new int[9];
        int i11 = length + 25;
        for (int i12 = 0; i12 < length; i12++) {
            f(e.f33534a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i12))], iArr);
            for (int i13 = 0; i13 < 9; i13++) {
                i11 += iArr[i13];
            }
        }
        boolean[] zArr = new boolean[i11];
        f(148, iArr);
        int iB = n.b(zArr, 0, iArr, true);
        int[] iArr2 = {1};
        int iB2 = iB + n.b(zArr, iB, iArr2, false);
        for (int i14 = 0; i14 < length; i14++) {
            f(e.f33534a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i14))], iArr);
            int iB3 = iB2 + n.b(zArr, iB2, iArr, true);
            iB2 = iB3 + n.b(zArr, iB3, iArr2, false);
        }
        f(148, iArr);
        n.b(zArr, iB2, iArr, true);
        return zArr;
    }
}
