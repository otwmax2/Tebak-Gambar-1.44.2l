package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdwj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f15806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdwe f15807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfda f15808c;

    zzdwj(zzfuu zzfuuVar, zzdwe zzdweVar, zzfda zzfdaVar) {
        this.f15806a = zzfuuVar;
        this.f15807b = zzdweVar;
        this.f15808c = zzfdaVar;
    }

    public final zzfut a(final zzbtn zzbtnVar) {
        zzfcr zzfcrVarB = this.f15808c.b(zzfcu.GMS_SIGNALS, zzfuj.l(zzfuj.h(null), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzdwg
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                zzbtn zzbtnVar2 = zzbtnVar;
                return new zzbsr(zzbtnVar2.f11274q, zzbtnVar2.f11275r, zzbtnVar2.f11277t, zzfoj.c(zzbtnVar2.f11272o.getString("ms")), -1, zzbtnVar2.f11279v, zzbtnVar2.f11276s, zzbtnVar2.f11282y, zzbtnVar2.f11283z);
            }
        }, this.f15806a));
        final zzdwe zzdweVar = this.f15807b;
        return zzfuj.l(zzfcrVarB.f(new zzftq() { // from class: com.google.android.gms.internal.ads.zzdwh
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzdweVar.b((zzbsr) obj);
            }
        }).a(), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzdwi
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                Bundle bundle = zzbtnVar.f11272o;
                if (bundle == null) {
                    return jSONObject;
                }
                try {
                    JSONObject jSONObjectN = com.google.android.gms.ads.internal.client.zzay.b().n(bundle);
                    try {
                        com.google.android.gms.ads.internal.client.zzay.b().q(jSONObject, jSONObjectN);
                        return jSONObject;
                    } catch (JSONException unused) {
                        return jSONObjectN;
                    }
                } catch (JSONException unused2) {
                    return jSONObject;
                }
            }
        }, this.f15806a);
    }
}
