package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdyh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbty f15942a;

    zzdyh(zzbty zzbtyVar) {
        this.f15942a = zzbtyVar;
    }

    public static void a(Map map, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("pii");
        if (jSONObjectOptJSONObject == null) {
            com.google.android.gms.ads.internal.util.zze.k("DSID signal does not exist.");
            return;
        }
        if (!TextUtils.isEmpty(jSONObjectOptJSONObject.optString("doritos", BuildConfig.FLAVOR))) {
            map.put("x-afma-drt-cookie", jSONObjectOptJSONObject.optString("doritos", BuildConfig.FLAVOR));
        }
        if (TextUtils.isEmpty(jSONObjectOptJSONObject.optString("doritos_v2", BuildConfig.FLAVOR))) {
            return;
        }
        map.put("x-afma-drt-v2-cookie", jSONObjectOptJSONObject.optString("doritos_v2", BuildConfig.FLAVOR));
    }

    public final void b() {
        zzbzq.a(this.f15942a.a(), "persistFlags");
    }
}
