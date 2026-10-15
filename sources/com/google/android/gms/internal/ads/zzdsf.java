package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdsf implements zzdtd, zzdrq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdsn f15546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdte f15547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdrr f15548c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzdsa f15549d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzdrp f15550e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzdsz f15551f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f15552g;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private JSONObject f15558m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f15561p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f15562q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f15563r;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Map f15554i = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Map f15555j = new HashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Map f15556k = new HashMap();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f15557l = "{}";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f15559n = Long.MAX_VALUE;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzdsb f15560o = zzdsb.NONE;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private zzdse f15564s = zzdse.UNKNOWN;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f15553h = "afma-sdk-a-v22.0.0";

    zzdsf(zzdsn zzdsnVar, zzdte zzdteVar, zzdrr zzdrrVar, Context context, zzbzg zzbzgVar, zzdsa zzdsaVar, zzdsz zzdszVar) {
        this.f15546a = zzdsnVar;
        this.f15547b = zzdteVar;
        this.f15548c = zzdrrVar;
        this.f15550e = new zzdrp(context);
        this.f15552g = zzbzgVar.f11605o;
        this.f15549d = zzdsaVar;
        this.f15551f = zzdszVar;
        com.google.android.gms.ads.internal.zzt.u().g(this);
    }

    private final synchronized JSONObject q() throws JSONException {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        for (Map.Entry entry : this.f15554i.entrySet()) {
            JSONArray jSONArray = new JSONArray();
            for (zzdrt zzdrtVar : (List) entry.getValue()) {
                if (zzdrtVar.e()) {
                    jSONArray.put(zzdrtVar.b());
                }
            }
            if (jSONArray.length() > 0) {
                jSONObject.put((String) entry.getKey(), jSONArray);
            }
        }
        return jSONObject;
    }

    private final void r() {
        this.f15563r = true;
        this.f15549d.c();
        this.f15546a.c(this);
        this.f15547b.c(this);
        this.f15548c.c(this);
        this.f15551f.Va(this);
        x(com.google.android.gms.ads.internal.zzt.q().h().m());
    }

    private final void s() {
        com.google.android.gms.ads.internal.zzt.q().h().N0(d());
    }

    private final synchronized void t(zzdsb zzdsbVar, boolean z10) {
        if (this.f15560o == zzdsbVar) {
            return;
        }
        if (o()) {
            v();
        }
        this.f15560o = zzdsbVar;
        if (o()) {
            w();
        }
        if (z10) {
            s();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002b A[Catch: all -> 0x003d, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x000b, B:11:0x001d, B:13:0x0027, B:18:0x0036, B:14:0x002b, B:16:0x0031), top: B:26:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final synchronized void u(boolean r2, boolean r3) {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.f15561p     // Catch: java.lang.Throwable -> L3d
            if (r0 != r2) goto L7
            monitor-exit(r1)
            return
        L7:
            r1.f15561p = r2     // Catch: java.lang.Throwable -> L3d
            if (r2 == 0) goto L2b
            com.google.android.gms.internal.ads.zzbaj r2 = com.google.android.gms.internal.ads.zzbar.f10387u8     // Catch: java.lang.Throwable -> L3d
            com.google.android.gms.internal.ads.zzbap r0 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L3d
            java.lang.Object r2 = r0.b(r2)     // Catch: java.lang.Throwable -> L3d
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.Throwable -> L3d
            boolean r2 = r2.booleanValue()     // Catch: java.lang.Throwable -> L3d
            if (r2 == 0) goto L27
            com.google.android.gms.ads.internal.util.zzaw r2 = com.google.android.gms.ads.internal.zzt.u()     // Catch: java.lang.Throwable -> L3d
            boolean r2 = r2.l()     // Catch: java.lang.Throwable -> L3d
            if (r2 != 0) goto L2b
        L27:
            r1.w()     // Catch: java.lang.Throwable -> L3d
            goto L34
        L2b:
            boolean r2 = r1.o()     // Catch: java.lang.Throwable -> L3d
            if (r2 != 0) goto L34
            r1.v()     // Catch: java.lang.Throwable -> L3d
        L34:
            if (r3 == 0) goto L3b
            r1.s()     // Catch: java.lang.Throwable -> L3d
            monitor-exit(r1)
            return
        L3b:
            monitor-exit(r1)
            return
        L3d:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsf.u(boolean, boolean):void");
    }

    private final synchronized void v() {
        zzdsb zzdsbVar = zzdsb.NONE;
        int iOrdinal = this.f15560o.ordinal();
        if (iOrdinal == 1) {
            this.f15547b.a();
        } else {
            if (iOrdinal != 2) {
                return;
            }
            this.f15548c.a();
        }
    }

    private final synchronized void w() {
        zzdsb zzdsbVar = zzdsb.NONE;
        int iOrdinal = this.f15560o.ordinal();
        if (iOrdinal == 1) {
            this.f15547b.b();
        } else {
            if (iOrdinal != 2) {
                return;
            }
            this.f15548c.b();
        }
    }

    private final synchronized void x(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            u(jSONObject.optBoolean("isTestMode", false), false);
            t(zzdsb.c(jSONObject.optString("gesture", "NONE")), false);
            this.f15557l = jSONObject.optString("networkExtras", "{}");
            this.f15559n = jSONObject.optLong("networkExtrasExpirationSecs", Long.MAX_VALUE);
        } catch (JSONException unused) {
        }
    }

    public final zzdsb a() {
        return this.f15560o;
    }

    public final synchronized zzfut b(String str) {
        zzbzs zzbzsVar;
        zzbzsVar = new zzbzs();
        if (this.f15555j.containsKey(str)) {
            zzbzsVar.c((zzdrt) this.f15555j.get(str));
        } else {
            if (!this.f15556k.containsKey(str)) {
                this.f15556k.put(str, new ArrayList());
            }
            ((List) this.f15556k.get(str)).add(zzbzsVar);
        }
        return zzbzsVar;
    }

    public final synchronized String c() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10222f8)).booleanValue() && o()) {
            if (this.f15559n < com.google.android.gms.ads.internal.zzt.b().a() / 1000) {
                this.f15557l = "{}";
                this.f15559n = Long.MAX_VALUE;
                return BuildConfig.FLAVOR;
            }
            if (this.f15557l.equals("{}")) {
                return BuildConfig.FLAVOR;
            }
            return this.f15557l;
        }
        return BuildConfig.FLAVOR;
    }

    public final synchronized String d() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        try {
            jSONObject.put("isTestMode", this.f15561p);
            jSONObject.put("gesture", this.f15560o);
            if (this.f15559n > com.google.android.gms.ads.internal.zzt.b().a() / 1000) {
                jSONObject.put("networkExtras", this.f15557l);
                jSONObject.put("networkExtrasExpirationSecs", this.f15559n);
            }
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public final synchronized JSONObject e() {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        jSONObject = new JSONObject();
        try {
            jSONObject.put("platform", "ANDROID");
            jSONObject.put("sdkVersion", this.f15553h);
            jSONObject.put("internalSdkVersion", this.f15552g);
            jSONObject.put("osVersion", Build.VERSION.RELEASE);
            jSONObject.put("adapters", this.f15549d.a());
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.D8)).booleanValue()) {
                String strM = com.google.android.gms.ads.internal.zzt.q().m();
                if (!TextUtils.isEmpty(strM)) {
                    jSONObject.put("plugin", strM);
                }
            }
            if (this.f15559n < com.google.android.gms.ads.internal.zzt.b().a() / 1000) {
                this.f15557l = "{}";
            }
            jSONObject.put("networkExtras", this.f15557l);
            jSONObject.put("adSlots", q());
            jSONObject.put("appInfo", this.f15550e.a());
            String strC = com.google.android.gms.ads.internal.zzt.q().h().f().c();
            if (!TextUtils.isEmpty(strC)) {
                jSONObject.put("cld", new JSONObject(strC));
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10398v8)).booleanValue() && (jSONObject2 = this.f15558m) != null) {
                zzbza.b("Server data: " + jSONObject2.toString());
                jSONObject.put("serverData", this.f15558m);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10387u8)).booleanValue()) {
                jSONObject.put("openAction", this.f15564s);
                jSONObject.put("gesture", this.f15560o);
            }
        } catch (JSONException e10) {
            com.google.android.gms.ads.internal.zzt.q().t(e10, "Inspector.toJson");
            zzbza.h("Ad inspector encountered an error", e10);
        }
        return jSONObject;
    }

    public final synchronized void f(String str, zzdrt zzdrtVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10222f8)).booleanValue() && o()) {
            if (this.f15562q >= ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10244h8)).intValue()) {
                zzbza.g("Maximum number of ad requests stored reached. Dropping the current request.");
                return;
            }
            if (!this.f15554i.containsKey(str)) {
                this.f15554i.put(str, new ArrayList());
            }
            this.f15562q++;
            ((List) this.f15554i.get(str)).add(zzdrtVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B8)).booleanValue()) {
                String strA = zzdrtVar.a();
                this.f15555j.put(strA, zzdrtVar);
                if (this.f15556k.containsKey(strA)) {
                    List list = (List) this.f15556k.get(strA);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((zzbzs) it.next()).c(zzdrtVar);
                    }
                    list.clear();
                }
            }
        }
    }

    public final void g() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10222f8)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10387u8)).booleanValue() && com.google.android.gms.ads.internal.zzt.q().h().M()) {
                r();
                return;
            }
            String strM = com.google.android.gms.ads.internal.zzt.q().h().m();
            if (TextUtils.isEmpty(strM)) {
                return;
            }
            try {
                if (new JSONObject(strM).optBoolean("isTestMode", false)) {
                    r();
                }
            } catch (JSONException unused) {
            }
        }
    }

    public final synchronized void h(com.google.android.gms.ads.internal.client.zzda zzdaVar, zzdse zzdseVar) {
        if (!o()) {
            try {
                zzdaVar.Q5(zzezx.d(18, null, null));
                return;
            } catch (RemoteException unused) {
                zzbza.g("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.");
                return;
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10222f8)).booleanValue()) {
            this.f15564s = zzdseVar;
            this.f15546a.e(zzdaVar, new zzbih(this), new zzbia(this.f15551f));
            return;
        } else {
            try {
                zzdaVar.Q5(zzezx.d(1, null, null));
                return;
            } catch (RemoteException unused2) {
                zzbza.g("Ad inspector had an internal error.");
                return;
            }
        }
    }

    public final synchronized void i(String str, long j10) {
        this.f15557l = str;
        this.f15559n = j10;
        s();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void j(boolean r2) {
        /*
            r1 = this;
            boolean r0 = r1.f15563r
            if (r0 != 0) goto La
            if (r2 == 0) goto L15
            r1.r()
            goto Lc
        La:
            if (r2 == 0) goto L15
        Lc:
            boolean r2 = r1.f15561p
            if (r2 == 0) goto L11
            goto L15
        L11:
            r1.w()
            return
        L15:
            boolean r2 = r1.o()
            if (r2 != 0) goto L1e
            r1.v()
        L1e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsf.j(boolean):void");
    }

    public final void k(zzdsb zzdsbVar) {
        t(zzdsbVar, true);
    }

    public final synchronized void l(JSONObject jSONObject) {
        this.f15558m = jSONObject;
    }

    public final void m(boolean z10) {
        if (!this.f15563r && z10) {
            r();
        }
        u(z10, true);
    }

    public final boolean n() {
        return this.f15558m != null;
    }

    public final synchronized boolean o() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10387u8)).booleanValue()) {
            return this.f15561p || com.google.android.gms.ads.internal.zzt.u().l();
        }
        return this.f15561p;
    }

    public final synchronized boolean p() {
        return this.f15561p;
    }
}
