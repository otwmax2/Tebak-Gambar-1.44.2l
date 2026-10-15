package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import android.util.Pair;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbzn;
import com.google.android.gms.internal.ads.zzdpd;
import com.google.android.gms.internal.ads.zzdpn;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzc {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzdpn f6428h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map f6429i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private final ArrayDeque f6426f = new ArrayDeque();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    private final ArrayDeque f6427g = new ArrayDeque();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6421a = ((Integer) zzba.c().b(zzbar.A6)).intValue();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f6422b = ((Long) zzba.c().b(zzbar.B6)).longValue();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f6423c = ((Boolean) zzba.c().b(zzbar.G6)).booleanValue();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f6424d = ((Boolean) zzba.c().b(zzbar.E6)).booleanValue();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private final Map f6425e = Collections.synchronizedMap(new e(this));

    public zzc(zzdpn zzdpnVar) {
        this.f6428h = zzdpnVar;
    }

    private final synchronized void g(final zzdpd zzdpdVar) {
        if (this.f6423c) {
            final ArrayDeque arrayDequeClone = this.f6427g.clone();
            this.f6427g.clear();
            final ArrayDeque arrayDequeClone2 = this.f6426f.clone();
            this.f6426f.clear();
            zzbzn.f11614a.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zza
                @Override // java.lang.Runnable
                public final void run() {
                    this.f6372o.e(zzdpdVar, arrayDequeClone, arrayDequeClone2);
                }
            });
        }
    }

    private final void h(zzdpd zzdpdVar, ArrayDeque arrayDeque, String str) {
        Pair pair;
        while (!arrayDeque.isEmpty()) {
            Pair pair2 = (Pair) arrayDeque.poll();
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(zzdpdVar.a());
            this.f6429i = concurrentHashMap;
            concurrentHashMap.put("action", "ev");
            this.f6429i.put("e_r", str);
            this.f6429i.put("e_id", (String) pair2.first);
            if (this.f6424d) {
                try {
                    JSONObject jSONObject = new JSONObject((String) pair2.second);
                    pair = new Pair(zzf.a(jSONObject.getJSONObject("extras").getString("query_info_type")), jSONObject.getString("request_agent"));
                } catch (JSONException unused) {
                    pair = new Pair(BuildConfig.FLAVOR, BuildConfig.FLAVOR);
                }
                j(this.f6429i, "e_type", (String) pair.first);
                j(this.f6429i, "e_agent", (String) pair.second);
            }
            this.f6428h.e(this.f6429i);
        }
    }

    private final synchronized void i() {
        long jA = com.google.android.gms.ads.internal.zzt.b().a();
        try {
            Iterator it = this.f6425e.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (jA - ((Long) ((Pair) entry.getValue()).first).longValue() <= this.f6422b) {
                    break;
                }
                this.f6427g.add(new Pair((String) entry.getKey(), (String) ((Pair) entry.getValue()).second));
                it.remove();
            }
        } catch (ConcurrentModificationException e10) {
            com.google.android.gms.ads.internal.zzt.q().u(e10, "QueryJsonMap.removeExpiredEntries");
        }
    }

    private static final void j(Map map, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        map.put(str, str2);
    }

    public final synchronized String b(String str, zzdpd zzdpdVar) {
        Pair pair = (Pair) this.f6425e.get(str);
        zzdpdVar.a().put("rid", str);
        if (pair == null) {
            zzdpdVar.a().put("mhit", "false");
            return null;
        }
        String str2 = (String) pair.second;
        this.f6425e.remove(str);
        zzdpdVar.a().put("mhit", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        return str2;
    }

    public final synchronized void d(String str, String str2, zzdpd zzdpdVar) {
        this.f6425e.put(str, new Pair(Long.valueOf(com.google.android.gms.ads.internal.zzt.b().a()), str2));
        i();
        g(zzdpdVar);
    }

    final /* synthetic */ void e(zzdpd zzdpdVar, ArrayDeque arrayDeque, ArrayDeque arrayDeque2) {
        h(zzdpdVar, arrayDeque, "to");
        h(zzdpdVar, arrayDeque2, "of");
    }

    public final synchronized void f(String str) {
        this.f6425e.remove(str);
    }
}
