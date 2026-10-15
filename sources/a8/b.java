package a8;

import android.content.Context;
import android.content.res.Resources;
import android.view.WindowManager;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.vungle.mediation.BuildConfig;
import d8.b;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static WindowManager f51a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String[] f52b = {"x", "y", ViewHierarchyConstants.DIMENSION_WIDTH_KEY, ViewHierarchyConstants.DIMENSION_HEIGHT_KEY};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static float f53c = Resources.getSystem().getDisplayMetrics().density;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final float f54a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final float f55b;

        a(float f10, float f11) {
            this.f54a = f10;
            this.f55b = f11;
        }
    }

    static float a(int i10) {
        return i10 / f53c;
    }

    public static JSONObject b(int i10, int i11, int i12, int i13) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", a(i10));
            jSONObject.put("y", a(i11));
            jSONObject.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, a(i12));
            jSONObject.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, a(i13));
        } catch (JSONException e10) {
            c.b("Error with creating viewStateObject", e10);
        }
        return jSONObject;
    }

    public static void c(Context context) {
        if (context != null) {
            f53c = context.getResources().getDisplayMetrics().density;
            f51a = (WindowManager) context.getSystemService("window");
        }
    }

    public static void d(JSONObject jSONObject) {
        a aVarJ = j(jSONObject);
        try {
            jSONObject.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, aVarJ.f54a);
            jSONObject.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, aVarJ.f55b);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public static void e(JSONObject jSONObject, b.a aVar) {
        y7.c cVarA = aVar.a();
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = aVar.c().iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", cVarA.b());
            jSONObject.put("friendlyObstructionPurpose", cVarA.c());
            jSONObject.put("friendlyObstructionReason", cVarA.d());
        } catch (JSONException e10) {
            c.b("Error with setting friendly obstruction", e10);
        }
    }

    public static void f(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e10) {
            c.b("Error with setting ad session id", e10);
        }
    }

    public static void g(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e10) {
            c.b("JSONException during JSONObject.put for name [" + str + "]", e10);
        }
    }

    public static void h(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONObject.put("childViews", jSONArrayOptJSONArray);
            }
            jSONArrayOptJSONArray.put(jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    private static boolean i(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static a8.b.a j(org.json.JSONObject r13) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 0
            r2 = 0
            r3 = 17
            if (r0 < r3) goto L27
            android.view.WindowManager r13 = a8.b.f51a
            if (r13 == 0) goto L66
            android.graphics.Point r13 = new android.graphics.Point
            r13.<init>(r2, r2)
            android.view.WindowManager r0 = a8.b.f51a
            android.view.Display r0 = r0.getDefaultDisplay()
            r0.getRealSize(r13)
            int r0 = r13.x
            float r1 = a(r0)
            int r13 = r13.y
            float r13 = a(r13)
            goto L67
        L27:
            java.lang.String r0 = "childViews"
            org.json.JSONArray r13 = r13.optJSONArray(r0)
            if (r13 == 0) goto L66
            int r0 = r13.length()
            r2 = 0
            r3 = 0
        L35:
            if (r3 >= r0) goto L64
            org.json.JSONObject r4 = r13.optJSONObject(r3)
            if (r4 == 0) goto L61
            java.lang.String r5 = "x"
            double r5 = r4.optDouble(r5)
            java.lang.String r7 = "y"
            double r7 = r4.optDouble(r7)
            java.lang.String r9 = "width"
            double r9 = r4.optDouble(r9)
            java.lang.String r11 = "height"
            double r11 = r4.optDouble(r11)
            double r5 = r5 + r9
            float r4 = (float) r5
            float r1 = java.lang.Math.max(r1, r4)
            double r7 = r7 + r11
            float r4 = (float) r7
            float r2 = java.lang.Math.max(r2, r4)
        L61:
            int r3 = r3 + 1
            goto L35
        L64:
            r13 = r2
            goto L67
        L66:
            r13 = 0
        L67:
            a8.b$a r0 = new a8.b$a
            r0.<init>(r1, r13)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: a8.b.j(org.json.JSONObject):a8.b$a");
    }

    public static void k(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e10) {
            c.b("Error with setting not visible reason", e10);
        }
    }

    public static boolean l(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        return jSONObject != null && jSONObject2 != null && m(jSONObject, jSONObject2) && n(jSONObject, jSONObject2) && o(jSONObject, jSONObject2) && p(jSONObject, jSONObject2);
    }

    private static boolean m(JSONObject jSONObject, JSONObject jSONObject2) {
        for (String str : f52b) {
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        return true;
    }

    private static boolean n(JSONObject jSONObject, JSONObject jSONObject2) {
        return jSONObject.optString("adSessionId", BuildConfig.FLAVOR).equals(jSONObject2.optString("adSessionId", BuildConfig.FLAVOR));
    }

    private static boolean o(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
        if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) {
            return true;
        }
        if (!i(jSONArrayOptJSONArray, jSONArrayOptJSONArray2)) {
            return false;
        }
        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
            if (!jSONArrayOptJSONArray.optString(i10, BuildConfig.FLAVOR).equals(jSONArrayOptJSONArray2.optString(i10, BuildConfig.FLAVOR))) {
                return false;
            }
        }
        return true;
    }

    private static boolean p(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("childViews");
        if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) {
            return true;
        }
        if (!i(jSONArrayOptJSONArray, jSONArrayOptJSONArray2)) {
            return false;
        }
        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
            if (!l(jSONArrayOptJSONArray.optJSONObject(i10), jSONArrayOptJSONArray2.optJSONObject(i10))) {
                return false;
            }
        }
        return true;
    }
}
