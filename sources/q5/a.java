package q5;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.List;

/* JADX INFO: compiled from: AppData.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f33863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f33864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<f> f33865c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f33866d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f33867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f33868f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f33869g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final n5.f f33870h;

    public a(String str, String str2, List<f> list, String str3, String str4, String str5, String str6, n5.f fVar) {
        this.f33863a = str;
        this.f33864b = str2;
        this.f33865c = list;
        this.f33866d = str3;
        this.f33867e = str4;
        this.f33868f = str5;
        this.f33869g = str6;
        this.f33870h = fVar;
    }

    public static a a(Context context, b0 b0Var, String str, String str2, List<f> list, n5.f fVar) throws PackageManager.NameNotFoundException {
        String packageName = context.getPackageName();
        String strG = b0Var.g();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String strB = b(packageInfo);
        String str3 = packageInfo.versionName;
        if (str3 == null) {
            str3 = "0.0";
        }
        return new a(str, str2, list, strG, packageName, strB, str3, fVar);
    }

    private static String b(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? Long.toString(packageInfo.getLongVersionCode()) : Integer.toString(packageInfo.versionCode);
    }
}
