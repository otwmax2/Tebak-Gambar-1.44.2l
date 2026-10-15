package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzegx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f16629a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f16630b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f16631c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f16632d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JSONObject f16633e;

    zzegx(Executor executor) {
        this.f16632d = executor;
    }

    private final synchronized List g(JSONObject jSONObject, String str) {
        ArrayList arrayList = new ArrayList();
        if (jSONObject == null) {
            return arrayList;
        }
        Bundle bundleL = l(jSONObject.optJSONObject("data"));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("rtb_adapters");
        if (jSONArrayOptJSONArray == null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
            String strOptString = jSONArrayOptJSONArray.optString(i10, BuildConfig.FLAVOR);
            if (!TextUtils.isEmpty(strOptString)) {
                arrayList2.add(strOptString);
            }
        }
        int size = arrayList2.size();
        for (int i11 = 0; i11 < size; i11++) {
            String str2 = (String) arrayList2.get(i11);
            f(str2);
            if (((zzegz) this.f16629a.get(str2)) != null) {
                arrayList.add(new zzegz(str2, str, bundleL));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void h() {
        this.f16630b.clear();
        this.f16629a.clear();
        j();
        k();
    }

    private final synchronized void i(String str, String str2, List list) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        Map map = (Map) this.f16631c.get(str);
        if (map == null) {
            map = new HashMap();
        }
        this.f16631c.put(str, map);
        List arrayList = (List) map.get(str2);
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        arrayList.addAll(list);
        map.put(str2, arrayList);
    }

    private final synchronized void j() {
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectF = com.google.android.gms.ads.internal.zzt.q().h().f().f();
        if (jSONObjectF != null) {
            try {
                JSONArray jSONArrayOptJSONArray2 = jSONObjectF.optJSONArray("ad_unit_id_settings");
                this.f16633e = jSONObjectF.optJSONObject("ad_unit_patterns");
                if (jSONArrayOptJSONArray2 != null) {
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray2.length(); i10++) {
                        JSONObject jSONObject = jSONArrayOptJSONArray2.getJSONObject(i10);
                        String lowerCase = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10256i9)).booleanValue() ? jSONObject.optString("ad_unit_id", BuildConfig.FLAVOR).toLowerCase(Locale.ROOT) : jSONObject.optString("ad_unit_id", BuildConfig.FLAVOR);
                        String strOptString = jSONObject.optString("format", BuildConfig.FLAVOR);
                        ArrayList arrayList = new ArrayList();
                        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("mediation_config");
                        if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("ad_networks")) != null) {
                            for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                                arrayList.addAll(g(jSONArrayOptJSONArray.getJSONObject(i11), strOptString));
                            }
                        }
                        i(strOptString, lowerCase, arrayList);
                    }
                }
            } catch (JSONException e10) {
                com.google.android.gms.ads.internal.util.zze.l("Malformed config loading JSON.", e10);
            }
        }
    }

    private final synchronized void k() {
        if (!((Boolean) zzbcq.f10587f.e()).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C1)).booleanValue()) {
                JSONObject jSONObjectF = com.google.android.gms.ads.internal.zzt.q().h().f().f();
                if (jSONObjectF == null) {
                    return;
                }
                try {
                    JSONArray jSONArray = jSONObjectF.getJSONArray("signal_adapters");
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i10);
                        Bundle bundleL = l(jSONObject.optJSONObject("data"));
                        String strOptString = jSONObject.optString("adapter_class_name");
                        boolean zOptBoolean = jSONObject.optBoolean("render", false);
                        boolean zOptBoolean2 = jSONObject.optBoolean("collect_signals", false);
                        if (!TextUtils.isEmpty(strOptString)) {
                            this.f16630b.put(strOptString, new zzehb(strOptString, zOptBoolean2, zOptBoolean, bundleL));
                        }
                    }
                } catch (JSONException e10) {
                    com.google.android.gms.ads.internal.util.zze.l("Malformed config loading JSON.", e10);
                }
            }
        }
    }

    private static final Bundle l(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                bundle.putString(next, jSONObject.optString(next, BuildConfig.FLAVOR));
            }
        }
        return bundle;
    }

    public final synchronized Map a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            Map map = (Map) this.f16631c.get(str);
            if (map == null) {
                return zzfqn.d();
            }
            List<zzegz> list = (List) map.get(str2);
            if (list == null) {
                String strA = zzdnk.a(this.f16633e, str2, str);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10256i9)).booleanValue()) {
                    strA = strA.toLowerCase(Locale.ROOT);
                }
                list = (List) map.get(strA);
            }
            if (list == null) {
                return zzfqn.d();
            }
            HashMap map2 = new HashMap();
            for (zzegz zzegzVar : list) {
                String str3 = zzegzVar.f16635a;
                if (!map2.containsKey(str3)) {
                    map2.put(str3, new ArrayList());
                }
                ((List) map2.get(str3)).add(zzegzVar.f16637c);
            }
            return zzfqn.c(map2);
        }
        return zzfqn.d();
    }

    public final synchronized Map b() {
        return zzfqn.c(this.f16630b);
    }

    public final void d() {
        com.google.android.gms.ads.internal.zzt.q().h().w0(new Runnable() { // from class: com.google.android.gms.internal.ads.zzegv
            @Override // java.lang.Runnable
            public final void run() {
                this.f16627o.e();
            }
        });
        this.f16632d.execute(new zzegw(this));
    }

    final /* synthetic */ void e() {
        this.f16632d.execute(new zzegw(this));
    }

    public final synchronized void f(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f16629a.containsKey(str)) {
            return;
        }
        this.f16629a.put(str, new zzegz(str, BuildConfig.FLAVOR, new Bundle()));
    }
}
