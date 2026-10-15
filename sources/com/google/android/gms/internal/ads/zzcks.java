package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcks extends com.google.android.gms.ads.internal.client.zzcn {
    private final zzbas A;

    @GuardedBy("this")
    private boolean B = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f13399o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzbzg f13400p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzdnd f13401q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzeav f13402r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzegx f13403s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzdrk f13404t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzbxf f13405u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzdni f13406v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final zzdsf f13407w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final zzbde f13408x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final zzfep f13409y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final zzezq f13410z;

    zzcks(Context context, zzbzg zzbzgVar, zzdnd zzdndVar, zzeav zzeavVar, zzegx zzegxVar, zzdrk zzdrkVar, zzbxf zzbxfVar, zzdni zzdniVar, zzdsf zzdsfVar, zzbde zzbdeVar, zzfep zzfepVar, zzezq zzezqVar, zzbas zzbasVar) {
        this.f13399o = context;
        this.f13400p = zzbzgVar;
        this.f13401q = zzdndVar;
        this.f13402r = zzeavVar;
        this.f13403s = zzegxVar;
        this.f13404t = zzdrkVar;
        this.f13405u = zzbxfVar;
        this.f13406v = zzdniVar;
        this.f13407w = zzdsfVar;
        this.f13408x = zzbdeVar;
        this.f13409y = zzfepVar;
        this.f13410z = zzezqVar;
        this.A = zzbasVar;
    }

    final /* synthetic */ void C() {
        this.f13408x.a(new zzbsk());
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void C6(float f10) {
        com.google.android.gms.ads.internal.zzt.t().d(f10);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void G8(zzbjs zzbjsVar) throws RemoteException {
        this.f13404t.s(zzbjsVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void H0(boolean z10) throws RemoteException {
        try {
            zzfkw.j(this.f13399o).o(z10);
        } catch (IOException e10) {
            throw new RemoteException(e10.getMessage());
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void Ia(boolean z10) {
        com.google.android.gms.ads.internal.zzt.t().c(z10);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void M4(zzbnf zzbnfVar) throws RemoteException {
        this.f13410z.e(zzbnfVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void R7(com.google.android.gms.ads.internal.client.zzff zzffVar) throws RemoteException {
        this.f13405u.v(this.f13399o, zzffVar);
    }

    @VisibleForTesting
    final void Sa(Runnable runnable) {
        Preconditions.f("Adapters must be initialized on the main thread.");
        Map mapE = com.google.android.gms.ads.internal.zzt.q().h().f().e();
        if (mapE.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                zzbza.h("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (this.f13401q.d()) {
            HashMap map = new HashMap();
            Iterator it = mapE.values().iterator();
            while (it.hasNext()) {
                for (zzbmz zzbmzVar : ((zzbna) it.next()).f11015a) {
                    String str = zzbmzVar.f10998k;
                    for (String str2 : zzbmzVar.f10990c) {
                        if (!map.containsKey(str2)) {
                            map.put(str2, new ArrayList());
                        }
                        if (str != null) {
                            ((List) map.get(str2)).add(str);
                        }
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : map.entrySet()) {
                String str3 = (String) entry.getKey();
                try {
                    zzeaw zzeawVarA = this.f13402r.a(str3, jSONObject);
                    if (zzeawVarA != null) {
                        zzezs zzezsVar = (zzezs) zzeawVarA.f16127b;
                        if (!zzezsVar.c() && zzezsVar.b()) {
                            zzezsVar.o(this.f13399o, (zzecr) zzeawVarA.f16128c, (List) entry.getValue());
                            zzbza.b("Initialized rewarded video mediation adapter " + str3);
                        }
                    }
                } catch (zzezc e10) {
                    zzbza.h("Failed to initialize rewarded video mediation adapter \"" + str3 + "\"", e10);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized float b() {
        return com.google.android.gms.ads.internal.zzt.t().a();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final String c() {
        return this.f13400p.f11605o;
    }

    final /* synthetic */ void d() {
        zzfaa.b(this.f13399o, true);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final List e() throws RemoteException {
        return this.f13404t.g();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void g() {
        this.f13404t.l();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void i() {
        if (this.B) {
            zzbza.g("Mobile ads is initialized already.");
            return;
        }
        zzbar.c(this.f13399o);
        this.A.a();
        com.google.android.gms.ads.internal.zzt.q().s(this.f13399o, this.f13400p);
        com.google.android.gms.ads.internal.zzt.e().i(this.f13399o);
        this.B = true;
        this.f13404t.r();
        this.f13403s.d();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.A3)).booleanValue()) {
            this.f13406v.c();
        }
        this.f13407w.g();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10387u8)).booleanValue()) {
            zzbzn.f11614a.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcko
                @Override // java.lang.Runnable
                public final void run() {
                    this.f13393o.zzb();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10278k9)).booleanValue()) {
            zzbzn.f11614a.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckn
                @Override // java.lang.Runnable
                public final void run() {
                    this.f13392o.C();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10381u2)).booleanValue()) {
            zzbzn.f11614a.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckp
                @Override // java.lang.Runnable
                public final void run() {
                    this.f13394o.d();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void i1(String str) {
        zzbar.c(this.f13399o);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10437z3)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.c().a(this.f13399o, this.f13400p, str, null, this.f13409y);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void i4(com.google.android.gms.ads.internal.client.zzda zzdaVar) throws RemoteException {
        this.f13407w.h(zzdaVar, zzdse.API);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void q7(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            zzbza.d("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.t1(iObjectWrapper);
        if (context == null) {
            zzbza.d("Context is null. Failed to open debug menu.");
            return;
        }
        com.google.android.gms.ads.internal.util.zzas zzasVar = new com.google.android.gms.ads.internal.util.zzas(context);
        zzasVar.n(str);
        zzasVar.o(this.f13400p.f11605o);
        zzasVar.r();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized boolean t() {
        return com.google.android.gms.ads.internal.zzt.t().e();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void t0(String str) {
        this.f13403s.f(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void x6(String str, IObjectWrapper iObjectWrapper) {
        String strM;
        Runnable runnable;
        zzbar.c(this.f13399o);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.E3)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.r();
            strM = com.google.android.gms.ads.internal.util.zzs.M(this.f13399o);
        } else {
            strM = BuildConfig.FLAVOR;
        }
        boolean z10 = true;
        String str2 = true == TextUtils.isEmpty(strM) ? str : strM;
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10437z3)).booleanValue();
        zzbaj zzbajVar = zzbar.K0;
        boolean zBooleanValue2 = zBooleanValue | ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).booleanValue();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).booleanValue()) {
            final Runnable runnable2 = (Runnable) ObjectWrapper.t1(iObjectWrapper);
            runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzckq
                @Override // java.lang.Runnable
                public final void run() {
                    final zzcks zzcksVar = this.f13395o;
                    final Runnable runnable3 = runnable2;
                    zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckr
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcksVar.Sa(runnable3);
                        }
                    });
                }
            };
        } else {
            runnable = null;
            z10 = zBooleanValue2;
        }
        Runnable runnable3 = runnable;
        if (z10) {
            com.google.android.gms.ads.internal.zzt.c().a(this.f13399o, this.f13400p, str2, runnable3, this.f13409y);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void z0(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.D8)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.q().w(str);
        }
    }

    @VisibleForTesting
    final void zzb() {
        if (com.google.android.gms.ads.internal.zzt.q().h().M()) {
            if (com.google.android.gms.ads.internal.zzt.u().j(this.f13399o, com.google.android.gms.ads.internal.zzt.q().h().j(), this.f13400p.f11605o)) {
                return;
            }
            com.google.android.gms.ads.internal.zzt.q().h().y0(false);
            com.google.android.gms.ads.internal.zzt.q().h().t0(BuildConfig.FLAVOR);
        }
    }
}
