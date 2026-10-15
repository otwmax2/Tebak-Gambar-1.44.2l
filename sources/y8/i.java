package y8;

import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;

/* JADX INFO: compiled from: Hashids.java */
/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f37047a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37048b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f37049c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f37050d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f37051e;

    public i(String str) {
        this(str, 0);
    }

    private long[] a(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        String[] strArrSplit = str.replaceAll("[" + this.f37051e + "]", " ").split(" ");
        String str3 = strArrSplit[(strArrSplit.length == 3 || strArrSplit.length == 2) ? (char) 1 : (char) 0];
        char c10 = str3.toCharArray()[0];
        for (String str4 : str3.substring(1).replaceAll("[" + this.f37049c + "]", " ").split(" ")) {
            str2 = c(str2, (c10 + this.f37047a + str2).substring(0, str2.length()));
            arrayList.add(g(str4, str2));
        }
        int size = arrayList.size();
        long[] jArr = new long[size];
        for (int i10 = 0; i10 < size; i10++) {
            jArr[i10] = ((Long) arrayList.get(i10)).longValue();
        }
        return !b(jArr).equals(str) ? new long[0] : jArr;
    }

    private String b(long... jArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < jArr.length; i11++) {
            i10 = (int) (((long) i10) + (jArr[i11] % ((long) (i11 + 100))));
        }
        String strC = this.f37048b;
        char c10 = strC.toCharArray()[i10 % strC.length()];
        StringBuilder sb = new StringBuilder(Character.toString(c10));
        int i12 = 0;
        while (i12 < jArr.length) {
            long j10 = jArr[i12];
            strC = c(strC, (c10 + this.f37047a + strC).substring(0, strC.length()));
            String strF = f(j10, strC);
            sb.append(strF);
            int i13 = i12 + 1;
            if (i13 < jArr.length) {
                sb.append(this.f37049c.toCharArray()[(int) ((j10 % ((long) (strF.toCharArray()[0] + i12))) % ((long) this.f37049c.length()))]);
            }
            i12 = i13;
        }
        String string = sb.toString();
        if (string.length() < this.f37050d) {
            string = this.f37051e.toCharArray()[(string.toCharArray()[0] + i10) % this.f37051e.length()] + string;
            if (string.length() < this.f37050d) {
                string = string + this.f37051e.toCharArray()[(i10 + string.toCharArray()[2]) % this.f37051e.length()];
            }
        }
        int length = strC.length() / 2;
        while (string.length() < this.f37050d) {
            strC = c(strC, strC);
            string = strC.substring(length) + string + strC.substring(0, length);
            int length2 = string.length();
            int i14 = this.f37050d;
            int i15 = length2 - i14;
            if (i15 > 0) {
                int i16 = i15 / 2;
                string = string.substring(i16, i14 + i16);
            }
        }
        return string;
    }

    private static String c(String str, String str2) {
        if (str2.length() <= 0) {
            return str;
        }
        char[] charArray = str2.toCharArray();
        int length = str.length() - 1;
        int i10 = 0;
        int i11 = 0;
        while (length > 0) {
            int length2 = i10 % str2.length();
            char c10 = charArray[length2];
            i11 += c10;
            int i12 = ((c10 + length2) + i11) % length;
            char cCharAt = str.charAt(i12);
            String str3 = str.substring(0, i12) + str.charAt(length) + str.substring(i12 + 1);
            str = str3.substring(0, length) + cCharAt + str3.substring(length + 1);
            length--;
            i10 = length2 + 1;
        }
        return str;
    }

    private static String f(long j10, String str) {
        int length = str.length();
        char[] charArray = str.toCharArray();
        String string = BuildConfig.FLAVOR;
        do {
            StringBuilder sb = new StringBuilder();
            long j11 = length;
            sb.append(charArray[(int) (j10 % j11)]);
            sb.append(string);
            string = sb.toString();
            j10 /= j11;
        } while (j10 > 0);
        return string;
    }

    private static Long g(String str, String str2) {
        char[] charArray = str.toCharArray();
        long j10 = 0;
        for (int i10 = 0; i10 < str.length(); i10++) {
            double d10 = j10;
            double dPow = Math.pow(str2.length(), (str.length() - i10) - 1);
            Double.isNaN(dIndexOf);
            Double.isNaN(d10);
            j10 = (long) (d10 + (dIndexOf * dPow));
        }
        return Long.valueOf(j10);
    }

    public long[] d(String str) {
        return str.equals(BuildConfig.FLAVOR) ? new long[0] : a(str, this.f37048b);
    }

    public String e(long... jArr) {
        for (long j10 : jArr) {
            if (j10 > 9007199254740992L) {
                throw new IllegalArgumentException("number can not be greater than 9007199254740992L");
            }
        }
        return jArr.length == 0 ? BuildConfig.FLAVOR : b(jArr);
    }

    public i(String str, int i10) {
        this(str, i10, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890");
    }

    public i(String str, int i10, String str2) {
        this.f37047a = "d78034b1630c3659076765d354111c3a1f5410372d14b5539234411a3e74b86b7b76d93cc";
        this.f37048b = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        this.f37049c = "cfhistuCFHISTU";
        this.f37050d = 0;
        this.f37047a = str;
        if (i10 < 0) {
            this.f37050d = 0;
        } else {
            this.f37050d = i10;
        }
        this.f37048b = str2;
        StringBuilder sb = new StringBuilder();
        for (int i11 = 0; i11 < this.f37048b.length(); i11++) {
            if (sb.indexOf(Character.toString(this.f37048b.charAt(i11))) == -1) {
                sb.append(this.f37048b.charAt(i11));
            }
        }
        String string = sb.toString();
        this.f37048b = string;
        if (string.length() >= 16) {
            if (!this.f37048b.contains(" ")) {
                for (int i12 = 0; i12 < this.f37049c.length(); i12++) {
                    int iIndexOf = this.f37048b.indexOf(this.f37049c.charAt(i12));
                    if (iIndexOf == -1) {
                        this.f37049c = this.f37049c.substring(0, i12) + " " + this.f37049c.substring(i12 + 1);
                    } else {
                        this.f37048b = this.f37048b.substring(0, iIndexOf) + " " + this.f37048b.substring(iIndexOf + 1);
                    }
                }
                this.f37048b = this.f37048b.replaceAll("\\s+", BuildConfig.FLAVOR);
                String strReplaceAll = this.f37049c.replaceAll("\\s+", BuildConfig.FLAVOR);
                this.f37049c = strReplaceAll;
                String strC = c(strReplaceAll, this.f37047a);
                this.f37049c = strC;
                if (strC.equals(BuildConfig.FLAVOR) || this.f37048b.length() / this.f37049c.length() > 3.5d) {
                    double length = this.f37048b.length();
                    Double.isNaN(length);
                    int iCeil = (int) Math.ceil(length / 3.5d);
                    iCeil = iCeil == 1 ? iCeil + 1 : iCeil;
                    if (iCeil > this.f37049c.length()) {
                        int length2 = iCeil - this.f37049c.length();
                        this.f37049c += this.f37048b.substring(0, length2);
                        this.f37048b = this.f37048b.substring(length2);
                    } else {
                        this.f37049c = this.f37049c.substring(0, iCeil);
                    }
                }
                String strC2 = c(this.f37048b, this.f37047a);
                this.f37048b = strC2;
                double length3 = strC2.length();
                double d10 = 12;
                Double.isNaN(length3);
                Double.isNaN(d10);
                int iCeil2 = (int) Math.ceil(length3 / d10);
                if (this.f37048b.length() < 3) {
                    this.f37051e = this.f37049c.substring(0, iCeil2);
                    this.f37049c = this.f37049c.substring(iCeil2);
                    return;
                } else {
                    this.f37051e = this.f37048b.substring(0, iCeil2);
                    this.f37048b = this.f37048b.substring(iCeil2);
                    return;
                }
            }
            throw new IllegalArgumentException("alphabet cannot contains spaces");
        }
        throw new IllegalArgumentException("alphabet must contain at least 16 unique characters");
    }
}
