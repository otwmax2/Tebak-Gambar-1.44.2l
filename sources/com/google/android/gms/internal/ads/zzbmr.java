package com.google.android.gms.internal.ads;

import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbmr implements zzftq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzblx f10976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbly f10977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f10978c = "google.afma.activeView.handleUpdate";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfut f10979d;

    zzbmr(zzfut zzfutVar, String str, zzbly zzblyVar, zzblx zzblxVar) {
        this.f10979d = zzfutVar;
        this.f10977b = zzblyVar;
        this.f10976a = zzblxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzftq
    public final zzfut a(Object obj) throws Exception {
        return c(obj);
    }

    final /* synthetic */ zzfut b(Object obj, zzbls zzblsVar) throws Exception {
        zzbzs zzbzsVar = new zzbzs();
        com.google.android.gms.ads.internal.zzt.r();
        String string = UUID.randomUUID().toString();
        zzbho.f10727o.c(string, new zzbmq(this, zzbzsVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", string);
        jSONObject.put("args", (JSONObject) obj);
        zzblsVar.Z0(this.f10978c, jSONObject);
        return zzbzsVar;
    }

    public final zzfut c(final Object obj) {
        return zzfuj.m(this.f10979d, new zzftq() { // from class: com.google.android.gms.internal.ads.zzbmp
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj2) {
                return this.f10972a.b(obj, (zzbls) obj2);
            }
        }, zzbzn.f11619f);
    }
}
