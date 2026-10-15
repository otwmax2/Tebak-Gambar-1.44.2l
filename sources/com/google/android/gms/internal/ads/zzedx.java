package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzedx extends zzedz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcgd f16361a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzden f16362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzctx f16363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzdab f16364d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzeeh f16365e;

    public zzedx(zzcgd zzcgdVar, zzden zzdenVar, zzctx zzctxVar, zzdab zzdabVar, zzeeh zzeehVar) {
        this.f16361a = zzcgdVar;
        this.f16362b = zzdenVar;
        this.f16363c = zzctxVar;
        this.f16364d = zzdabVar;
        this.f16365e = zzeehVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedz
    protected final zzfut c(zzeyx zzeyxVar, Bundle bundle, zzeyc zzeycVar, zzeyo zzeyoVar) {
        zzder zzderVarK = this.f16361a.k();
        zzctx zzctxVar = this.f16363c;
        zzctxVar.h(zzeyxVar);
        zzctxVar.e(bundle);
        zzctxVar.f(new zzctr(zzeyoVar, zzeycVar, this.f16365e));
        zzderVarK.o(zzctxVar.i());
        zzderVarK.r(this.f16364d);
        zzderVarK.i(this.f16362b);
        zzderVarK.a(new zzcoh(null));
        zzcrt zzcrtVarA = zzderVarK.e().a();
        return zzcrtVarA.i(zzcrtVarA.j());
    }
}
