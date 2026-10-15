package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeyh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final JSONObject f17692c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final JSONObject f17693d;

    zzeyh(JsonReader jsonReader) throws IllegalStateException, JSONException, IOException, NumberFormatException {
        JSONObject jSONObjectH = com.google.android.gms.ads.internal.util.zzbu.h(jsonReader);
        this.f17693d = jSONObjectH;
        this.f17690a = jSONObjectH.optString("ad_html", null);
        this.f17691b = jSONObjectH.optString("ad_base_url", null);
        this.f17692c = jSONObjectH.optJSONObject("ad_json");
    }
}
