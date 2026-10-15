package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzerk implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17252a;

    public zzerk(String str) {
        this.f17252a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        try {
            JSONObject jSONObjectF = com.google.android.gms.ads.internal.util.zzbu.f((JSONObject) obj, "pii");
            if (TextUtils.isEmpty(this.f17252a)) {
                return;
            }
            jSONObjectF.put("attok", this.f17252a);
        } catch (JSONException e10) {
            com.google.android.gms.ads.internal.util.zze.l("Failed putting attestation token.", e10);
        }
    }
}
