package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbmq implements zzbic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbzs f10974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzbmr f10975b;

    public zzbmq(zzbmr zzbmrVar, zzbzs zzbzsVar) {
        this.f10975b = zzbmrVar;
        this.f10974a = zzbzsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void a(JSONObject jSONObject) {
        try {
            this.f10974a.c(jSONObject);
        } catch (IllegalStateException unused) {
        } catch (JSONException e10) {
            this.f10974a.d(e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void o(String str) {
        try {
            if (str == null) {
                this.f10974a.d(new zzblu());
            } else {
                this.f10974a.d(new zzblu(str));
            }
        } catch (IllegalStateException unused) {
        }
    }
}
