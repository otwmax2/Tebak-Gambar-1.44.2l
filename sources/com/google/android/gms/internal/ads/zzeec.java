package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeec extends zzedz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcgd f16391a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzctx f16392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzegk f16393c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzdab f16394d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzeeh f16395e;

    public zzeec(zzcgd zzcgdVar, zzctx zzctxVar, zzegk zzegkVar, zzdab zzdabVar, zzeeh zzeehVar) {
        this.f16391a = zzcgdVar;
        this.f16392b = zzctxVar;
        this.f16393c = zzegkVar;
        this.f16394d = zzdabVar;
        this.f16395e = zzeehVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedz
    protected final zzfut c(zzeyx zzeyxVar, Bundle bundle, zzeyc zzeycVar, zzeyo zzeyoVar) {
        zzddv zzddvVarJ = this.f16391a.j();
        zzctx zzctxVar = this.f16392b;
        zzctxVar.h(zzeyxVar);
        zzctxVar.e(bundle);
        zzctxVar.f(new zzctr(zzeyoVar, zzeycVar, this.f16395e));
        zzddvVarJ.q(zzctxVar.i());
        zzddvVarJ.t(this.f16394d);
        zzddvVarJ.m(this.f16393c);
        zzcrt zzcrtVarA = zzddvVarJ.c().a();
        return zzcrtVarA.i(zzcrtVarA.j());
    }
}
