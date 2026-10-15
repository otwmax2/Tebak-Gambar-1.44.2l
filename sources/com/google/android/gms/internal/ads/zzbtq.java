package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.facebook.internal.ServerProtocol;
import com.vungle.warren.model.ReportDBAdapter;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbtq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f11284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f11285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f11286c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f11287d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f11288e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f11289f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f11290g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f11291h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f11292i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f11293j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final JSONObject f11294k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f11295l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final String f11296m;

    public zzbtq(JSONObject jSONObject) {
        this.f11292i = jSONObject.optString("url");
        this.f11285b = jSONObject.optString("base_uri");
        this.f11286c = jSONObject.optString("post_parameters");
        this.f11288e = j(jSONObject.optString("drt_include"));
        this.f11289f = j(jSONObject.optString("cookies_include", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));
        this.f11290g = jSONObject.optString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID);
        this.f11287d = jSONObject.optString("type");
        String strOptString = jSONObject.optString(ReportDBAdapter.ReportColumns.COLUMN_ERRORS);
        this.f11284a = strOptString == null ? null : Arrays.asList(strOptString.split(","));
        this.f11293j = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        this.f11291h = jSONObject.optString("fetched_ad");
        jSONObject.optBoolean("render_test_ad_label");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.f11294k = jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
        this.f11295l = jSONObject.optString("analytics_query_ad_event_id");
        jSONObject.optBoolean("is_analytics_logging_enabled");
        this.f11296m = jSONObject.optString("pool_key");
    }

    private static boolean j(String str) {
        return str != null && (str.equals(AppEventsConstants.EVENT_PARAM_VALUE_YES) || str.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));
    }

    public final int a() {
        return this.f11293j;
    }

    public final String b() {
        return this.f11285b;
    }

    public final String c() {
        return this.f11296m;
    }

    public final String d() {
        return this.f11286c;
    }

    public final String e() {
        return this.f11292i;
    }

    public final List f() {
        return this.f11284a;
    }

    public final JSONObject g() {
        return this.f11294k;
    }

    public final boolean h() {
        return this.f11289f;
    }

    public final boolean i() {
        return this.f11288e;
    }
}
