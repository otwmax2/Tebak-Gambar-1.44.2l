package y8;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import androidx.browser.customtabs.d;
import com.tebakgambar.R;
import com.twitter.sdk.android.core.a0;

/* JADX INFO: compiled from: AppUtil.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f37038a = "https://www.facebook.com/TebakGambarOfficial";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f37039b = "566897873338343";

    private static String a(Context context) {
        try {
            if (context.getPackageManager().getPackageInfo("com.facebook.katana", 0).versionCode >= 3002850) {
                return "fb://facewebmodal/f?href=" + f37038a;
            }
            return "fb://page/" + f37039b;
        } catch (PackageManager.NameNotFoundException unused) {
            return f37038a;
        }
    }

    public static boolean b(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean c(Context context) {
        return b(context, "com.facebook.katana") || b(context, "com.facebook.lite");
    }

    public static boolean d(Context context) {
        return b(context, "com.instagram.android");
    }

    static boolean e() {
        com.twitter.sdk.android.core.n<a0> nVarI = com.twitter.sdk.android.core.x.h().i();
        return (nVarI == null || nVarI.c() == null || ((a0) nVarI.c()).c().isEmpty()) ? false : true;
    }

    public static void f(Context context, Uri uri) {
        try {
            new d.a().d(context.getResources().getColor(R.color.color_dark_green_1)).a().a(context, uri);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void g(Activity activity, int i10, Uri uri) throws n {
        if (Build.VERSION.SDK_INT >= 16) {
            int iA = androidx.core.content.a.a(activity, "android.permission.READ_EXTERNAL_STORAGE");
            int iA2 = androidx.core.content.a.a(activity, "android.permission.WRITE_EXTERNAL_STORAGE");
            if (iA != 0 || iA2 != 0) {
                throw new n(new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"});
            }
        }
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", uri);
        activity.startActivityForResult(intent, i10);
    }

    public static void h(Activity activity, int i10) throws n {
        if (Build.VERSION.SDK_INT >= 16 && androidx.core.content.a.a(activity, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            throw new n(new String[]{"android.permission.READ_EXTERNAL_STORAGE"});
        }
        Intent intent = new Intent("android.intent.action.GET_CONTENT", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setType("image/*");
        activity.startActivityForResult(intent, i10);
    }

    public static boolean i(Context context) {
        if (!c(context)) {
            f(context, Uri.parse("https://m.facebook.com/TebakGambarOfficial"));
            return false;
        }
        try {
            String strA = a(context);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setData(Uri.parse(strA));
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }

    public static void j(Context context) {
        f(context, Uri.parse("http://j.mp/ig-tg"));
    }

    public static void k(Context context) {
        f(context, Uri.parse("http://j.mp/lineattg"));
    }

    public static void l(Context context) {
        f(context, Uri.parse("http://bit.ly/native-tg-placeholder"));
    }

    public static void m(Context context) {
        f(context, Uri.parse("http://j.mp/twitter-tg"));
    }
}
