package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzero implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JSONObject f17264a;

    public zzero(JSONObject jSONObject) {
        this.f17264a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        try {
            ((JSONObject) obj).put("cache_state", this.f17264a);
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.k("Unable to get cache_state");
        }
    }
}
