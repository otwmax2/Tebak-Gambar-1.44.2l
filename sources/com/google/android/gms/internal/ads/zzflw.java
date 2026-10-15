package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzflw extends zzfmi {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzfmc f18420o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzflx f18421p;

    zzflw(zzflx zzflxVar, zzfmc zzfmcVar) {
        this.f18421p = zzflxVar;
        this.f18420o = zzfmcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfmj
    public final void B7(Bundle bundle) {
        int i10 = bundle.getInt("statusCode", 8150);
        String string = bundle.getString("sessionToken");
        zzfma zzfmaVarC = zzfmb.c();
        zzfmaVarC.b(i10);
        if (string != null) {
            zzfmaVarC.a(string);
        }
        this.f18420o.a(zzfmaVarC.c());
        if (i10 == 8157) {
            this.f18421p.c();
        }
    }
}
