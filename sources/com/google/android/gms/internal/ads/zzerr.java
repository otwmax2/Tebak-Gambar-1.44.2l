package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzerr implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JSONObject f17269a;

    zzerr(Context context) {
        this.f17269a = zzbtx.c(context);
    }

    final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.f17269a);
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.k("Failed putting version constants.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 46;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return zzfuj.h(new zzepm() { // from class: com.google.android.gms.internal.ads.zzerq
            @Override // com.google.android.gms.internal.ads.zzepm
            public final void a(Object obj) {
                this.f17268a.a((JSONObject) obj);
            }
        });
    }
}
