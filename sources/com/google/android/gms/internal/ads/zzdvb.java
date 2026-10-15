package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdvb implements zzcxj {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f15739o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzbxf f15740p;

    zzdvb(Context context, zzbxf zzbxfVar) {
        this.f15739o = context;
        this.f15740p = zzbxfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void l0(zzeyo zzeyoVar) {
        if (TextUtils.isEmpty(zzeyoVar.f17703b.f17700b.f17681d)) {
            return;
        }
        this.f15740p.u(this.f15739o, zzeyoVar.f17702a.f17696a.f17731d);
        this.f15740p.q(this.f15739o, zzeyoVar.f17703b.f17700b.f17681d);
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void t0(zzbtn zzbtnVar) {
    }
}
