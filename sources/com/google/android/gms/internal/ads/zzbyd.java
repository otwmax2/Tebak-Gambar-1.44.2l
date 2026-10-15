package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbyd {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f11527d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f11528e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f11529f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private JSONObject f11530g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f11531h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f11533j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f11524a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f11525b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f11526c = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f11532i = new ArrayList();

    public zzbyd(String str, long j10) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectOptJSONObject3;
        this.f11531h = false;
        this.f11533j = false;
        this.f11528e = str;
        this.f11529f = j10;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f11530g = jSONObject;
            if (jSONObject.optInt("status", -1) != 1) {
                this.f11531h = false;
                zzbza.g("App settings could not be fetched successfully.");
                return;
            }
            this.f11531h = true;
            this.f11527d = this.f11530g.optString("app_id");
            JSONArray jSONArrayOptJSONArray2 = this.f11530g.optJSONArray("ad_unit_id_settings");
            if (jSONArrayOptJSONArray2 != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray2.length(); i10++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray2.getJSONObject(i10);
                    String strOptString = jSONObject2.optString("format");
                    String strOptString2 = jSONObject2.optString("ad_unit_id");
                    if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                        if ("interstitial".equalsIgnoreCase(strOptString)) {
                            this.f11525b.add(strOptString2);
                        } else if (("rewarded".equalsIgnoreCase(strOptString) || "rewarded_interstitial".equals(strOptString)) && (jSONObjectOptJSONObject3 = jSONObject2.optJSONObject("mediation_config")) != null) {
                            this.f11526c.put(strOptString2, new zzbna(jSONObjectOptJSONObject3));
                        }
                    }
                }
            }
            JSONArray jSONArrayOptJSONArray3 = this.f11530g.optJSONArray("persistable_banner_ad_unit_ids");
            if (jSONArrayOptJSONArray3 != null) {
                for (int i11 = 0; i11 < jSONArrayOptJSONArray3.length(); i11++) {
                    this.f11524a.add(jSONArrayOptJSONArray3.optString(i11));
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10407w6)).booleanValue() && (jSONObjectOptJSONObject2 = this.f11530g.optJSONObject("common_settings")) != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("loeid")) != null) {
                for (int i12 = 0; i12 < jSONArrayOptJSONArray.length(); i12++) {
                    this.f11532i.add(jSONArrayOptJSONArray.get(i12).toString());
                }
            }
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.R5)).booleanValue() || (jSONObjectOptJSONObject = this.f11530g.optJSONObject("common_settings")) == null) {
                return;
            }
            this.f11533j = jSONObjectOptJSONObject.optBoolean("is_prefetching_enabled", false);
        } catch (JSONException e10) {
            zzbza.h("Exception occurred while processing app setting json", e10);
            com.google.android.gms.ads.internal.zzt.q().u(e10, "AppSettings.parseAppSettingsJson");
        }
    }

    public final long a() {
        return this.f11529f;
    }

    public final String b() {
        return this.f11527d;
    }

    public final String c() {
        return this.f11528e;
    }

    public final List d() {
        return this.f11532i;
    }

    public final Map e() {
        return this.f11526c;
    }

    public final JSONObject f() {
        return this.f11530g;
    }

    public final void g(long j10) {
        this.f11529f = j10;
    }

    public final boolean h() {
        return this.f11533j;
    }

    public final boolean i() {
        return this.f11531h;
    }
}
