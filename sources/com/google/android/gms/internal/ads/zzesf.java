package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzesf implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f17294a;

    public zzesf(Bundle bundle) {
        this.f17294a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (this.f17294a != null) {
            try {
                com.google.android.gms.ads.internal.util.zzbu.f(com.google.android.gms.ads.internal.util.zzbu.f(jSONObject, DeviceRequestsHelper.DEVICE_INFO_DEVICE), "play_store").put("parental_controls", com.google.android.gms.ads.internal.client.zzay.b().n(this.f17294a));
            } catch (JSONException unused) {
                com.google.android.gms.ads.internal.util.zze.k("Failed putting parental controls bundle.");
            }
        }
    }
}
