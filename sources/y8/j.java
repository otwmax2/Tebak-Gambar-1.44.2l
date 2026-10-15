package y8;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: Levenshtein.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {
    public static int a(String str, String str2) {
        String strReplaceAll = BuildConfig.FLAVOR;
        String strReplaceAll2 = str == null ? BuildConfig.FLAVOR : str.replaceAll(" ", BuildConfig.FLAVOR);
        if (str2 != null) {
            strReplaceAll = str2.replaceAll(" ", BuildConfig.FLAVOR);
        }
        String lowerCase = strReplaceAll2.toLowerCase();
        String lowerCase2 = strReplaceAll.toLowerCase();
        int length = lowerCase2.length() + 1;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = i10;
        }
        for (int i11 = 1; i11 <= lowerCase.length(); i11++) {
            iArr[0] = i11;
            int i12 = i11 - 1;
            int i13 = i12;
            int i14 = 1;
            while (i14 <= lowerCase2.length()) {
                int i15 = i14 - 1;
                int iMin = Math.min(iArr[i14], iArr[i15]) + 1;
                if (lowerCase.charAt(i12) != lowerCase2.charAt(i15)) {
                    i13++;
                }
                int iMin2 = Math.min(iMin, i13);
                int i16 = iArr[i14];
                iArr[i14] = iMin2;
                i14++;
                i13 = i16;
            }
        }
        return iArr[lowerCase2.length()];
    }
}
