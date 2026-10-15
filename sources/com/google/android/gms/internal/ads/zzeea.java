package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeea extends zzedz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcgd f16373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzctx f16374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzegk f16375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzdab f16376d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzden f16377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzcxd f16378f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ViewGroup f16379g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzczk f16380h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzeeh f16381i;

    public zzeea(zzcgd zzcgdVar, zzctx zzctxVar, zzegk zzegkVar, zzdab zzdabVar, zzden zzdenVar, zzcxd zzcxdVar, ViewGroup viewGroup, zzczk zzczkVar, zzeeh zzeehVar) {
        this.f16373a = zzcgdVar;
        this.f16374b = zzctxVar;
        this.f16375c = zzegkVar;
        this.f16376d = zzdabVar;
        this.f16377e = zzdenVar;
        this.f16378f = zzcxdVar;
        this.f16379g = viewGroup;
        this.f16380h = zzczkVar;
        this.f16381i = zzeehVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedz
    protected final zzfut c(zzeyx zzeyxVar, Bundle bundle, zzeyc zzeycVar, zzeyo zzeyoVar) {
        zzcpg zzcpgVarH = this.f16373a.h();
        zzctx zzctxVar = this.f16374b;
        zzctxVar.h(zzeyxVar);
        zzctxVar.e(bundle);
        zzctxVar.f(new zzctr(zzeyoVar, zzeycVar, this.f16381i));
        zzcpgVarH.j(zzctxVar.i());
        zzcpgVarH.p(this.f16376d);
        zzcpgVarH.k(this.f16375c);
        zzcpgVarH.i(this.f16377e);
        zzcpgVarH.s(new zzcqe(this.f16378f, this.f16380h));
        zzcpgVarH.a(new zzcoh(this.f16379g));
        zzcrt zzcrtVarD = zzcpgVarH.h().d();
        return zzcrtVarD.i(zzcrtVarD.j());
    }
}
