package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbrs extends zzbxn {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ QueryInfoGenerationCallback f11188o;

    zzbrs(zzbrt zzbrtVar, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        this.f11188o = queryInfoGenerationCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzbxo
    public final void E3(String str, String str2, Bundle bundle) {
        this.f11188o.b(new QueryInfo(new com.google.android.gms.ads.internal.client.zzem(str, bundle, str2)));
    }

    @Override // com.google.android.gms.internal.ads.zzbxo
    public final void u(String str) {
        this.f11188o.a(str);
    }
}
