package c9;

import android.content.Context;
import android.content.res.Resources;

/* JADX INFO: compiled from: CommonUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    static String a(Context context) {
        int i10 = context.getApplicationContext().getApplicationInfo().icon;
        return i10 > 0 ? context.getResources().getResourcePackageName(i10) : context.getPackageName();
    }

    static int b(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, a(context));
    }

    public static String c(Context context, String str, String str2) {
        Resources resources;
        int iB;
        return (context == null || (resources = context.getResources()) == null || (iB = b(context, str, "string")) <= 0) ? str2 : resources.getString(iB);
    }
}
