package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeza {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JSONObject f17752a;

    public zzeza(JSONObject jSONObject) {
        this.f17752a = jSONObject;
    }

    public final String a() {
        if (b() - 1 != 1) {
            return "javascript";
        }
        return null;
    }

    public final int b() {
        int iOptInt = this.f17752a.optInt("media_type", -1);
        if (iOptInt != 0) {
            return iOptInt != 1 ? 3 : 1;
        }
        return 2;
    }
}
