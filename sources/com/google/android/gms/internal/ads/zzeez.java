package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeez implements zzeav {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private final Map f16487a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdnd f16488b;

    public zzeez(zzdnd zzdndVar) {
        this.f16488b = zzdndVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeav
    public final zzeaw a(String str, JSONObject jSONObject) throws zzezc {
        zzeaw zzeawVar;
        synchronized (this) {
            zzeawVar = (zzeaw) this.f16487a.get(str);
            if (zzeawVar == null) {
                zzeawVar = new zzeaw(this.f16488b.c(str, jSONObject), new zzecr(), str);
                this.f16487a.put(str, zzeawVar);
            }
        }
        return zzeawVar;
    }
}
