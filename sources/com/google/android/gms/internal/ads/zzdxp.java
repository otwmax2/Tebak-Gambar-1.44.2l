package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Callable;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdxp extends zzbsy {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f15885o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzfuu f15886p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzdyh f15887q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzclp f15888r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @GuardedBy("this")
    private final ArrayDeque f15889s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzfep f15890t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzbtz f15891u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzdye f15892v;

    public zzdxp(Context context, zzfuu zzfuuVar, zzbtz zzbtzVar, zzclp zzclpVar, zzdyh zzdyhVar, ArrayDeque arrayDeque, zzdye zzdyeVar, zzfep zzfepVar, byte[] bArr) {
        zzbar.c(context);
        this.f15885o = context;
        this.f15886p = zzfuuVar;
        this.f15891u = zzbtzVar;
        this.f15887q = zzdyhVar;
        this.f15888r = zzclpVar;
        this.f15889s = arrayDeque;
        this.f15892v = zzdyeVar;
        this.f15890t = zzfepVar;
    }

    private final synchronized zzdxm Xa(String str) {
        Iterator it = this.f15889s.iterator();
        while (it.hasNext()) {
            zzdxm zzdxmVar = (zzdxm) it.next();
            if (zzdxmVar.f15878c.equals(str)) {
                it.remove();
                return zzdxmVar;
            }
        }
        return null;
    }

    private static zzfut Ya(zzfut zzfutVar, zzfda zzfdaVar, zzbmf zzbmfVar, zzfen zzfenVar, zzfec zzfecVar) {
        zzblv zzblvVarA = zzbmfVar.a("AFMA_getAdDictionary", zzbmc.f10946b, new zzblx() { // from class: com.google.android.gms.internal.ads.zzdxg
            @Override // com.google.android.gms.internal.ads.zzblx
            public final Object a(JSONObject jSONObject) {
                return new zzbtq(jSONObject);
            }
        });
        zzfem.d(zzfutVar, zzfecVar);
        zzfcf zzfcfVarA = zzfdaVar.b(zzfcu.BUILD_URL, zzfutVar).f(zzblvVarA).a();
        zzfem.c(zzfcfVarA, zzfenVar, zzfecVar);
        return zzfcfVarA;
    }

    private static zzfut Za(zzbtn zzbtnVar, zzfda zzfdaVar, final zzeqf zzeqfVar) {
        zzftq zzftqVar = new zzftq() { // from class: com.google.android.gms.internal.ads.zzdxa
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzeqfVar.b().a(com.google.android.gms.ads.internal.client.zzay.b().n((Bundle) obj));
            }
        };
        return zzfdaVar.b(zzfcu.GMS_SIGNALS, zzfuj.h(zzbtnVar.f11272o)).f(zzftqVar).e(new zzfcd() { // from class: com.google.android.gms.internal.ads.zzdxb
            @Override // com.google.android.gms.internal.ads.zzfcd
            public final Object a(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                com.google.android.gms.ads.internal.util.zze.k("Ad request signals:");
                com.google.android.gms.ads.internal.util.zze.k(jSONObject.toString(2));
                return jSONObject;
            }
        }).a();
    }

    private final synchronized void ab(zzdxm zzdxmVar) {
        m();
        this.f15889s.addLast(zzdxmVar);
    }

    private final void bb(zzfut zzfutVar, zzbtj zzbtjVar) {
        zzfuj.q(zzfuj.m(zzfutVar, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdxj
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzfuj.h(zzezw.a((InputStream) obj));
            }
        }, zzbzn.f11614a), new zzdxl(this, zzbtjVar), zzbzn.f11619f);
    }

    private final synchronized void m() {
        int iIntValue = ((Long) zzbcr.f10591d.e()).intValue();
        while (this.f15889s.size() >= iIntValue) {
            this.f15889s.removeFirst();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void I2(zzbtn zzbtnVar, zzbtj zzbtjVar) {
        bb(Sa(zzbtnVar, Binder.getCallingUid()), zzbtjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void J2(String str, zzbtj zzbtjVar) {
        bb(Va(str), zzbtjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void L4(zzbtn zzbtnVar, zzbtj zzbtjVar) {
        zzfut zzfutVarTa = Ta(zzbtnVar, Binder.getCallingUid());
        bb(zzfutVarTa, zzbtjVar);
        if (((Boolean) zzbck.f10571c.e()).booleanValue()) {
            zzdyh zzdyhVar = this.f15887q;
            zzdyhVar.getClass();
            zzfutVarTa.f(new zzdxc(zzdyhVar), this.f15886p);
        }
    }

    public final zzfut Sa(final zzbtn zzbtnVar, int i10) {
        if (!((Boolean) zzbcr.f10588a.e()).booleanValue()) {
            return zzfuj.g(new Exception("Split request is disabled."));
        }
        zzfaq zzfaqVar = zzbtnVar.f11280w;
        if (zzfaqVar == null) {
            return zzfuj.g(new Exception("Pool configuration missing from request."));
        }
        if (zzfaqVar.f17824s == 0 || zzfaqVar.f17825t == 0) {
            return zzfuj.g(new Exception("Caching is disabled."));
        }
        zzbmf zzbmfVarB = com.google.android.gms.ads.internal.zzt.h().b(this.f15885o, zzbzg.V3(), this.f15890t);
        zzeqf zzeqfVarA = this.f15888r.a(zzbtnVar, i10);
        zzfda zzfdaVarC = zzeqfVarA.c();
        final zzfut zzfutVarZa = Za(zzbtnVar, zzfdaVarC, zzeqfVarA);
        zzfen zzfenVarD = zzeqfVarA.d();
        final zzfec zzfecVarA = zzfeb.a(this.f15885o, 9);
        final zzfut zzfutVarYa = Ya(zzfutVarZa, zzfdaVarC, zzbmfVarB, zzfenVarD, zzfecVarA);
        return zzfdaVarC.a(zzfcu.GET_URL_AND_CACHE_KEY, zzfutVarZa, zzfutVarYa).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzdxf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f15865a.Wa(zzfutVarYa, zzfutVarZa, zzbtnVar, zzfecVarA);
            }
        }).a();
    }

    public final zzfut Ta(zzbtn zzbtnVar, int i10) {
        zzfcf zzfcfVarA;
        zzbmf zzbmfVarB = com.google.android.gms.ads.internal.zzt.h().b(this.f15885o, zzbzg.V3(), this.f15890t);
        zzeqf zzeqfVarA = this.f15888r.a(zzbtnVar, i10);
        zzblv zzblvVarA = zzbmfVarB.a("google.afma.response.normalize", zzdxo.f15881d, zzbmc.f10947c);
        zzdxm zzdxmVarXa = null;
        if (((Boolean) zzbcr.f10588a.e()).booleanValue()) {
            zzdxmVarXa = Xa(zzbtnVar.f11279v);
            if (zzdxmVarXa == null) {
                com.google.android.gms.ads.internal.util.zze.k("Request contained a PoolKey but no matching parameters were found.");
            }
        } else {
            String str = zzbtnVar.f11281x;
            if (str != null && !str.isEmpty()) {
                com.google.android.gms.ads.internal.util.zze.k("Request contained a PoolKey but split request is disabled.");
            }
        }
        zzdxm zzdxmVar = zzdxmVarXa;
        zzfec zzfecVarA = zzdxmVar == null ? zzfeb.a(this.f15885o, 9) : zzdxmVar.f15880e;
        zzfen zzfenVarD = zzeqfVarA.d();
        zzfenVarD.d(zzbtnVar.f11272o.getStringArrayList("ad_types"));
        zzdyg zzdygVar = new zzdyg(zzbtnVar.f11278u, zzfenVarD, zzfecVarA);
        zzdyd zzdydVar = new zzdyd(this.f15885o, zzbtnVar.f11273p.f11605o, this.f15891u, i10, null);
        zzfda zzfdaVarC = zzeqfVarA.c();
        zzfec zzfecVarA2 = zzfeb.a(this.f15885o, 11);
        if (zzdxmVar == null) {
            final zzfut zzfutVarZa = Za(zzbtnVar, zzfdaVarC, zzeqfVarA);
            final zzfut zzfutVarYa = Ya(zzfutVarZa, zzfdaVarC, zzbmfVarB, zzfenVarD, zzfecVarA);
            zzfec zzfecVarA3 = zzfeb.a(this.f15885o, 10);
            final zzfcf zzfcfVarA2 = zzfdaVarC.a(zzfcu.HTTP, zzfutVarYa, zzfutVarZa).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzdxd
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzdyf((JSONObject) zzfutVarZa.get(), (zzbtq) zzfutVarYa.get());
                }
            }).e(zzdygVar).e(new zzfei(zzfecVarA3)).e(zzdydVar).a();
            zzfem.a(zzfcfVarA2, zzfenVarD, zzfecVarA3);
            zzfem.d(zzfcfVarA2, zzfecVarA2);
            zzfcfVarA = zzfdaVarC.a(zzfcu.PRE_PROCESS, zzfutVarZa, zzfutVarYa, zzfcfVarA2).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzdxe
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzdxo((zzdyc) zzfcfVarA2.get(), (JSONObject) zzfutVarZa.get(), (zzbtq) zzfutVarYa.get());
                }
            }).f(zzblvVarA).a();
        } else {
            zzdyf zzdyfVar = new zzdyf(zzdxmVar.f15877b, zzdxmVar.f15876a);
            zzfec zzfecVarA4 = zzfeb.a(this.f15885o, 10);
            final zzfcf zzfcfVarA3 = zzfdaVarC.b(zzfcu.HTTP, zzfuj.h(zzdyfVar)).e(zzdygVar).e(new zzfei(zzfecVarA4)).e(zzdydVar).a();
            zzfem.a(zzfcfVarA3, zzfenVarD, zzfecVarA4);
            final zzfut zzfutVarH = zzfuj.h(zzdxmVar);
            zzfem.d(zzfcfVarA3, zzfecVarA2);
            zzfcfVarA = zzfdaVarC.a(zzfcu.PRE_PROCESS, zzfcfVarA3, zzfutVarH).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzdxi
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzfut zzfutVar = zzfcfVarA3;
                    zzfut zzfutVar2 = zzfutVarH;
                    return new zzdxo((zzdyc) zzfutVar.get(), ((zzdxm) zzfutVar2.get()).f15877b, ((zzdxm) zzfutVar2.get()).f15876a);
                }
            }).f(zzblvVarA).a();
        }
        zzfem.a(zzfcfVarA, zzfenVarD, zzfecVarA2);
        return zzfcfVarA;
    }

    public final zzfut Ua(zzbtn zzbtnVar, int i10) {
        zzbmf zzbmfVarB = com.google.android.gms.ads.internal.zzt.h().b(this.f15885o, zzbzg.V3(), this.f15890t);
        if (!((Boolean) zzbcw.f10606a.e()).booleanValue()) {
            return zzfuj.g(new Exception("Signal collection disabled."));
        }
        zzeqf zzeqfVarA = this.f15888r.a(zzbtnVar, i10);
        final zzepq zzepqVarA = zzeqfVarA.a();
        zzblv zzblvVarA = zzbmfVarB.a("google.afma.request.getSignals", zzbmc.f10946b, zzbmc.f10947c);
        zzfec zzfecVarA = zzfeb.a(this.f15885o, 22);
        zzfcf zzfcfVarA = zzeqfVarA.c().b(zzfcu.GET_SIGNALS, zzfuj.h(zzbtnVar.f11272o)).e(new zzfei(zzfecVarA)).f(new zzftq() { // from class: com.google.android.gms.internal.ads.zzdxh
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzepqVarA.a(com.google.android.gms.ads.internal.client.zzay.b().n((Bundle) obj));
            }
        }).b(zzfcu.JS_SIGNALS).f(zzblvVarA).a();
        zzfen zzfenVarD = zzeqfVarA.d();
        zzfenVarD.d(zzbtnVar.f11272o.getStringArrayList("ad_types"));
        zzfem.b(zzfcfVarA, zzfenVarD, zzfecVarA);
        if (((Boolean) zzbck.f10573e.e()).booleanValue()) {
            zzdyh zzdyhVar = this.f15887q;
            zzdyhVar.getClass();
            zzfcfVarA.f(new zzdxc(zzdyhVar), this.f15886p);
        }
        return zzfcfVarA;
    }

    public final zzfut Va(String str) {
        if (((Boolean) zzbcr.f10588a.e()).booleanValue()) {
            return Xa(str) == null ? zzfuj.g(new Exception("URL to be removed not found for cache key: ".concat(String.valueOf(str)))) : zzfuj.h(new zzdxk(this));
        }
        return zzfuj.g(new Exception("Split request is disabled."));
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ InputStream Wa(zzfut zzfutVar, zzfut zzfutVar2, zzbtn zzbtnVar, zzfec zzfecVar) throws Exception {
        String strC = ((zzbtq) zzfutVar.get()).c();
        ab(new zzdxm((zzbtq) zzfutVar.get(), (JSONObject) zzfutVar2.get(), zzbtnVar.f11279v, strC, zzfecVar));
        return new ByteArrayInputStream(strC.getBytes(zzfnh.f18476c));
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void k6(zzbtn zzbtnVar, zzbtj zzbtjVar) {
        bb(Ua(zzbtnVar, Binder.getCallingUid()), zzbtjVar);
    }
}
