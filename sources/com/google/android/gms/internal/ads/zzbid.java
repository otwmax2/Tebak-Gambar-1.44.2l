package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbid implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f10766a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("lock")
    private final Map f10767b = new HashMap();

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void a(Object obj, Map map) {
        String str = (String) map.get("id");
        String str2 = (String) map.get("fail");
        String str3 = (String) map.get("fail_reason");
        String str4 = (String) map.get("fail_stack");
        String str5 = (String) map.get("result");
        if (true == TextUtils.isEmpty(str4)) {
            str3 = "Unknown Fail Reason.";
        }
        String strConcat = TextUtils.isEmpty(str4) ? BuildConfig.FLAVOR : "\n".concat(String.valueOf(str4));
        synchronized (this.f10766a) {
            zzbic zzbicVar = (zzbic) this.f10767b.remove(str);
            if (zzbicVar == null) {
                zzbza.g("Received result for unexpected method invocation: " + str);
                return;
            }
            if (!TextUtils.isEmpty(str2)) {
                zzbicVar.o(str3 + strConcat);
                return;
            }
            if (str5 == null) {
                zzbicVar.a(null);
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str5);
                if (com.google.android.gms.ads.internal.util.zze.m()) {
                    com.google.android.gms.ads.internal.util.zze.k("Result GMSG: " + jSONObject.toString(2));
                }
                zzbicVar.a(jSONObject);
            } catch (JSONException e10) {
                zzbicVar.o(e10.getMessage());
            }
        }
    }

    public final zzfut b(zzbkv zzbkvVar, String str, JSONObject jSONObject) {
        zzbzs zzbzsVar = new zzbzs();
        com.google.android.gms.ads.internal.zzt.r();
        String string = UUID.randomUUID().toString();
        c(string, new zzbib(this, zzbzsVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", string);
            jSONObject2.put("args", jSONObject);
            zzbkvVar.Z0(str, jSONObject2);
        } catch (Exception e10) {
            zzbzsVar.d(e10);
        }
        return zzbzsVar;
    }

    public final void c(String str, zzbic zzbicVar) {
        synchronized (this.f10766a) {
            this.f10767b.put(str, zzbicVar);
        }
    }
}
