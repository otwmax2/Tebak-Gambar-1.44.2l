package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzerz implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f17285a;

    public zzerz(List list) {
        this.f17285a = list;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        try {
            ((JSONObject) obj).put("eid", TextUtils.join(",", this.f17285a));
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.k("Failed putting experiment ids.");
        }
    }
}
