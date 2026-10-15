package com.google.android.gms.internal.ads;

import com.facebook.internal.ServerProtocol;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbmz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f10989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f10990c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f10991d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f10992e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f10993f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List f10994g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f10995h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f10996i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f10997j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f10998k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final List f10999l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List f11000m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List f11001n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f11002o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f11003p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f11004q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final String f11005r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final String f11006s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final List f11007t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final String f11008u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final String f11009v;

    public zzbmz(JSONObject jSONObject) throws JSONException {
        List listA;
        this.f10989b = jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            arrayList.add(jSONArray.getString(i10));
        }
        this.f10990c = Collections.unmodifiableList(arrayList);
        this.f10991d = jSONObject.optString("allocation_id", null);
        com.google.android.gms.ads.internal.zzt.i();
        this.f10993f = zzbnb.a(jSONObject, "clickurl");
        com.google.android.gms.ads.internal.zzt.i();
        this.f10994g = zzbnb.a(jSONObject, "imp_urls");
        com.google.android.gms.ads.internal.zzt.i();
        this.f10995h = zzbnb.a(jSONObject, "downloaded_imp_urls");
        com.google.android.gms.ads.internal.zzt.i();
        this.f10997j = zzbnb.a(jSONObject, "fill_urls");
        com.google.android.gms.ads.internal.zzt.i();
        this.f10999l = zzbnb.a(jSONObject, "video_start_urls");
        com.google.android.gms.ads.internal.zzt.i();
        this.f11001n = zzbnb.a(jSONObject, "video_complete_urls");
        com.google.android.gms.ads.internal.zzt.i();
        this.f11000m = zzbnb.a(jSONObject, "video_reward_urls");
        this.f11002o = jSONObject.optString("transaction_id");
        this.f11003p = jSONObject.optString("valid_from_timestamp");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("ad");
        if (jSONObjectOptJSONObject != null) {
            com.google.android.gms.ads.internal.zzt.i();
            listA = zzbnb.a(jSONObjectOptJSONObject, "manual_impression_urls");
        } else {
            listA = null;
        }
        this.f10996i = listA;
        this.f10988a = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.toString() : null;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("data");
        this.f10998k = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.toString() : null;
        this.f10992e = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("class_name") : null;
        this.f11004q = jSONObject.optString("html_template", null);
        this.f11005r = jSONObject.optString("ad_base_url", null);
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("assets");
        this.f11006s = jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.toString() : null;
        com.google.android.gms.ads.internal.zzt.i();
        this.f11007t = zzbnb.a(jSONObject, "template_ids");
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        this.f11008u = jSONObjectOptJSONObject4 != null ? jSONObjectOptJSONObject4.toString() : null;
        this.f11009v = jSONObject.optString(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, null);
        jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
