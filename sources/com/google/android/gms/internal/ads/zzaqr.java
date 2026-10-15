package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaqr implements zzfjo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfhr f9733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfii f9734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzarf f9735c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzaqq f9736d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzaqa f9737e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzarh f9738f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzaqy f9739g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzaqp f9740h;

    zzaqr(zzfhr zzfhrVar, zzfii zzfiiVar, zzarf zzarfVar, zzaqq zzaqqVar, zzaqa zzaqaVar, zzarh zzarhVar, zzaqy zzaqyVar, zzaqp zzaqpVar) {
        this.f9733a = zzfhrVar;
        this.f9734b = zzfiiVar;
        this.f9735c = zzarfVar;
        this.f9736d = zzaqqVar;
        this.f9737e = zzaqaVar;
        this.f9738f = zzarhVar;
        this.f9739g = zzaqyVar;
        this.f9740h = zzaqpVar;
    }

    private final Map c() {
        HashMap map = new HashMap();
        zzans zzansVarB = this.f9734b.b();
        map.put("v", this.f9733a.b());
        map.put("gms", Boolean.valueOf(this.f9733a.c()));
        map.put("int", zzansVarB.I0());
        map.put("up", Boolean.valueOf(this.f9736d.a()));
        map.put("t", new Throwable());
        zzaqy zzaqyVar = this.f9739g;
        if (zzaqyVar != null) {
            map.put("tcq", Long.valueOf(zzaqyVar.c()));
            map.put("tpq", Long.valueOf(this.f9739g.g()));
            map.put("tcv", Long.valueOf(this.f9739g.d()));
            map.put("tpv", Long.valueOf(this.f9739g.h()));
            map.put("tchv", Long.valueOf(this.f9739g.b()));
            map.put("tphv", Long.valueOf(this.f9739g.f()));
            map.put("tcc", Long.valueOf(this.f9739g.a()));
            map.put("tpc", Long.valueOf(this.f9739g.e()));
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzfjo
    public final Map a() {
        Map mapC = c();
        zzaqp zzaqpVar = this.f9740h;
        if (zzaqpVar != null) {
            mapC.put("vst", zzaqpVar.a());
        }
        return mapC;
    }

    final void b(View view) {
        this.f9735c.d(view);
    }

    @Override // com.google.android.gms.internal.ads.zzfjo
    public final Map zza() {
        Map mapC = c();
        mapC.put("lts", Long.valueOf(this.f9735c.a()));
        return mapC;
    }

    @Override // com.google.android.gms.internal.ads.zzfjo
    public final Map zzb() {
        Map mapC = c();
        zzans zzansVarA = this.f9734b.a();
        mapC.put("gai", Boolean.valueOf(this.f9733a.d()));
        mapC.put("did", zzansVarA.H0());
        mapC.put("dst", Integer.valueOf(zzansVarA.v0() - 1));
        mapC.put("doo", Boolean.valueOf(zzansVarA.s0()));
        zzaqa zzaqaVar = this.f9737e;
        if (zzaqaVar != null) {
            mapC.put("nt", Long.valueOf(zzaqaVar.a()));
        }
        zzarh zzarhVar = this.f9738f;
        if (zzarhVar != null) {
            mapC.put("vs", Long.valueOf(zzarhVar.c()));
            mapC.put("vf", Long.valueOf(this.f9738f.b()));
        }
        return mapC;
    }
}
