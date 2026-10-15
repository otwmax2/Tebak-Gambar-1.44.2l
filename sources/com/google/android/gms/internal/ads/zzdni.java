package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdni {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f15222a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f15223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f15224c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f15225d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JSONObject f15226e;

    public zzdni(Executor executor) {
        this.f15224c = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final synchronized void f() {
        Map map;
        this.f15225d = true;
        zzbyd zzbydVarF = com.google.android.gms.ads.internal.zzt.q().h().f();
        if (zzbydVarF == null) {
            return;
        }
        JSONObject jSONObjectF = zzbydVarF.f();
        if (jSONObjectF == null) {
            return;
        }
        this.f15223b = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B3)).booleanValue() ? jSONObjectF.optJSONObject("common_settings") : null;
        this.f15226e = jSONObjectF.optJSONObject("ad_unit_patterns");
        JSONArray jSONArrayOptJSONArray = jSONObjectF.optJSONArray("ad_unit_id_settings");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("ad_unit_id");
                    String strOptString2 = jSONObjectOptJSONObject.optString("format");
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("request_signals");
                    if (strOptString != null && jSONObjectOptJSONObject2 != null && strOptString2 != null) {
                        if (this.f15222a.containsKey(strOptString2)) {
                            map = (Map) this.f15222a.get(strOptString2);
                        } else {
                            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                            this.f15222a.put(strOptString2, concurrentHashMap);
                            map = concurrentHashMap;
                        }
                        map.put(strOptString, jSONObjectOptJSONObject2);
                    }
                }
            }
        }
    }

    @CheckForNull
    public final JSONObject a() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B3)).booleanValue()) {
            return this.f15223b;
        }
        return null;
    }

    @CheckForNull
    public final JSONObject b(String str, String str2) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.A3)).booleanValue() || str == null || str2 == null) {
            return null;
        }
        if (!this.f15225d) {
            f();
        }
        Map map = (Map) this.f15222a.get(str2);
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = (JSONObject) map.get(str);
        if (jSONObject != null) {
            return jSONObject;
        }
        String strA = zzdnk.a(this.f15226e, str, str2);
        if (strA == null) {
            return null;
        }
        return (JSONObject) map.get(strA);
    }

    public final void c() {
        com.google.android.gms.ads.internal.zzt.q().h().w0(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdnf
            @Override // java.lang.Runnable
            public final void run() {
                this.f15219o.e();
            }
        });
        this.f15224c.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdng
            @Override // java.lang.Runnable
            public final void run() {
                this.f15220o.f();
            }
        });
    }

    final /* synthetic */ void e() {
        this.f15224c.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdnh
            @Override // java.lang.Runnable
            public final void run() {
                this.f15221o.d();
            }
        });
    }
}
