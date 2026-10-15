package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdpr {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f15359e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzdpn f15360f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f15356b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f15357c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f15358d = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f15355a = com.google.android.gms.ads.internal.zzt.q().h();

    public zzdpr(String str, zzdpn zzdpnVar) {
        this.f15359e = str;
        this.f15360f = zzdpnVar;
    }

    private final Map g() {
        Map mapF = this.f15360f.f();
        mapF.put("tms", Long.toString(com.google.android.gms.ads.internal.zzt.b().b(), 10));
        mapF.put("tid", this.f15355a.g0() ? BuildConfig.FLAVOR : this.f15359e);
        return mapF;
    }

    public final synchronized void a(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P1)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S7)).booleanValue()) {
                Map mapG = g();
                mapG.put("action", "aaia");
                mapG.put("aair", "MalformedJson");
                this.f15356b.add(mapG);
            }
        }
    }

    public final synchronized void b(String str, String str2) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P1)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S7)).booleanValue()) {
                Map mapG = g();
                mapG.put("action", "adapter_init_finished");
                mapG.put("ancn", str);
                mapG.put("rqe", str2);
                this.f15356b.add(mapG);
            }
        }
    }

    public final synchronized void c(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P1)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S7)).booleanValue()) {
                Map mapG = g();
                mapG.put("action", "adapter_init_started");
                mapG.put("ancn", str);
                this.f15356b.add(mapG);
            }
        }
    }

    public final synchronized void d(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P1)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S7)).booleanValue()) {
                Map mapG = g();
                mapG.put("action", "adapter_init_finished");
                mapG.put("ancn", str);
                this.f15356b.add(mapG);
            }
        }
    }

    public final synchronized void e() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P1)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S7)).booleanValue()) {
                if (this.f15358d) {
                    return;
                }
                Map mapG = g();
                mapG.put("action", "init_finished");
                this.f15356b.add(mapG);
                Iterator it = this.f15356b.iterator();
                while (it.hasNext()) {
                    this.f15360f.e((Map) it.next());
                }
                this.f15358d = true;
            }
        }
    }

    public final synchronized void f() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P1)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S7)).booleanValue()) {
                if (this.f15357c) {
                    return;
                }
                Map mapG = g();
                mapG.put("action", "init_started");
                this.f15356b.add(mapG);
                this.f15357c = true;
            }
        }
    }
}
