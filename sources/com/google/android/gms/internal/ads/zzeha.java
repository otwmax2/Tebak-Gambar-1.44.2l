package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeha extends zzbpe {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f16640o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzbpc f16641p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzbzs f16642q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final JSONObject f16643r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final long f16644s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f16645t;

    public zzeha(String str, zzbpc zzbpcVar, zzbzs zzbzsVar, long j10) {
        JSONObject jSONObject = new JSONObject();
        this.f16643r = jSONObject;
        this.f16645t = false;
        this.f16642q = zzbzsVar;
        this.f16640o = str;
        this.f16641p = zzbpcVar;
        this.f16644s = j10;
        try {
            jSONObject.put("adapter_version", zzbpcVar.c().toString());
            jSONObject.put("sdk_version", zzbpcVar.e().toString());
            jSONObject.put("name", str);
        } catch (RemoteException | NullPointerException | JSONException unused) {
        }
    }

    public static synchronized void Sa(String str, zzbzs zzbzsVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", str);
            jSONObject.put("signal_error", "Adapter failed to instantiate");
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10369t1)).booleanValue()) {
                jSONObject.put("signal_error_code", 1);
            }
            zzbzsVar.c(jSONObject);
        } catch (JSONException unused) {
        }
    }

    private final synchronized void Ta(String str, int i10) {
        if (this.f16645t) {
            return;
        }
        try {
            this.f16643r.put("signal_error", str);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10380u1)).booleanValue()) {
                this.f16643r.put("latency", com.google.android.gms.ads.internal.zzt.b().b() - this.f16644s);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10369t1)).booleanValue()) {
                this.f16643r.put("signal_error_code", i10);
            }
        } catch (JSONException unused) {
        }
        this.f16642q.c(this.f16643r);
        this.f16645t = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbpf
    public final synchronized void I(String str) throws RemoteException {
        Ta(str, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbpf
    public final synchronized void Y1(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Ta(zzeVar.f5842p, 2);
    }

    public final synchronized void a() {
        Ta("Signal collection timeout.", 3);
    }

    public final synchronized void d() {
        if (this.f16645t) {
            return;
        }
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10369t1)).booleanValue()) {
                this.f16643r.put("signal_error_code", 0);
            }
        } catch (JSONException unused) {
        }
        this.f16642q.c(this.f16643r);
        this.f16645t = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbpf
    public final synchronized void s(String str) throws RemoteException {
        if (this.f16645t) {
            return;
        }
        if (str == null) {
            I("Adapter returned null signals");
            return;
        }
        try {
            this.f16643r.put("signals", str);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10380u1)).booleanValue()) {
                this.f16643r.put("latency", com.google.android.gms.ads.internal.zzt.b().b() - this.f16644s);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10369t1)).booleanValue()) {
                this.f16643r.put("signal_error_code", 0);
            }
        } catch (JSONException unused) {
        }
        this.f16642q.c(this.f16643r);
        this.f16645t = true;
    }
}
