package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbxg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    static zzbxg f11486a;

    public static synchronized zzbxg d(Context context) {
        zzbxg zzbxgVar = f11486a;
        if (zzbxgVar != null) {
            return zzbxgVar;
        }
        Context applicationContext = context.getApplicationContext();
        zzbar.c(applicationContext);
        com.google.android.gms.ads.internal.util.zzg zzgVarH = com.google.android.gms.ads.internal.zzt.q().h();
        zzgVarH.H0(applicationContext);
        zzbwk zzbwkVar = new zzbwk(null);
        zzbwkVar.b(applicationContext);
        zzbwkVar.c(com.google.android.gms.ads.internal.zzt.b());
        zzbwkVar.a(zzgVarH);
        zzbwkVar.d(com.google.android.gms.ads.internal.zzt.p());
        zzbxg zzbxgVarE = zzbwkVar.e();
        f11486a = zzbxgVarE;
        zzbxgVarE.a().a();
        f11486a.b().c();
        zzbxk zzbxkVarC = f11486a.c();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10313o0)).booleanValue()) {
            HashMap map = new HashMap();
            try {
                JSONObject jSONObject = new JSONObject((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10335q0));
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    HashSet hashSet = new HashSet();
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
                    if (jSONArrayOptJSONArray != null) {
                        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                            String strOptString = jSONArrayOptJSONArray.optString(i10);
                            if (strOptString != null) {
                                hashSet.add(strOptString);
                            }
                        }
                        map.put(next, hashSet);
                    }
                }
                Iterator it = map.keySet().iterator();
                while (it.hasNext()) {
                    zzbxkVarC.c((String) it.next());
                }
                zzbxkVarC.d(new zzbxi(zzbxkVarC, map));
            } catch (JSONException e10) {
                zzbza.c("Failed to parse listening list", e10);
            }
        }
        return f11486a;
    }

    abstract zzbwd a();

    abstract zzbwh b();

    abstract zzbxk c();
}
