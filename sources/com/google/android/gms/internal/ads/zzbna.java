package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbna {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f11015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f11016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f11017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f11018d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f11019e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f11020f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f11021g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f11022h;

    public zzbna(JSONObject jSONObject) throws JSONException {
        if (zzbza.j(2)) {
            com.google.android.gms.ads.internal.util.zze.k("Mediation Response JSON: ".concat(String.valueOf(jSONObject.toString(2))));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i10 = -1;
        for (int i11 = 0; i11 < jSONArray.length(); i11++) {
            try {
                zzbmz zzbmzVar = new zzbmz(jSONArray.getJSONObject(i11));
                "banner".equalsIgnoreCase(zzbmzVar.f11009v);
                arrayList.add(zzbmzVar);
                if (i10 < 0) {
                    Iterator it = zzbmzVar.f10990c.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (((String) it.next()).equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                                i10 = i11;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            } catch (JSONException unused) {
            }
        }
        jSONArray.length();
        this.f11015a = Collections.unmodifiableList(arrayList);
        this.f11021g = jSONObject.optString("qdata");
        jSONObject.optInt("fs_model_type", -1);
        jSONObject.optLong("timeout_ms", -1L);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("settings");
        if (jSONObjectOptJSONObject == null) {
            this.f11016b = null;
            this.f11017c = null;
            this.f11018d = null;
            this.f11019e = null;
            this.f11020f = null;
            this.f11022h = null;
            return;
        }
        jSONObjectOptJSONObject.optLong("ad_network_timeout_millis", -1L);
        com.google.android.gms.ads.internal.zzt.i();
        this.f11016b = zzbnb.a(jSONObjectOptJSONObject, "click_urls");
        com.google.android.gms.ads.internal.zzt.i();
        this.f11017c = zzbnb.a(jSONObjectOptJSONObject, "imp_urls");
        com.google.android.gms.ads.internal.zzt.i();
        this.f11018d = zzbnb.a(jSONObjectOptJSONObject, "downloaded_imp_urls");
        com.google.android.gms.ads.internal.zzt.i();
        this.f11019e = zzbnb.a(jSONObjectOptJSONObject, "nofill_urls");
        com.google.android.gms.ads.internal.zzt.i();
        this.f11020f = zzbnb.a(jSONObjectOptJSONObject, "remote_ping_urls");
        jSONObjectOptJSONObject.optBoolean("render_in_browser", false);
        jSONObjectOptJSONObject.optLong("refresh", -1L);
        zzbup zzbupVarV3 = zzbup.V3(jSONObjectOptJSONObject.optJSONArray("rewards"));
        if (zzbupVarV3 == null) {
            this.f11022h = null;
        } else {
            this.f11022h = zzbupVarV3.f11356o;
        }
        jSONObjectOptJSONObject.optBoolean("use_displayed_impression", false);
        jSONObjectOptJSONObject.optBoolean("allow_pub_rendered_attribution", false);
        jSONObjectOptJSONObject.optBoolean("allow_pub_owned_ad_view", false);
        jSONObjectOptJSONObject.optBoolean("allow_custom_click_gesture", false);
    }
}
