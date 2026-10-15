package com.google.android.gms.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class AdError {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5561c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AdError f5562d;

    public AdError(int i10, String str, String str2) {
        this(i10, str, str2, null);
    }

    public AdError(int i10, String str, String str2, AdError adError) {
        this.f5559a = i10;
        this.f5560b = str;
        this.f5561c = str2;
        this.f5562d = adError;
    }

    public int a() {
        return this.f5559a;
    }

    public String b() {
        return this.f5561c;
    }

    public String c() {
        return this.f5560b;
    }

    public final com.google.android.gms.ads.internal.client.zze d() {
        com.google.android.gms.ads.internal.client.zze zzeVar;
        if (this.f5562d == null) {
            zzeVar = null;
        } else {
            AdError adError = this.f5562d;
            zzeVar = new com.google.android.gms.ads.internal.client.zze(adError.f5559a, adError.f5560b, adError.f5561c, null, null);
        }
        return new com.google.android.gms.ads.internal.client.zze(this.f5559a, this.f5560b, this.f5561c, zzeVar, null);
    }

    public JSONObject e() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Code", this.f5559a);
        jSONObject.put("Message", this.f5560b);
        jSONObject.put("Domain", this.f5561c);
        AdError adError = this.f5562d;
        if (adError == null) {
            jSONObject.put("Cause", "null");
        } else {
            jSONObject.put("Cause", adError.e());
        }
        return jSONObject;
    }

    public String toString() {
        try {
            return e().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }
}
