package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbib implements zzbic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbzs f10765a;

    zzbib(zzbid zzbidVar, zzbzs zzbzsVar) {
        this.f10765a = zzbzsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void a(JSONObject jSONObject) {
        this.f10765a.c(jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void o(String str) {
        this.f10765a.d(new zzblu(str));
    }
}
