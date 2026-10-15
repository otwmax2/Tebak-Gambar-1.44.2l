package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzeyc;
import com.google.android.gms.internal.ads.zzfng;
import com.google.android.gms.internal.ads.zzfoh;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbx {
    public static Point a(MotionEvent motionEvent, View view) {
        int[] iArrJ = j(view);
        return new Point(((int) motionEvent.getRawX()) - iArrJ[0], ((int) motionEvent.getRawY()) - iArrJ[1]);
    }

    public static WindowManager.LayoutParams b() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10364s7)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    public static JSONObject c(String str, Context context, Point point, Point point2) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            jSONObject = new JSONObject();
        } catch (Exception e10) {
            e = e10;
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("x", com.google.android.gms.ads.internal.client.zzay.b().g(context, point2.x));
                jSONObject3.put("y", com.google.android.gms.ads.internal.client.zzay.b().g(context, point2.y));
                jSONObject3.put("start_x", com.google.android.gms.ads.internal.client.zzay.b().g(context, point.x));
                jSONObject3.put("start_y", com.google.android.gms.ads.internal.client.zzay.b().g(context, point.y));
                jSONObject2 = jSONObject3;
            } catch (JSONException e11) {
                zzbza.e("Error occurred while putting signals into JSON object.", e11);
            }
            jSONObject.put("click_point", jSONObject2);
            jSONObject.put("asset_id", str);
            return jSONObject;
        } catch (Exception e12) {
            e = e12;
            jSONObject2 = jSONObject;
            zzbza.e("Error occurred while grabbing click signals.", e);
            return jSONObject2;
        }
    }

    public static JSONObject d(Context context, Map map, Map map2, View view, ImageView.ScaleType scaleType) {
        String str;
        String str2;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        String str3 = "ad_view";
        String str4 = "relative_to";
        JSONObject jSONObject3 = new JSONObject();
        if (map == null || view == null) {
            return jSONObject3;
        }
        int[] iArrJ = j(view);
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            View view2 = (View) ((WeakReference) entry.getValue()).get();
            if (view2 != null) {
                int[] iArrJ2 = j(view2);
                JSONObject jSONObject4 = new JSONObject();
                JSONObject jSONObject5 = new JSONObject();
                Iterator it2 = it;
                try {
                    JSONObject jSONObject6 = jSONObject3;
                    try {
                        jSONObject5.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, com.google.android.gms.ads.internal.client.zzay.b().g(context, view2.getMeasuredWidth()));
                        jSONObject5.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, com.google.android.gms.ads.internal.client.zzay.b().g(context, view2.getMeasuredHeight()));
                        jSONObject5.put("x", com.google.android.gms.ads.internal.client.zzay.b().g(context, iArrJ2[0] - iArrJ[0]));
                        jSONObject5.put("y", com.google.android.gms.ads.internal.client.zzay.b().g(context, iArrJ2[1] - iArrJ[1]));
                        jSONObject5.put(str4, str3);
                        jSONObject4.put("frame", jSONObject5);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject2 = k(context, rect);
                        } else {
                            jSONObject2 = new JSONObject();
                            jSONObject2.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, 0);
                            jSONObject2.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, 0);
                            jSONObject2.put("x", com.google.android.gms.ads.internal.client.zzay.b().g(context, iArrJ2[0] - iArrJ[0]));
                            jSONObject2.put("y", com.google.android.gms.ads.internal.client.zzay.b().g(context, iArrJ2[1] - iArrJ[1]));
                            jSONObject2.put(str4, str3);
                        }
                        jSONObject4.put("visible_bounds", jSONObject2);
                        if (((String) entry.getKey()).equals("3010")) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10298m7)).booleanValue()) {
                                jSONObject4.put("mediaview_graphics_matrix", view2.getMatrix().toShortString());
                            }
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10309n7)).booleanValue()) {
                                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                                jSONObject4.put("view_width_layout_type", l(layoutParams.width) - 1);
                                jSONObject4.put("view_height_layout_type", l(layoutParams.height) - 1);
                            }
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10320o7)).booleanValue()) {
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(Integer.valueOf(view2.getId()));
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    arrayList.add(Integer.valueOf(((View) parent).getId()));
                                }
                                jSONObject4.put("view_path", TextUtils.join("/", arrayList));
                            }
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10331p7)).booleanValue() && scaleType != null) {
                                jSONObject4.put("mediaview_scale_type", scaleType.ordinal());
                            }
                        }
                        if (view2 instanceof TextView) {
                            TextView textView = (TextView) view2;
                            jSONObject4.put("text_color", textView.getCurrentTextColor());
                            str = str3;
                            str2 = str4;
                            try {
                                jSONObject4.put(ViewHierarchyConstants.TEXT_SIZE, textView.getTextSize());
                                jSONObject4.put("text", textView.getText());
                            } catch (JSONException unused) {
                                jSONObject = jSONObject6;
                                zzbza.g("Unable to get asset views information");
                                it = it2;
                                jSONObject3 = jSONObject;
                                str3 = str;
                                str4 = str2;
                            }
                        } else {
                            str = str3;
                            str2 = str4;
                        }
                        jSONObject4.put("is_clickable", map2 != null && map2.containsKey(entry.getKey()) && view2.isClickable());
                        jSONObject = jSONObject6;
                    } catch (JSONException unused2) {
                        str = str3;
                        str2 = str4;
                    }
                } catch (JSONException unused3) {
                    str = str3;
                    str2 = str4;
                    jSONObject = jSONObject3;
                }
                try {
                    jSONObject.put((String) entry.getKey(), jSONObject4);
                } catch (JSONException unused4) {
                    zzbza.g("Unable to get asset views information");
                }
                it = it2;
                jSONObject3 = jSONObject;
                str3 = str;
                str4 = str2;
            }
        }
        return jSONObject3;
    }

    public static JSONObject e(Context context, View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            com.google.android.gms.ads.internal.zzt.r();
            jSONObject.put("can_show_on_lock_screen", zzs.K(view));
            com.google.android.gms.ads.internal.zzt.r();
            jSONObject.put("is_keyguard_locked", zzs.Y(context));
        } catch (JSONException unused) {
            zzbza.g("Unable to get lock screen information");
        }
        return jSONObject;
    }

    public static JSONObject f(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10287l7)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.r();
                ViewParent parent = view.getParent();
                while (parent != null && !(parent instanceof ScrollView)) {
                    parent = parent.getParent();
                }
                if (parent != null) {
                    z = true;
                }
                jSONObject.put("contained_in_scroll_view", z);
            } else {
                com.google.android.gms.ads.internal.zzt.r();
                ViewParent parent2 = view.getParent();
                while (parent2 != null && !(parent2 instanceof AdapterView)) {
                    parent2 = parent2.getParent();
                }
                jSONObject.put("contained_in_scroll_view", (parent2 == null ? -1 : ((AdapterView) parent2).getPositionForView(view)) != -1);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0170 A[Catch: JSONException -> 0x0175, TRY_LEAVE, TryCatch #3 {JSONException -> 0x0175, blocks: (B:30:0x013c, B:47:0x0167, B:48:0x016b, B:49:0x0170), top: B:63:0x013c }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0176 -> B:62:0x017b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.json.JSONObject g(android.content.Context r16, android.view.View r17) {
        /*
            Method dump skipped, instruction units count: 432
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzbx.g(android.content.Context, android.view.View):org.json.JSONObject");
    }

    public static boolean h(Context context, zzeyc zzeycVar) {
        if (!zzeycVar.O) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10342q7)).booleanValue()) {
            return ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10375t7)).booleanValue();
        }
        String str = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10353r7);
        if (!str.isEmpty() && context != null) {
            String packageName = context.getPackageName();
            Iterator it = zzfoh.c(zzfng.c(';')).d(str).iterator();
            while (it.hasNext()) {
                if (((String) it.next()).equals(packageName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean i(int i10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Y2)).booleanValue()) {
            return ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Z2)).booleanValue() || i10 <= 15299999;
        }
        return true;
    }

    public static int[] j(View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }

    private static JSONObject k(Context context, Rect rect) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, com.google.android.gms.ads.internal.client.zzay.b().g(context, rect.right - rect.left));
        jSONObject.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, com.google.android.gms.ads.internal.client.zzay.b().g(context, rect.bottom - rect.top));
        jSONObject.put("x", com.google.android.gms.ads.internal.client.zzay.b().g(context, rect.left));
        jSONObject.put("y", com.google.android.gms.ads.internal.client.zzay.b().g(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    private static int l(int i10) {
        if (i10 != -2) {
            return i10 != -1 ? 2 : 3;
        }
        return 4;
    }
}
