package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbcd;
import com.google.android.gms.internal.ads.zzbxo;
import com.google.android.gms.internal.ads.zzbxv;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzdpd;
import com.google.android.gms.internal.ads.zzdpn;
import com.google.android.gms.internal.ads.zzfec;
import com.google.android.gms.internal.ads.zzfen;
import com.google.android.gms.internal.ads.zzfuf;
import com.google.android.gms.internal.ads.zzfut;
import com.vungle.mediation.BuildConfig;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class f implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzfut f6360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzbxv f6361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzbxo f6362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzfec f6363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ long f6364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ zzac f6365f;

    f(zzac zzacVar, zzfut zzfutVar, zzbxv zzbxvVar, zzbxo zzbxoVar, zzfec zzfecVar, long j10) {
        this.f6365f = zzacVar;
        this.f6360a = zzfutVar;
        this.f6361b = zzbxvVar;
        this.f6362c = zzbxoVar;
        this.f6363d = zzfecVar;
        this.f6364e = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        long jA = com.google.android.gms.ads.internal.zzt.b().a() - this.f6364e;
        String message = th.getMessage();
        com.google.android.gms.ads.internal.zzt.q().u(th, "SignalGeneratorImpl.generateSignals");
        zzac zzacVar = this.f6365f;
        zzf.c(zzacVar.A, zzacVar.f6380s, "sgf", new Pair("sgf_reason", message), new Pair("tqgt", String.valueOf(jA)));
        zzfen zzfenVarZb = zzac.zb(this.f6360a, this.f6361b);
        if (((Boolean) zzbcd.f10516e.e()).booleanValue() && zzfenVarZb != null) {
            zzfec zzfecVar = this.f6363d;
            zzfecVar.b(th);
            zzfecVar.y0(false);
            zzfenVarZb.a(zzfecVar);
            zzfenVarZb.g();
        }
        try {
            this.f6362c.u("Internal error. " + message);
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        zzao zzaoVar = (zzao) obj;
        zzfen zzfenVarZb = zzac.zb(this.f6360a, this.f6361b);
        if (!((Boolean) zzba.c().b(zzbar.f10199d7)).booleanValue()) {
            try {
                this.f6362c.u("QueryInfo generation has been disabled.");
            } catch (RemoteException e10) {
                zzbza.d("QueryInfo generation has been disabled.".concat(e10.toString()));
            }
            if (!((Boolean) zzbcd.f10516e.e()).booleanValue() || zzfenVarZb == null) {
                return;
            }
            zzfec zzfecVar = this.f6363d;
            zzfecVar.D("QueryInfo generation has been disabled.");
            zzfecVar.y0(false);
            zzfenVarZb.a(zzfecVar);
            zzfenVarZb.g();
            return;
        }
        long jA = com.google.android.gms.ads.internal.zzt.b().a() - this.f6364e;
        try {
            try {
                if (zzaoVar == null) {
                    this.f6362c.E3(null, null, null);
                    zzac zzacVar = this.f6365f;
                    zzf.c(zzacVar.A, zzacVar.f6380s, "sgs", new Pair("rid", "-1"));
                    this.f6363d.y0(true);
                    if (!((Boolean) zzbcd.f10516e.e()).booleanValue() || zzfenVarZb == null) {
                        return;
                    }
                    zzfenVarZb.a(this.f6363d);
                    zzfenVarZb.g();
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(zzaoVar.f6411b);
                    String strOptString = jSONObject.optString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, BuildConfig.FLAVOR);
                    if (TextUtils.isEmpty(strOptString)) {
                        zzbza.g("The request ID is empty in request JSON.");
                        this.f6362c.u("Internal error: request ID is empty in request JSON.");
                        zzac zzacVar2 = this.f6365f;
                        zzf.c(zzacVar2.A, zzacVar2.f6380s, "sgf", new Pair("sgf_reason", "rid_missing"));
                        zzfec zzfecVar2 = this.f6363d;
                        zzfecVar2.D("Request ID empty");
                        zzfecVar2.y0(false);
                        if (!((Boolean) zzbcd.f10516e.e()).booleanValue() || zzfenVarZb == null) {
                            return;
                        }
                        zzfenVarZb.a(this.f6363d);
                        zzfenVarZb.g();
                        return;
                    }
                    zzac zzacVar3 = this.f6365f;
                    zzac.Za(zzacVar3, strOptString, zzaoVar.f6411b, zzacVar3.f6380s);
                    Bundle bundle = zzaoVar.f6412c;
                    zzac zzacVar4 = this.f6365f;
                    if (zzacVar4.F && bundle != null && bundle.getInt(zzacVar4.H, -1) == -1) {
                        zzac zzacVar5 = this.f6365f;
                        bundle.putInt(zzacVar5.H, zzacVar5.I.get());
                    }
                    zzac zzacVar6 = this.f6365f;
                    if (zzacVar6.E && bundle != null && TextUtils.isEmpty(bundle.getString(zzacVar6.G))) {
                        if (TextUtils.isEmpty(this.f6365f.K)) {
                            zzac zzacVar7 = this.f6365f;
                            com.google.android.gms.ads.internal.util.zzs zzsVarR = com.google.android.gms.ads.internal.zzt.r();
                            zzac zzacVar8 = this.f6365f;
                            zzacVar7.K = zzsVarR.B(zzacVar8.f6377p, zzacVar8.J.f11605o);
                        }
                        zzac zzacVar9 = this.f6365f;
                        bundle.putString(zzacVar9.G, zzacVar9.K);
                    }
                    this.f6362c.E3(zzaoVar.f6410a, zzaoVar.f6411b, bundle);
                    zzac zzacVar10 = this.f6365f;
                    zzdpn zzdpnVar = zzacVar10.A;
                    zzdpd zzdpdVar = zzacVar10.f6380s;
                    Pair[] pairArr = new Pair[2];
                    pairArr[0] = new Pair("tqgt", String.valueOf(jA));
                    String str = "na";
                    if (((Boolean) zzba.c().b(zzbar.K8)).booleanValue()) {
                        try {
                            str = jSONObject.getJSONObject("extras").getBoolean("accept_3p_cookie") ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO;
                        } catch (JSONException e11) {
                            zzbza.e("Error retrieving JSONObject from the requestJson, ", e11);
                        }
                    }
                    pairArr[1] = new Pair("tpc", str);
                    zzf.c(zzdpnVar, zzdpdVar, "sgs", pairArr);
                    this.f6363d.y0(true);
                    if (!((Boolean) zzbcd.f10516e.e()).booleanValue() || zzfenVarZb == null) {
                        return;
                    }
                    zzfenVarZb.a(this.f6363d);
                    zzfenVarZb.g();
                } catch (JSONException e12) {
                    zzbza.g("Failed to create JSON object from the request string.");
                    this.f6362c.u("Internal error for request JSON: " + e12.toString());
                    zzac zzacVar11 = this.f6365f;
                    zzf.c(zzacVar11.A, zzacVar11.f6380s, "sgf", new Pair("sgf_reason", "request_invalid"));
                    zzfec zzfecVar3 = this.f6363d;
                    zzfecVar3.b(e12);
                    zzfecVar3.y0(false);
                    com.google.android.gms.ads.internal.zzt.q().u(e12, "SignalGeneratorImpl.generateSignals.onSuccess");
                    if (!((Boolean) zzbcd.f10516e.e()).booleanValue() || zzfenVarZb == null) {
                        return;
                    }
                    zzfenVarZb.a(this.f6363d);
                    zzfenVarZb.g();
                }
            } catch (RemoteException e13) {
                zzfec zzfecVar4 = this.f6363d;
                zzfecVar4.b(e13);
                zzfecVar4.y0(false);
                zzbza.e(BuildConfig.FLAVOR, e13);
                com.google.android.gms.ads.internal.zzt.q().u(e13, "SignalGeneratorImpl.generateSignals.onSuccess");
                if (!((Boolean) zzbcd.f10516e.e()).booleanValue() || zzfenVarZb == null) {
                    return;
                }
                zzfenVarZb.a(this.f6363d);
                zzfenVarZb.g();
            }
        } catch (Throwable th) {
            if (((Boolean) zzbcd.f10516e.e()).booleanValue() && zzfenVarZb != null) {
                zzfenVarZb.a(this.f6363d);
                zzfenVarZb.g();
            }
            throw th;
        }
    }
}
