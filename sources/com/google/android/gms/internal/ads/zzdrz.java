package com.google.android.gms.internal.ads;

import com.facebook.internal.ServerProtocol;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdrz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f15526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f15527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f15528d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f15529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f15530f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f15531g;

    public zzdrz(String str, String str2, String str3, int i10, String str4, int i11, boolean z10) {
        this.f15525a = str;
        this.f15526b = str2;
        this.f15527c = str3;
        this.f15528d = i10;
        this.f15529e = str4;
        this.f15530f = i11;
        this.f15531g = z10;
    }

    public final JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("adapterClassName", this.f15525a);
        jSONObject.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, this.f15527c);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10442z8)).booleanValue()) {
            jSONObject.put("sdkVersion", this.f15526b);
        }
        jSONObject.put("status", this.f15528d);
        jSONObject.put("description", this.f15529e);
        jSONObject.put("initializationLatencyMillis", this.f15530f);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.A8)).booleanValue()) {
            jSONObject.put("supportsInitialization", this.f15531g);
        }
        return jSONObject;
    }
}
