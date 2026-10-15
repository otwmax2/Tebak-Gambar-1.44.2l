package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcma implements zzclt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdsf f13476a;

    zzcma(zzdsf zzdsfVar) {
        this.f13476a = zzdsfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzclt
    public final void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10398v8)).booleanValue()) {
                this.f13476a.l(jSONObject);
            }
        }
    }
}
