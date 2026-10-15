package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzesw implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17317a;

    public zzesw(String str) {
        this.f17317a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        try {
            if (TextUtils.isEmpty(this.f17317a)) {
                return;
            }
            com.google.android.gms.ads.internal.util.zzbu.f(jSONObject, "pii").put("adsid", this.f17317a);
        } catch (JSONException e10) {
            zzbza.h("Failed putting trustless token.", e10);
        }
    }
}
