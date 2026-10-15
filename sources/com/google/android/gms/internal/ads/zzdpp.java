package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzdpp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final Executor f15345c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final zzbzf f15346d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzfdu f15348f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final String f15343a = (String) zzbce.f10518b.e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Map f15344b = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final boolean f15347e = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.N1)).booleanValue();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f15349g = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Q1)).booleanValue();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f15350h = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.D6)).booleanValue();

    protected zzdpp(Executor executor, zzbzf zzbzfVar, zzfdu zzfduVar) {
        this.f15345c = executor;
        this.f15346d = zzbzfVar;
        this.f15348f = zzfduVar;
    }

    private final void a(Map map, boolean z10) {
        if (map.isEmpty()) {
            zzbza.b("Empty paramMap.");
            return;
        }
        final String strA = this.f15348f.a(map);
        com.google.android.gms.ads.internal.util.zze.k(strA);
        boolean z11 = Boolean.parseBoolean((String) map.get("scar"));
        if (this.f15347e) {
            if (!z10 || this.f15349g) {
                if (!z11 || this.f15350h) {
                    this.f15345c.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpo
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzdpp zzdppVar = this.f15341o;
                            zzdppVar.f15346d.o(strA);
                        }
                    });
                }
            }
        }
    }

    protected final String b(Map map) {
        return this.f15348f.a(map);
    }

    public final ConcurrentHashMap c() {
        return new ConcurrentHashMap(this.f15344b);
    }

    public final void d(Map map) {
        a(map, true);
    }

    public final void e(Map map) {
        a(map, false);
    }
}
