package com.google.android.gms.ads;

import com.google.android.gms.ads.internal.client.zzu;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class AdapterResponseInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzu f5600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AdError f5601b;

    private AdapterResponseInfo(zzu zzuVar) {
        this.f5600a = zzuVar;
        com.google.android.gms.ads.internal.client.zze zzeVar = zzuVar.f5949q;
        this.f5601b = zzeVar == null ? null : zzeVar.V3();
    }

    public static AdapterResponseInfo e(zzu zzuVar) {
        if (zzuVar != null) {
            return new AdapterResponseInfo(zzuVar);
        }
        return null;
    }

    public String a() {
        return this.f5600a.f5952t;
    }

    public String b() {
        return this.f5600a.f5954v;
    }

    public String c() {
        return this.f5600a.f5953u;
    }

    public String d() {
        return this.f5600a.f5951s;
    }

    public final JSONObject f() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Adapter", this.f5600a.f5947o);
        jSONObject.put("Latency", this.f5600a.f5948p);
        String strD = d();
        if (strD == null) {
            jSONObject.put("Ad Source Name", "null");
        } else {
            jSONObject.put("Ad Source Name", strD);
        }
        String strA = a();
        if (strA == null) {
            jSONObject.put("Ad Source ID", "null");
        } else {
            jSONObject.put("Ad Source ID", strA);
        }
        String strC = c();
        if (strC == null) {
            jSONObject.put("Ad Source Instance Name", "null");
        } else {
            jSONObject.put("Ad Source Instance Name", strC);
        }
        String strB = b();
        if (strB == null) {
            jSONObject.put("Ad Source Instance ID", "null");
        } else {
            jSONObject.put("Ad Source Instance ID", strB);
        }
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.f5600a.f5950r.keySet()) {
            jSONObject2.put(str, this.f5600a.f5950r.get(str));
        }
        jSONObject.put("Credentials", jSONObject2);
        AdError adError = this.f5601b;
        if (adError == null) {
            jSONObject.put("Ad Error", "null");
        } else {
            jSONObject.put("Ad Error", adError.e());
        }
        return jSONObject;
    }

    public String toString() {
        try {
            return f().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }
}
