package com.google.android.gms.internal.ads;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdxn implements zzbly {
    zzdxn() {
    }

    @Override // com.google.android.gms.internal.ads.zzbly
    public final /* bridge */ /* synthetic */ JSONObject c(Object obj) throws JSONException {
        zzdxo zzdxoVar = (zzdxo) obj;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10431y8)).booleanValue()) {
            jSONObject2.put("ad_request_url", zzdxoVar.f15884c.e());
            jSONObject2.put("ad_request_post_body", zzdxoVar.f15884c.d());
        }
        jSONObject2.put("base_url", zzdxoVar.f15884c.b());
        jSONObject2.put("signals", zzdxoVar.f15883b);
        jSONObject3.put(SDKConstants.PARAM_A2U_BODY, zzdxoVar.f15882a.f15931c);
        jSONObject3.put("headers", com.google.android.gms.ads.internal.client.zzay.b().o(zzdxoVar.f15882a.f15930b));
        jSONObject3.put("response_code", zzdxoVar.f15882a.f15929a);
        jSONObject3.put("latency", zzdxoVar.f15882a.f15932d);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", zzdxoVar.f15884c.g());
        return jSONObject;
    }
}
