package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzepq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f17148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f17149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f17150c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfen f17151d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzdpi f17152e;

    public zzepq(Context context, Executor executor, Set set, zzfen zzfenVar, zzdpi zzdpiVar) {
        this.f17148a = context;
        this.f17150c = executor;
        this.f17149b = set;
        this.f17151d = zzfenVar;
        this.f17152e = zzdpiVar;
    }

    public final zzfut a(final Object obj) {
        zzfec zzfecVarA = zzfeb.a(this.f17148a, 8);
        zzfecVarA.f();
        final ArrayList arrayList = new ArrayList(this.f17149b.size());
        for (final zzepn zzepnVar : this.f17149b) {
            zzfut zzfutVarZzb = zzepnVar.zzb();
            final long jB = com.google.android.gms.ads.internal.zzt.b().b();
            zzfutVarZzb.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzepo
                @Override // java.lang.Runnable
                public final void run() {
                    this.f17143o.b(jB, zzepnVar);
                }
            }, zzbzn.f11619f);
            arrayList.add(zzfutVarZzb);
        }
        zzfut zzfutVarA = zzfuj.b(arrayList).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzepp
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List list = arrayList;
                Object obj2 = obj;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    zzepm zzepmVar = (zzepm) ((zzfut) it.next()).get();
                    if (zzepmVar != null) {
                        zzepmVar.a(obj2);
                    }
                }
                return obj2;
            }
        }, this.f17150c);
        if (zzfep.a()) {
            zzfem.a(zzfutVarA, this.f17151d, zzfecVarA);
        }
        return zzfutVarA;
    }

    public final void b(long j10, zzepn zzepnVar) {
        long jB = com.google.android.gms.ads.internal.zzt.b().b() - j10;
        if (((Boolean) zzbco.f10579a.e()).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.k("Signal runtime (ms) : " + zzfoj.c(zzepnVar.getClass().getCanonicalName()) + " = " + jB);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Q1)).booleanValue()) {
            zzdph zzdphVarA = this.f17152e.a();
            zzdphVarA.b("action", "lat_ms");
            zzdphVarA.b("lat_grp", "sig_lat_grp");
            zzdphVarA.b("lat_id", String.valueOf(zzepnVar.zza()));
            zzdphVarA.b("clat_ms", String.valueOf(jB));
            zzdphVarA.h();
        }
    }
}
