package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdrk {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Context f15461f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final WeakReference f15462g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzdnd f15463h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Executor f15464i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Executor f15465j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ScheduledExecutorService f15466k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzdpr f15467l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzbzg f15468m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzdbf f15470o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzfep f15471p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f15456a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f15457b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f15458c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzbzs f15460e = new zzbzs();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Map f15469n = new ConcurrentHashMap();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f15472q = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f15459d = com.google.android.gms.ads.internal.zzt.b().b();

    public zzdrk(Executor executor, Context context, WeakReference weakReference, Executor executor2, zzdnd zzdndVar, ScheduledExecutorService scheduledExecutorService, zzdpr zzdprVar, zzbzg zzbzgVar, zzdbf zzdbfVar, zzfep zzfepVar) {
        this.f15463h = zzdndVar;
        this.f15461f = context;
        this.f15462g = weakReference;
        this.f15464i = executor2;
        this.f15466k = scheduledExecutorService;
        this.f15465j = executor;
        this.f15467l = zzdprVar;
        this.f15468m = zzbzgVar;
        this.f15470o = zzdbfVar;
        this.f15471p = zzfepVar;
        v("com.google.android.gms.ads.MobileAds", false, BuildConfig.FLAVOR, 0);
    }

    static /* bridge */ /* synthetic */ void j(final zzdrk zzdrkVar, String str) {
        int i10 = 5;
        final zzfec zzfecVarA = zzfeb.a(zzdrkVar.f15461f, 5);
        zzfecVarA.f();
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                final String next = itKeys.next();
                final zzfec zzfecVarA2 = zzfeb.a(zzdrkVar.f15461f, i10);
                zzfecVarA2.f();
                zzfecVarA2.O(next);
                final Object obj = new Object();
                final zzbzs zzbzsVar = new zzbzs();
                zzfut zzfutVarN = zzfuj.n(zzbzsVar, ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.E1)).longValue(), TimeUnit.SECONDS, zzdrkVar.f15466k);
                zzdrkVar.f15467l.c(next);
                zzdrkVar.f15470o.D(next);
                final long jB = com.google.android.gms.ads.internal.zzt.b().b();
                zzfutVarN.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdrb
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f15429o.q(obj, zzbzsVar, next, jB, zzfecVarA2);
                    }
                }, zzdrkVar.f15464i);
                arrayList.add(zzfutVarN);
                final zzdrj zzdrjVar = new zzdrj(zzdrkVar, obj, next, jB, zzfecVarA2, zzbzsVar);
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                final ArrayList arrayList2 = new ArrayList();
                if (jSONObjectOptJSONObject != null) {
                    try {
                        JSONArray jSONArray = jSONObjectOptJSONObject.getJSONArray("data");
                        int i11 = 0;
                        while (i11 < jSONArray.length()) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i11);
                            String strOptString = jSONObject2.optString("format", BuildConfig.FLAVOR);
                            JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("data");
                            Bundle bundle = new Bundle();
                            if (jSONObjectOptJSONObject2 != null) {
                                Iterator<String> itKeys2 = jSONObjectOptJSONObject2.keys();
                                while (itKeys2.hasNext()) {
                                    String next2 = itKeys2.next();
                                    bundle.putString(next2, jSONObjectOptJSONObject2.optString(next2, BuildConfig.FLAVOR));
                                    jSONArray = jSONArray;
                                }
                            }
                            JSONArray jSONArray2 = jSONArray;
                            arrayList2.add(new zzbjv(strOptString, bundle));
                            i11++;
                            jSONArray = jSONArray2;
                        }
                    } catch (JSONException unused) {
                    }
                }
                zzdrkVar.v(next, false, BuildConfig.FLAVOR, 0);
                try {
                    try {
                        final zzezs zzezsVarC = zzdrkVar.f15463h.c(next, new JSONObject());
                        zzdrkVar.f15465j.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdrf
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f15440o.n(zzezsVarC, zzdrjVar, arrayList2, next);
                            }
                        });
                    } catch (zzezc unused2) {
                        zzdrjVar.s("Failed to create Adapter.");
                    }
                } catch (RemoteException e10) {
                    zzbza.e(BuildConfig.FLAVOR, e10);
                }
                i10 = 5;
            }
            zzfuj.a(arrayList).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzdrc
                @Override // java.util.concurrent.Callable
                public final Object call() throws Exception {
                    this.f15435a.f(zzfecVarA);
                    return null;
                }
            }, zzdrkVar.f15464i);
        } catch (JSONException e11) {
            com.google.android.gms.ads.internal.util.zze.l("Malformed CLD response", e11);
            zzdrkVar.f15470o.o("MalformedJson");
            zzdrkVar.f15467l.a("MalformedJson");
            zzdrkVar.f15460e.d(e11);
            com.google.android.gms.ads.internal.zzt.q().u(e11, "AdapterInitializer.updateAdapterStatus");
            zzfep zzfepVar = zzdrkVar.f15471p;
            zzfecVarA.b(e11);
            zzfecVarA.y0(false);
            zzfepVar.b(zzfecVarA.j());
        }
    }

    private final synchronized zzfut u() {
        String strC = com.google.android.gms.ads.internal.zzt.q().h().f().c();
        if (!TextUtils.isEmpty(strC)) {
            return zzfuj.h(strC);
        }
        final zzbzs zzbzsVar = new zzbzs();
        com.google.android.gms.ads.internal.zzt.q().h().w0(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdrg
            @Override // java.lang.Runnable
            public final void run() {
                this.f15445o.o(zzbzsVar);
            }
        });
        return zzbzsVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(String str, boolean z10, String str2, int i10) {
        this.f15469n.put(str, new zzbjl(str, z10, i10, str2));
    }

    final /* synthetic */ Object f(zzfec zzfecVar) throws Exception {
        this.f15460e.c(Boolean.TRUE);
        zzfep zzfepVar = this.f15471p;
        zzfecVar.y0(true);
        zzfepVar.b(zzfecVar.j());
        return null;
    }

    public final List g() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f15469n.keySet()) {
            zzbjl zzbjlVar = (zzbjl) this.f15469n.get(str);
            arrayList.add(new zzbjl(str, zzbjlVar.f10800p, zzbjlVar.f10801q, zzbjlVar.f10802r));
        }
        return arrayList;
    }

    public final void l() {
        this.f15472q = false;
    }

    final /* synthetic */ void m() {
        synchronized (this) {
            if (this.f15458c) {
                return;
            }
            v("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (com.google.android.gms.ads.internal.zzt.b().b() - this.f15459d));
            this.f15467l.b("com.google.android.gms.ads.MobileAds", "timeout");
            this.f15470o.n("com.google.android.gms.ads.MobileAds", "timeout");
            this.f15460e.d(new Exception());
        }
    }

    final /* synthetic */ void n(zzezs zzezsVar, zzbjp zzbjpVar, List list, String str) {
        try {
            try {
                Context context = (Context) this.f15462g.get();
                if (context == null) {
                    context = this.f15461f;
                }
                zzezsVar.n(context, zzbjpVar, list);
            } catch (zzezc unused) {
                zzbjpVar.s("Failed to initialize adapter. " + str + " does not implement the initialize() method.");
            }
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }

    final /* synthetic */ void o(final zzbzs zzbzsVar) {
        this.f15464i.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdqz
            @Override // java.lang.Runnable
            public final void run() {
                zzbzs zzbzsVar2 = zzbzsVar;
                String strC = com.google.android.gms.ads.internal.zzt.q().h().f().c();
                if (TextUtils.isEmpty(strC)) {
                    zzbzsVar2.d(new Exception());
                } else {
                    zzbzsVar2.c(strC);
                }
            }
        });
    }

    final /* synthetic */ void p() {
        this.f15467l.e();
        this.f15470o.b();
        this.f15457b = true;
    }

    final /* synthetic */ void q(Object obj, zzbzs zzbzsVar, String str, long j10, zzfec zzfecVar) {
        synchronized (obj) {
            if (!zzbzsVar.isDone()) {
                v(str, false, "Timeout.", (int) (com.google.android.gms.ads.internal.zzt.b().b() - j10));
                this.f15467l.b(str, "timeout");
                this.f15470o.n(str, "timeout");
                zzfep zzfepVar = this.f15471p;
                zzfecVar.D("Timeout");
                zzfecVar.y0(false);
                zzfepVar.b(zzfecVar.j());
                zzbzsVar.c(Boolean.FALSE);
            }
        }
    }

    public final void r() {
        if (!((Boolean) zzbcq.f10582a.e()).booleanValue()) {
            if (this.f15468m.f11607q >= ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.D1)).intValue() && this.f15472q) {
                if (this.f15456a) {
                    return;
                }
                synchronized (this) {
                    if (this.f15456a) {
                        return;
                    }
                    this.f15467l.f();
                    this.f15470o.c();
                    this.f15460e.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdra
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f15428o.p();
                        }
                    }, this.f15464i);
                    this.f15456a = true;
                    zzfut zzfutVarU = u();
                    this.f15466k.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdrd
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f15437o.m();
                        }
                    }, ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.F1)).longValue(), TimeUnit.SECONDS);
                    zzfuj.q(zzfutVarU, new zzdri(this), this.f15464i);
                    return;
                }
            }
        }
        if (this.f15456a) {
            return;
        }
        v("com.google.android.gms.ads.MobileAds", true, BuildConfig.FLAVOR, 0);
        this.f15460e.c(Boolean.FALSE);
        this.f15456a = true;
        this.f15457b = true;
    }

    public final void s(final zzbjs zzbjsVar) {
        this.f15460e.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdre
            @Override // java.lang.Runnable
            public final void run() {
                zzdrk zzdrkVar = this.f15438o;
                try {
                    zzbjsVar.n8(zzdrkVar.g());
                } catch (RemoteException e10) {
                    zzbza.e(BuildConfig.FLAVOR, e10);
                }
            }
        }, this.f15465j);
    }

    public final boolean t() {
        return this.f15457b;
    }
}
