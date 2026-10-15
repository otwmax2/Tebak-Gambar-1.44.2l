package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeon implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f17071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f17072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzegx f17073c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f17074d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzeyx f17075e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzegt f17076f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzdnd f17077g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzdrm f17078h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final String f17079i;

    public zzeon(zzfuu zzfuuVar, ScheduledExecutorService scheduledExecutorService, String str, zzegx zzegxVar, Context context, zzeyx zzeyxVar, zzegt zzegtVar, zzdnd zzdndVar, zzdrm zzdrmVar) {
        this.f17071a = zzfuuVar;
        this.f17072b = scheduledExecutorService;
        this.f17079i = str;
        this.f17073c = zzegxVar;
        this.f17074d = context;
        this.f17075e = zzeyxVar;
        this.f17076f = zzegtVar;
        this.f17077g = zzdndVar;
        this.f17078h = zzdrmVar;
    }

    public static /* synthetic */ zzfut a(zzeon zzeonVar) {
        Map mapA = zzeonVar.f17073c.a(zzeonVar.f17079i, ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10256i9)).booleanValue() ? zzeonVar.f17075e.f17733f.toLowerCase(Locale.ROOT) : zzeonVar.f17075e.f17733f);
        final Bundle bundleA = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10402w1)).booleanValue() ? zzeonVar.f17078h.a() : new Bundle();
        final ArrayList arrayList = new ArrayList();
        Iterator it = ((zzfqn) mapA).entrySet().iterator();
        while (true) {
            Bundle bundle = null;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            List list = (List) entry.getValue();
            Bundle bundle2 = zzeonVar.f17075e.f17731d.A;
            if (bundle2 != null) {
                bundle = bundle2.getBundle(str);
            }
            arrayList.add(zzeonVar.d(str, list, bundle, true, true));
        }
        Iterator it2 = ((zzfqn) zzeonVar.f17073c.b()).entrySet().iterator();
        while (it2.hasNext()) {
            zzehb zzehbVar = (zzehb) ((Map.Entry) it2.next()).getValue();
            String str2 = zzehbVar.f16646a;
            Bundle bundle3 = zzeonVar.f17075e.f17731d.A;
            arrayList.add(zzeonVar.d(str2, Collections.singletonList(zzehbVar.f16649d), bundle3 != null ? bundle3.getBundle(str2) : null, zzehbVar.f16647b, zzehbVar.f16648c));
        }
        return zzfuj.b(arrayList).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzeok
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<zzfut> list2 = arrayList;
                Bundle bundle4 = bundleA;
                JSONArray jSONArray = new JSONArray();
                for (zzfut zzfutVar : list2) {
                    if (((JSONObject) zzfutVar.get()) != null) {
                        jSONArray.put(zzfutVar.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new zzeoo(jSONArray.toString(), bundle4);
            }
        }, zzeonVar.f17071a);
    }

    private final zzfua d(final String str, final List list, final Bundle bundle, final boolean z10, final boolean z11) {
        zzfua zzfuaVarD = zzfua.D(zzfuj.k(new zzftp() { // from class: com.google.android.gms.internal.ads.zzeol
            @Override // com.google.android.gms.internal.ads.zzftp
            public final zzfut zza() {
                return this.f17064a.b(str, list, bundle, z10, z11);
            }
        }, this.f17071a));
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10358s1)).booleanValue()) {
            zzfuaVarD = (zzfua) zzfuj.n(zzfuaVarD, ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10281l1)).longValue(), TimeUnit.MILLISECONDS, this.f17072b);
        }
        return (zzfua) zzfuj.e(zzfuaVarD, Throwable.class, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzeom
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                zzbza.d("Error calling adapter: ".concat(String.valueOf(str)));
                return null;
            }
        }, this.f17071a);
    }

    private final void e(zzbpc zzbpcVar, Bundle bundle, List list, zzeha zzehaVar) throws RemoteException {
        zzbpcVar.F8(ObjectWrapper.Q4(this.f17074d), this.f17079i, bundle, (Bundle) list.get(0), this.f17075e.f17732e, zzehaVar);
    }

    final /* synthetic */ zzfut b(String str, final List list, final Bundle bundle, boolean z10, boolean z11) throws Exception {
        zzbpc zzbpcVarB;
        final zzbzs zzbzsVar = new zzbzs();
        if (z11) {
            this.f17076f.b(str);
            zzbpcVarB = this.f17076f.a(str);
        } else {
            try {
                zzbpcVarB = this.f17077g.b(str);
            } catch (RemoteException e10) {
                zzbza.e("Couldn't create RTB adapter : ", e10);
                zzbpcVarB = null;
            }
        }
        if (zzbpcVarB == null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10303n1)).booleanValue()) {
                throw null;
            }
            zzeha.Sa(str, zzbzsVar);
        } else {
            final zzeha zzehaVar = new zzeha(str, zzbpcVarB, zzbzsVar, com.google.android.gms.ads.internal.zzt.b().b());
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10358s1)).booleanValue()) {
                this.f17072b.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeoi
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzehaVar.a();
                    }
                }, ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10281l1)).longValue(), TimeUnit.MILLISECONDS);
            }
            if (z10) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10413x1)).booleanValue()) {
                    final zzbpc zzbpcVar = zzbpcVarB;
                    this.f17071a.g(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeoj
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f17056o.c(zzbpcVar, bundle, list, zzehaVar, zzbzsVar);
                        }
                    });
                } else {
                    e(zzbpcVarB, bundle, list, zzehaVar);
                }
            } else {
                zzehaVar.d();
            }
        }
        return zzbzsVar;
    }

    final /* synthetic */ void c(zzbpc zzbpcVar, Bundle bundle, List list, zzeha zzehaVar, zzbzs zzbzsVar) {
        try {
            e(zzbpcVar, bundle, list, zzehaVar);
        } catch (RemoteException e10) {
            zzbzsVar.d(e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 32;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return zzfuj.k(new zzftp() { // from class: com.google.android.gms.internal.ads.zzeoh
            @Override // com.google.android.gms.internal.ads.zzftp
            public final zzfut zza() {
                return zzeon.a(this.f17054a);
            }
        }, this.f17071a);
    }
}
