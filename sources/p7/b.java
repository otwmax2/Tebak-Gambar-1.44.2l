package p7;

/* JADX INFO: compiled from: CodaBarWriter.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f33524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final char[] f33525b = {'T', 'N', '*', 'E'};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final char[] f33526c = {'/', ':', '+', '.'};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final char f33527d;

    static {
        char[] cArr = {'A', 'B', 'C', 'D'};
        f33524a = cArr;
        f33527d = cArr[0];
    }

    @Override // p7.n
    public boolean[] c(String str) {
        int i10;
        if (str.length() < 2) {
            StringBuilder sb = new StringBuilder();
            char c10 = f33527d;
            sb.append(c10);
            sb.append(str);
            sb.append(c10);
            str = sb.toString();
        } else {
            char upperCase = Character.toUpperCase(str.charAt(0));
            char upperCase2 = Character.toUpperCase(str.charAt(str.length() - 1));
            char[] cArr = f33524a;
            boolean zA = a.a(cArr, upperCase);
            boolean zA2 = a.a(cArr, upperCase2);
            char[] cArr2 = f33525b;
            boolean zA3 = a.a(cArr2, upperCase);
            boolean zA4 = a.a(cArr2, upperCase2);
            if (zA) {
                if (!zA2) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
                }
            } else if (!zA3) {
                if (zA2 || zA4) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
                }
                StringBuilder sb2 = new StringBuilder();
                char c11 = f33527d;
                sb2.append(c11);
                sb2.append(str);
                sb2.append(c11);
                str = sb2.toString();
            } else if (!zA4) {
                throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
            }
        }
        int i11 = 20;
        for (int i12 = 1; i12 < str.length() - 1; i12++) {
            if (Character.isDigit(str.charAt(i12)) || str.charAt(i12) == '-' || str.charAt(i12) == '$') {
                i11 += 9;
            } else {
                if (!a.a(f33526c, str.charAt(i12))) {
                    throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i12) + '\'');
                }
                i11 += 10;
            }
        }
        boolean[] zArr = new boolean[i11 + (str.length() - 1)];
        int i13 = 0;
        for (int i14 = 0; i14 < str.length(); i14++) {
            char upperCase3 = Character.toUpperCase(str.charAt(i14));
            if (i14 == 0 || i14 == str.length() - 1) {
                if (upperCase3 == '*') {
                    upperCase3 = 'C';
                } else if (upperCase3 == 'E') {
                    upperCase3 = 'D';
                } else if (upperCase3 == 'N') {
                    upperCase3 = 'B';
                } else if (upperCase3 == 'T') {
                    upperCase3 = 'A';
                }
            }
            int i15 = 0;
            while (true) {
                char[] cArr3 = a.f33521a;
                if (i15 >= cArr3.length) {
                    i10 = 0;
                    break;
                }
                if (upperCase3 == cArr3[i15]) {
                    i10 = a.f33522b[i15];
                    break;
                }
                i15++;
            }
            int i16 = 0;
            boolean z10 = true;
            while (true) {
                int i17 = 0;
                while (i16 < 7) {
                    zArr[i13] = z10;
                    i13++;
                    if (((i10 >> (6 - i16)) & 1) == 0 || i17 == 1) {
                        break;
                    }
                    i17++;
                }
                z10 = !z10;
                i16++;
            }
            if (i14 < str.length() - 1) {
                zArr[i13] = false;
                i13++;
            }
        }
        return zArr;
    }
}
