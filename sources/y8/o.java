package y8;

import android.content.Context;

/* JADX INFO: compiled from: PermissionUtil.java */
/* JADX INFO: loaded from: classes2.dex */
public class o {
    public static void a(Context context, String[] strArr) throws n {
        for (String str : strArr) {
            if (androidx.core.content.a.a(context, str) != 0) {
                throw new n(strArr);
            }
        }
    }

    public static boolean b(int[] iArr) {
        int i10 = 0;
        for (int i11 : iArr) {
            if (i11 == 0) {
                i10++;
            }
        }
        return i10 == iArr.length;
    }
}
