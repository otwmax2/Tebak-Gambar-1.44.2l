package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeqd implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AdvertisingIdClient.Info f17198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f17199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfks f17200c;

    public zzeqd(AdvertisingIdClient.Info info, String str, zzfks zzfksVar) {
        this.f17198a = info;
        this.f17199b = str;
        this.f17200c = zzfksVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        try {
            JSONObject jSONObjectF = com.google.android.gms.ads.internal.util.zzbu.f((JSONObject) obj, "pii");
            AdvertisingIdClient.Info info = this.f17198a;
            if (info == null || TextUtils.isEmpty(info.a())) {
                String str = this.f17199b;
                if (str != null) {
                    jSONObjectF.put("pdid", str);
                    jSONObjectF.put("pdidtype", "ssaid");
                    return;
                }
                return;
            }
            jSONObjectF.put("rdid", this.f17198a.a());
            jSONObjectF.put("is_lat", this.f17198a.b());
            jSONObjectF.put("idtype", "adid");
            zzfks zzfksVar = this.f17200c;
            if (zzfksVar.c()) {
                jSONObjectF.put("paidv1_id_android_3p", zzfksVar.b());
                jSONObjectF.put("paidv1_creation_time_android_3p", this.f17200c.a());
            }
        } catch (JSONException e10) {
            com.google.android.gms.ads.internal.util.zze.l("Failed putting Ad ID.", e10);
        }
    }
}
