package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzere implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final String f17236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final int f17237b;

    public zzere(String str, int i10) {
        this.f17236a = str;
        this.f17237b = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (TextUtils.isEmpty(this.f17236a) || this.f17237b == -1) {
            return;
        }
        try {
            JSONObject jSONObjectF = com.google.android.gms.ads.internal.util.zzbu.f(jSONObject, "pii");
            jSONObjectF.put("pvid", this.f17236a);
            jSONObjectF.put("pvid_s", this.f17237b);
        } catch (JSONException e10) {
            com.google.android.gms.ads.internal.util.zze.l("Failed putting gms core app set ID info.", e10);
        }
    }
}
