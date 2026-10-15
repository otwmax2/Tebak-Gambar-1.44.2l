package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzedh implements zzeav {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdnd f16321a;

    public zzedh(zzdnd zzdndVar) {
        this.f16321a = zzdndVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeav
    public final zzeaw a(String str, JSONObject jSONObject) throws zzezc {
        return new zzeaw(this.f16321a.c(str, jSONObject), new zzecq(), str);
    }
}
