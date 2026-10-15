package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.text.TextUtils;
import com.vungle.warren.model.ReportDBAdapter;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdrt implements zzcur, zzcxj, zzcwg {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzdsf f15504o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f15505p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f15506q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f15507r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private zzdrs f15508s = zzdrs.AD_REQUESTED;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private zzcuh f15509t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zze f15510u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f15511v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f15512w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f15513x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f15514y;

    zzdrt(zzdsf zzdsfVar, zzeyx zzeyxVar, String str) {
        this.f15504o = zzdsfVar;
        this.f15506q = str;
        this.f15505p = zzeyxVar.f17733f;
    }

    private static JSONObject f(com.google.android.gms.ads.internal.client.zze zzeVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorDomain", zzeVar.f5843q);
        jSONObject.put("errorCode", zzeVar.f5841o);
        jSONObject.put("errorDescription", zzeVar.f5842p);
        com.google.android.gms.ads.internal.client.zze zzeVar2 = zzeVar.f5844r;
        jSONObject.put("underlyingError", zzeVar2 == null ? null : f(zzeVar2));
        return jSONObject;
    }

    private final JSONObject g(zzcuh zzcuhVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("winningAdapterClassName", zzcuhVar.e());
        jSONObject.put("responseSecsSinceEpoch", zzcuhVar.a());
        jSONObject.put("responseId", zzcuhVar.g());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10409w8)).booleanValue()) {
            String strD = zzcuhVar.d();
            if (!TextUtils.isEmpty(strD)) {
                zzbza.b("Bidding data: ".concat(String.valueOf(strD)));
                jSONObject.put("biddingData", new JSONObject(strD));
            }
        }
        if (!TextUtils.isEmpty(this.f15511v)) {
            jSONObject.put("adRequestUrl", this.f15511v);
        }
        if (!TextUtils.isEmpty(this.f15512w)) {
            jSONObject.put("postBody", this.f15512w);
        }
        JSONArray jSONArray = new JSONArray();
        for (com.google.android.gms.ads.internal.client.zzu zzuVar : zzcuhVar.h()) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("adapterClassName", zzuVar.f5947o);
            jSONObject2.put("latencyMillis", zzuVar.f5948p);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10420x8)).booleanValue()) {
                jSONObject2.put("credentials", com.google.android.gms.ads.internal.client.zzay.b().n(zzuVar.f5950r));
            }
            com.google.android.gms.ads.internal.client.zze zzeVar = zzuVar.f5949q;
            jSONObject2.put("error", zzeVar == null ? null : f(zzeVar));
            jSONArray.put(jSONObject2);
        }
        jSONObject.put("adNetworks", jSONArray);
        return jSONObject;
    }

    public final String a() {
        return this.f15506q;
    }

    public final JSONObject b() throws JSONException {
        IBinder iBinder;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("state", this.f15508s);
        jSONObject.put("format", zzeyc.a(this.f15507r));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B8)).booleanValue()) {
            jSONObject.put("isOutOfContext", this.f15513x);
            if (this.f15513x) {
                jSONObject.put("shown", this.f15514y);
            }
        }
        zzcuh zzcuhVar = this.f15509t;
        JSONObject jSONObjectG = null;
        if (zzcuhVar != null) {
            jSONObjectG = g(zzcuhVar);
        } else {
            com.google.android.gms.ads.internal.client.zze zzeVar = this.f15510u;
            if (zzeVar != null && (iBinder = zzeVar.f5845s) != null) {
                zzcuh zzcuhVar2 = (zzcuh) iBinder;
                jSONObjectG = g(zzcuhVar2);
                if (zzcuhVar2.h().isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(f(this.f15510u));
                    jSONObjectG.put(ReportDBAdapter.ReportColumns.COLUMN_ERRORS, jSONArray);
                }
            }
        }
        jSONObject.put("responseInfo", jSONObjectG);
        return jSONObject;
    }

    public final void c() {
        this.f15513x = true;
    }

    public final void d() {
        this.f15514y = true;
    }

    public final boolean e() {
        return this.f15508s != zzdrs.AD_REQUESTED;
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void l0(zzeyo zzeyoVar) {
        if (!zzeyoVar.f17703b.f17699a.isEmpty()) {
            this.f15507r = ((zzeyc) zzeyoVar.f17703b.f17699a.get(0)).f17634b;
        }
        if (!TextUtils.isEmpty(zzeyoVar.f17703b.f17700b.f17688k)) {
            this.f15511v = zzeyoVar.f17703b.f17700b.f17688k;
        }
        if (TextUtils.isEmpty(zzeyoVar.f17703b.f17700b.f17689l)) {
            return;
        }
        this.f15512w = zzeyoVar.f17703b.f17700b.f17689l;
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void t0(zzbtn zzbtnVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B8)).booleanValue()) {
            return;
        }
        this.f15504o.f(this.f15505p, this);
    }

    @Override // com.google.android.gms.internal.ads.zzcwg
    public final void u0(zzcqm zzcqmVar) {
        this.f15509t = zzcqmVar.c();
        this.f15508s = zzdrs.AD_LOADED;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B8)).booleanValue()) {
            this.f15504o.f(this.f15505p, this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcur
    public final void v(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.f15508s = zzdrs.AD_LOAD_FAILED;
        this.f15510u = zzeVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B8)).booleanValue()) {
            this.f15504o.f(this.f15505p, this);
        }
    }
}
