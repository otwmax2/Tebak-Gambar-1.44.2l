package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdql {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Long f15397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f15398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f15399c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f15400d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f15401e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Integer f15402f;

    /* synthetic */ zzdql(String str, zzdqk zzdqkVar) {
        this.f15398b = str;
    }

    static /* bridge */ /* synthetic */ String a(zzdql zzdqlVar) {
        String str = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.R8);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("objectId", zzdqlVar.f15397a);
            jSONObject.put("eventCategory", zzdqlVar.f15398b);
            jSONObject.putOpt("event", zzdqlVar.f15399c);
            jSONObject.putOpt("errorCode", zzdqlVar.f15400d);
            jSONObject.putOpt("rewardType", zzdqlVar.f15401e);
            jSONObject.putOpt("rewardAmount", zzdqlVar.f15402f);
        } catch (JSONException unused) {
            zzbza.g("Could not convert parameters to JSON.");
        }
        return str + "(\"h5adsEvent\"," + jSONObject.toString() + ");";
    }
}
