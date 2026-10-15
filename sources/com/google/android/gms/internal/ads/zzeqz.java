package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeqz implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JSONObject f17222a;

    public zzeqz(JSONObject jSONObject) {
        this.f17222a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        try {
            JSONObject jSONObjectF = com.google.android.gms.ads.internal.util.zzbu.f((JSONObject) obj, "content_info");
            JSONObject jSONObject = this.f17222a;
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectF.put(next, jSONObject.get(next));
            }
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.k("Failed putting app indexing json.");
        }
    }
}
