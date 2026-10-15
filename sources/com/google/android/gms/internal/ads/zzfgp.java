package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfgp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static WindowManager f18181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f18182b = {"x", "y", ViewHierarchyConstants.DIMENSION_WIDTH_KEY, ViewHierarchyConstants.DIMENSION_HEIGHT_KEY};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static float f18183c = Resources.getSystem().getDisplayMetrics().density;

    public static JSONObject a(int i10, int i11, int i12, int i13) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i10 / f18183c);
            jSONObject.put("y", i11 / f18183c);
            jSONObject.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, i12 / f18183c);
            jSONObject.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, i13 / f18183c);
        } catch (JSONException e10) {
            zzfgq.a("Error with creating viewStateObject", e10);
        }
        return jSONObject;
    }

    public static void b(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e10) {
            zzfgq.a("Error with setting ad session id", e10);
        }
    }

    public static void c(JSONObject jSONObject, JSONObject jSONObject2) {
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

    public static void d(JSONObject jSONObject, zzfgt zzfgtVar) {
        zzfgb zzfgbVarA = zzfgtVar.a();
        JSONArray jSONArray = new JSONArray();
        ArrayList arrayListB = zzfgtVar.b();
        int size = arrayListB.size();
        for (int i10 = 0; i10 < size; i10++) {
            jSONArray.put((String) arrayListB.get(i10));
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", zzfgbVarA.d());
            jSONObject.put("friendlyObstructionPurpose", zzfgbVarA.a());
            jSONObject.put("friendlyObstructionReason", zzfgbVarA.c());
        } catch (JSONException e10) {
            zzfgq.a("Error with setting friendly obstruction", e10);
        }
    }

    public static void e(JSONObject jSONObject, Boolean bool) {
        try {
            jSONObject.put("hasWindowFocus", bool);
        } catch (JSONException e10) {
            zzfgq.a("Error with setting not visible reason", e10);
        }
    }

    public static void f(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e10) {
            zzfgq.a("Error with setting not visible reason", e10);
        }
    }

    public static void g(Context context) {
        if (context != null) {
            f18183c = context.getResources().getDisplayMetrics().density;
            f18181a = (WindowManager) context.getSystemService("window");
        }
    }

    public static void h(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (NullPointerException | JSONException e10) {
            zzfgq.a("JSONException during JSONObject.put for name [" + str + "]", e10);
        }
    }

    public static void i(JSONObject jSONObject) {
        float f10;
        float f11 = 0.0f;
        if (f18181a != null) {
            Point point = new Point(0, 0);
            f18181a.getDefaultDisplay().getRealSize(point);
            float f12 = point.x;
            float f13 = f18183c;
            f11 = f12 / f13;
            f10 = point.y / f13;
        } else {
            f10 = 0.0f;
        }
        try {
            jSONObject.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, f11);
            jSONObject.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, f10);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean j(org.json.JSONObject r9, org.json.JSONObject r10) {
        /*
            r0 = 1
            if (r9 != 0) goto L7
            if (r10 == 0) goto L6
            goto L7
        L6:
            return r0
        L7:
            r1 = 0
            if (r9 == 0) goto Lab
            if (r10 != 0) goto Le
            goto Lab
        Le:
            java.lang.String[] r2 = com.google.android.gms.internal.ads.zzfgp.f18182b
            r3 = 0
        L11:
            r4 = 4
            if (r3 >= r4) goto L27
            r4 = r2[r3]
            double r5 = r9.optDouble(r4)
            double r7 = r10.optDouble(r4)
            int r4 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r4 == 0) goto L24
            goto Lab
        L24:
            int r3 = r3 + 1
            goto L11
        L27:
            java.lang.String r2 = "adSessionId"
            java.lang.String r3 = ""
            java.lang.String r4 = r9.optString(r2, r3)
            java.lang.String r2 = r10.optString(r2, r3)
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto Lab
            java.lang.String r2 = "hasWindowFocus"
            boolean r4 = r9.optBoolean(r2)
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            boolean r2 = r10.optBoolean(r2)
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto Lab
            java.lang.String r2 = "isFriendlyObstructionFor"
            org.json.JSONArray r4 = r9.optJSONArray(r2)
            org.json.JSONArray r2 = r10.optJSONArray(r2)
            if (r4 != 0) goto L60
            if (r2 != 0) goto L60
            goto L7e
        L60:
            boolean r5 = k(r4, r2)
            if (r5 == 0) goto Lab
            r5 = 0
        L67:
            int r6 = r4.length()
            if (r5 >= r6) goto L7e
            java.lang.String r6 = r4.optString(r5, r3)
            java.lang.String r7 = r2.optString(r5, r3)
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto Lab
            int r5 = r5 + 1
            goto L67
        L7e:
            java.lang.String r2 = "childViews"
            org.json.JSONArray r9 = r9.optJSONArray(r2)
            org.json.JSONArray r10 = r10.optJSONArray(r2)
            if (r9 != 0) goto L8c
            if (r10 == 0) goto Laa
        L8c:
            boolean r2 = k(r9, r10)
            if (r2 == 0) goto Lab
            r2 = 0
        L93:
            int r3 = r9.length()
            if (r2 >= r3) goto Laa
            org.json.JSONObject r3 = r9.optJSONObject(r2)
            org.json.JSONObject r4 = r10.optJSONObject(r2)
            boolean r3 = j(r3, r4)
            if (r3 == 0) goto Lab
            int r2 = r2 + 1
            goto L93
        Laa:
            return r0
        Lab:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfgp.j(org.json.JSONObject, org.json.JSONObject):boolean");
    }

    private static boolean k(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }
}
