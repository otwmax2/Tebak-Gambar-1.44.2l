package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzcz;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class b extends zzcz {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Context f6036o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzaw f6037p;

    b(zzaw zzawVar, Context context) {
        this.f6037p = zzawVar;
        this.f6036o = context;
    }

    @Override // com.google.android.gms.ads.internal.client.zzda
    public final void Q5(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (zzeVar == null) {
            return;
        }
        this.f6037p.i(this.f6036o, zzeVar.f5842p, true, true);
    }
}
