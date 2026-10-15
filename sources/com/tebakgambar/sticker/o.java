package com.tebakgambar.sticker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;

/* JADX INFO: compiled from: WhitelistCheck.java */
/* JADX INFO: loaded from: classes2.dex */
class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f27230a = "com.tebakgambar.stickercontentprovider";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f27231b = ".provider.sticker_whitelist_check";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f27232c = "is_whitelisted";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f27233d = "result";

    public static boolean a(String str, PackageManager packageManager) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                return applicationInfo.enabled;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    static boolean b(Context context, String str) {
        return f(context, str, "com.whatsapp");
    }

    static boolean c(Context context, String str) {
        return f(context, str, "com.whatsapp.w4b");
    }

    static boolean d(PackageManager packageManager) {
        return a("com.whatsapp", packageManager);
    }

    static boolean e(PackageManager packageManager) {
        return a("com.whatsapp.w4b", packageManager);
    }

    private static boolean f(Context context, String str, String str2) {
        PackageManager packageManager = context.getPackageManager();
        if (!a(str2, packageManager)) {
            return true;
        }
        String str3 = str2 + f27231b;
        if (packageManager.resolveContentProvider(str3, 128) == null) {
            return false;
        }
        Cursor cursorQuery = context.getContentResolver().query(new Uri.Builder().scheme("content").authority(str3).appendPath(f27232c).appendQueryParameter("authority", f27230a).appendQueryParameter("identifier", str).build(), null, null, null, null);
        if (cursorQuery != null) {
            try {
                if (cursorQuery.moveToFirst()) {
                    boolean z10 = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(f27233d)) == 1;
                    cursorQuery.close();
                    return z10;
                }
            } catch (Throwable th) {
                try {
                    cursorQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }
}
