package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbrx extends zzbrq {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ List f11196o;

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void q3(List list) {
        zzbza.f("Recorded click: ".concat(this.f11196o.toString()));
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void s(String str) {
        zzbza.d("Error recording click: ".concat(String.valueOf(str)));
    }
}
