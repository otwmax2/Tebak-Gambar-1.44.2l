package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzefp implements zzeav {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzegt f16547a;

    public zzefp(zzegt zzegtVar) {
        this.f16547a = zzegtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeav
    public final zzeaw a(String str, JSONObject jSONObject) throws zzezc {
        zzbpc zzbpcVarA = this.f16547a.a(str);
        if (zzbpcVarA == null) {
            return null;
        }
        return new zzeaw(zzbpcVarA, new zzecq(), str);
    }
}
