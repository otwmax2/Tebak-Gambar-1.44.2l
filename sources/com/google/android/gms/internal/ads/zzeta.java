package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeta implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f17331a;

    public zzeta(Map map) {
        this.f17331a = map;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        try {
            ((JSONObject) obj).put("video_decoders", com.google.android.gms.ads.internal.client.zzay.b().o(this.f17331a));
        } catch (JSONException e10) {
            com.google.android.gms.ads.internal.util.zze.k("Could not encode video decoder properties: ".concat(String.valueOf(e10.getMessage())));
        }
    }
}
