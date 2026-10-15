package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbri {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f11186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f11187b;

    public zzbri(boolean z10, String str) {
        this.f11186a = z10;
        this.f11187b = str;
    }

    public static zzbri a(JSONObject jSONObject) {
        return new zzbri(jSONObject.optBoolean("enable_prewarming", false), jSONObject.optString("prefetch_url", BuildConfig.FLAVOR));
    }
}
