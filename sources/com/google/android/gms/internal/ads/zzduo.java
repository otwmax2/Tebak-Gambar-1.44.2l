package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.ServerProtocol;
import com.vungle.mediation.BuildConfig;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzduo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcgd f15707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f15708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbzg f15709c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeyx f15710d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f15711e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f15712f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzfen f15713g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzezj f15714h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzdpd f15715i;

    public zzduo(zzcgd zzcgdVar, Context context, zzbzg zzbzgVar, zzeyx zzeyxVar, Executor executor, String str, zzfen zzfenVar, zzdpd zzdpdVar) {
        this.f15707a = zzcgdVar;
        this.f15708b = context;
        this.f15709c = zzbzgVar;
        this.f15710d = zzeyxVar;
        this.f15711e = executor;
        this.f15712f = str;
        this.f15713g = zzfenVar;
        this.f15714h = zzcgdVar.y();
        this.f15715i = zzdpdVar;
    }

    private final zzfut c(final String str, final String str2) {
        zzfec zzfecVarA = zzfeb.a(this.f15708b, 11);
        zzfecVarA.f();
        zzbmf zzbmfVarA = com.google.android.gms.ads.internal.zzt.h().a(this.f15708b, this.f15709c, this.f15707a.B());
        zzblz zzblzVar = zzbmc.f10946b;
        final zzblv zzblvVarA = zzbmfVarA.a("google.afma.response.normalize", zzblzVar, zzblzVar);
        zzfut zzfutVarM = zzfuj.m(zzfuj.m(zzfuj.m(zzfuj.h(BuildConfig.FLAVOR), new zzftq() { // from class: com.google.android.gms.internal.ads.zzdul
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) throws JSONException {
                String str3 = str;
                String str4 = str2;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("headers", new JSONObject());
                    jSONObject3.put(SDKConstants.PARAM_A2U_BODY, str3);
                    jSONObject2.put("base_url", BuildConfig.FLAVOR);
                    jSONObject2.put("signals", new JSONObject(str4));
                    jSONObject.put("request", jSONObject2);
                    jSONObject.put("response", jSONObject3);
                    jSONObject.put("flags", new JSONObject());
                    return zzfuj.h(jSONObject);
                } catch (JSONException e10) {
                    throw new JSONException("Preloaded loader: ".concat(String.valueOf(e10.getCause())));
                }
            }
        }, this.f15711e), new zzftq() { // from class: com.google.android.gms.internal.ads.zzdum
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzblvVarA.c((JSONObject) obj);
            }
        }, this.f15711e), new zzftq() { // from class: com.google.android.gms.internal.ads.zzdun
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f15706a.b((JSONObject) obj);
            }
        }, this.f15711e);
        zzfem.a(zzfutVarM, this.f15713g, zzfecVarA);
        return zzfutVarM;
    }

    private final String d(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && "unknown".equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.f15712f));
            }
            return jSONObject.toString();
        } catch (JSONException e10) {
            zzbza.g("Failed to update the ad types for rendering. ".concat(e10.toString()));
            return str;
        }
    }

    private static final String e(String str) {
        try {
            return new JSONObject(str).optString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, BuildConfig.FLAVOR);
        } catch (JSONException unused) {
            return BuildConfig.FLAVOR;
        }
    }

    public final zzfut a() {
        String strB = this.f15710d.f17731d.L;
        if (!TextUtils.isEmpty(strB)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10440z6)).booleanValue()) {
                String strE = e(strB);
                zzbaj zzbajVar = zzbar.L6;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).booleanValue() && strE.isEmpty()) {
                    int iLastIndexOf = strB.lastIndexOf("&request_id=");
                    strE = iLastIndexOf != -1 ? strB.substring(iLastIndexOf + 12) : BuildConfig.FLAVOR;
                }
                if (TextUtils.isEmpty(strE)) {
                    return zzfuj.g(new zzeek(15, "Invalid ad string."));
                }
                String strB2 = this.f15707a.q().b(strE, this.f15715i);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).booleanValue()) {
                    zzdpd zzdpdVar = this.f15715i;
                    if (!TextUtils.isEmpty(strB2)) {
                        Boolean bool = new JSONObject(strB2).optString("is_gbid").equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE) ? Boolean.TRUE : Boolean.FALSE;
                        if (bool.booleanValue()) {
                            int iLastIndexOf2 = strB.lastIndexOf("&");
                            String string = null;
                            String strSubstring = iLastIndexOf2 != -1 ? strB.substring(0, iLastIndexOf2) : null;
                            if (!TextUtils.isEmpty(strSubstring)) {
                                try {
                                    byte[] bArrDecode = Base64.decode(strSubstring, 11);
                                    byte[] bytes = strE.getBytes("UTF-8");
                                    try {
                                        string = new JSONObject(strB2).getString("arek");
                                    } catch (JSONException e10) {
                                        com.google.android.gms.ads.internal.util.zze.k("Failed to get key from QueryJSONMap".concat(e10.toString()));
                                        com.google.android.gms.ads.internal.zzt.q().u(e10, "CryptoUtils.getKeyFromQueryJsonMap");
                                    }
                                    strB = zzezj.b(bArrDecode, bytes, string, zzdpdVar);
                                } catch (UnsupportedEncodingException e11) {
                                    com.google.android.gms.ads.internal.util.zze.k("Failed to decode the adResponse. ".concat(e11.toString()));
                                    com.google.android.gms.ads.internal.zzt.q().u(e11, "PreloadedLoader.decryptAdResponseIfNecessary");
                                }
                            }
                        }
                    }
                }
                if (!TextUtils.isEmpty(strB2)) {
                    return c(strB, d(strB2));
                }
            }
        }
        com.google.android.gms.ads.internal.client.zzc zzcVar = this.f15710d.f17731d.G;
        if (zzcVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10418x6)).booleanValue()) {
                String strE2 = e(zzcVar.f5800o);
                String strE3 = e(zzcVar.f5801p);
                if (TextUtils.isEmpty(strE3) || !strE2.equals(strE3)) {
                    this.f15715i.a().put("ridmm", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                } else {
                    this.f15707a.q().f(strE2);
                    this.f15715i.a().put("rid", strE2);
                }
            }
            return c(zzcVar.f5800o, d(zzcVar.f5801p));
        }
        return zzfuj.g(new zzeek(14, "Mismatch request IDs."));
    }

    final /* synthetic */ zzfut b(JSONObject jSONObject) throws Exception {
        return zzfuj.h(new zzeyo(new zzeyl(this.f15710d), zzeyn.a(new StringReader(jSONObject.toString()))));
    }
}
