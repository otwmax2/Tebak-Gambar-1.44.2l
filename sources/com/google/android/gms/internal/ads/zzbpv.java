package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.content.Intent;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbpv implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzbpx f11109o;

    zzbpv(zzbpx zzbpxVar) {
        this.f11109o = zzbpxVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        Intent intentI = this.f11109o.i();
        com.google.android.gms.ads.internal.zzt.r();
        com.google.android.gms.ads.internal.util.zzs.q(this.f11109o.f11112d, intentI);
    }
}
