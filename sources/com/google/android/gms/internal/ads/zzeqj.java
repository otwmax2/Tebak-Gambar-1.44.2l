package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeqj implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17214a;

    public zzeqj(String str) {
        this.f17214a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        try {
            ((JSONObject) obj).put("ms", this.f17214a);
        } catch (JSONException e10) {
            com.google.android.gms.ads.internal.util.zze.l("Failed putting Ad ID.", e10);
        }
    }
}
