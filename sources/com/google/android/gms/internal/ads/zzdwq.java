package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdwq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcxh f15819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdvy f15820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfda f15821c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeyx f15822d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzbzg f15823e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzfep f15824f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzfen f15825g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Context f15826h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzfuu f15827i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public zzfut f15828j;

    zzdwq(zzcxh zzcxhVar, zzdvy zzdvyVar, zzfda zzfdaVar, zzeyx zzeyxVar, zzbzg zzbzgVar, zzfep zzfepVar, zzfen zzfenVar, Context context, zzfuu zzfuuVar) {
        this.f15819a = zzcxhVar;
        this.f15820b = zzdvyVar;
        this.f15821c = zzfdaVar;
        this.f15822d = zzeyxVar;
        this.f15823e = zzbzgVar;
        this.f15824f = zzfepVar;
        this.f15825g = zzfenVar;
        this.f15826h = context;
        this.f15827i = zzfuuVar;
    }

    final /* synthetic */ zzbsv a(zzbtn zzbtnVar, zzdyb zzdybVar) {
        Context context = this.f15826h;
        zzdybVar.f15925c.put("Content-Type", zzdybVar.f15927e);
        zzdybVar.f15925c.put("User-Agent", com.google.android.gms.ads.internal.zzt.r().B(context, zzbtnVar.f11273p.f11605o));
        String str = zzdybVar.f15923a;
        int i10 = zzdybVar.f15924b;
        Map map = zzdybVar.f15925c;
        Bundle bundle = new Bundle();
        for (Map.Entry entry : map.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        return new zzbsv(str, i10, bundle, zzdybVar.f15926d, zzdybVar.f15928f, zzbtnVar.f11275r, zzbtnVar.f11279v);
    }

    public final zzfut c(final zzbtn zzbtnVar, final JSONObject jSONObject, final zzbtq zzbtqVar) {
        this.f15819a.t0(zzbtnVar);
        zzfcr zzfcrVarB = this.f15821c.b(zzfcu.PROXY, zzfuj.l(this.f15821c.b(zzfcu.PREPARE_HTTP_REQUEST, zzfuj.h(new zzdyf(jSONObject, zzbtqVar))).e(new zzdyg(zzbtnVar.f11278u, this.f15825g, zzfeb.a(this.f15826h, 9))).a(), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzdwo
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                return this.f15816a.a(zzbtnVar, (zzdyb) obj);
            }
        }, this.f15827i));
        final zzdvy zzdvyVar = this.f15820b;
        zzfcf zzfcfVarA = zzfcrVarB.f(new zzftq() { // from class: com.google.android.gms.internal.ads.zzdwl
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzdvyVar.c((zzbsv) obj);
            }
        }).a();
        this.f15828j = zzfcfVarA;
        zzfut zzfutVarM = zzfuj.m(this.f15821c.b(zzfcu.PRE_PROCESS, zzfcfVarA).e(new zzfcd() { // from class: com.google.android.gms.internal.ads.zzdwn
            @Override // com.google.android.gms.internal.ads.zzfcd
            public final Object a(Object obj) {
                return new zzdxo(zzdyc.a(new InputStreamReader((InputStream) obj)), jSONObject, zzbtqVar);
            }
        }).f(com.google.android.gms.ads.internal.zzt.h().a(this.f15826h, this.f15823e, this.f15824f).a("google.afma.response.normalize", zzdxo.f15881d, zzbmc.f10947c)).a(), new zzftq() { // from class: com.google.android.gms.internal.ads.zzdwm
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f15813a.d((InputStream) obj);
            }
        }, this.f15827i);
        zzfuj.q(zzfutVarM, new zzdwp(this), this.f15827i);
        return zzfutVarM;
    }

    final /* synthetic */ zzfut d(InputStream inputStream) throws Exception {
        return zzfuj.h(new zzeyo(new zzeyl(this.f15822d), zzeyn.a(new InputStreamReader(inputStream))));
    }
}
