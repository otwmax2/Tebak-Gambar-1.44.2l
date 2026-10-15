package com.google.android.gms.internal.ads;

import android.os.Bundle;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzeee extends zzedz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcgd f16401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzctx f16402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdab f16403c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeeh f16404d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private final zzeyp f16405e;

    public zzeee(zzcgd zzcgdVar, zzctx zzctxVar, zzdab zzdabVar, @Nullable zzeyp zzeypVar, zzeeh zzeehVar) {
        this.f16401a = zzcgdVar;
        this.f16402b = zzctxVar;
        this.f16403c = zzdabVar;
        this.f16405e = zzeypVar;
        this.f16404d = zzeehVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedz
    protected final zzfut c(zzeyx zzeyxVar, Bundle bundle, zzeyc zzeycVar, zzeyo zzeyoVar) {
        zzeyp zzeypVar;
        zzctx zzctxVar = this.f16402b;
        zzctxVar.h(zzeyxVar);
        zzctxVar.e(bundle);
        zzctxVar.f(new zzctr(zzeyoVar, zzeycVar, this.f16404d));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10184c3)).booleanValue() && (zzeypVar = this.f16405e) != null) {
            this.f16402b.g(zzeypVar);
        }
        zzdly zzdlyVarL = this.f16401a.l();
        zzdlyVarL.d(this.f16402b.i());
        zzdlyVarL.g(this.f16403c);
        zzcrt zzcrtVarZzb = zzdlyVarL.b().zzb();
        return zzcrtVarZzb.i(zzcrtVarZzb.j());
    }
}
