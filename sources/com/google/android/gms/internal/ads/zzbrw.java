package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbrw extends zzbrq {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ List f11195o;

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void q3(List list) {
        zzbza.f("Recorded impression urls: ".concat(this.f11195o.toString()));
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void s(String str) {
        zzbza.d("Error recording impression urls: ".concat(String.valueOf(str)));
    }
}
