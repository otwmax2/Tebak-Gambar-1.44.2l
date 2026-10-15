package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzerv implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17276a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f17277b;

    public zzerv(String str, String str2) {
        this.f17276a = str;
        this.f17277b = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        try {
            JSONObject jSONObjectF = com.google.android.gms.ads.internal.util.zzbu.f((JSONObject) obj, "pii");
            jSONObjectF.put("doritos", this.f17276a);
            jSONObjectF.put("doritos_v2", this.f17277b);
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.k("Failed putting doritos string.");
        }
    }
}
