package a8;

import android.os.Build;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static String a() {
        return Build.MANUFACTURER + "; " + Build.MODEL;
    }

    public static String b() {
        return Integer.toString(Build.VERSION.SDK_INT);
    }

    public static String c() {
        return "Android";
    }

    public static JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        b.g(jSONObject, "deviceType", a());
        b.g(jSONObject, "osVersion", b());
        b.g(jSONObject, "os", c());
        return jSONObject;
    }
}
