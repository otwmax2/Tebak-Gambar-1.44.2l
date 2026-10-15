package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzclq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f13440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f13441b;

    zzclq(Map map, Map map2) {
        this.f13440a = map;
        this.f13441b = map2;
    }

    public final void a(zzeyo zzeyoVar) throws Exception {
        for (zzeym zzeymVar : zzeyoVar.f17703b.f17701c) {
            if (this.f13440a.containsKey(zzeymVar.f17697a)) {
                ((zzclt) this.f13440a.get(zzeymVar.f17697a)).a(zzeymVar.f17698b);
            } else if (this.f13441b.containsKey(zzeymVar.f17697a)) {
                zzcls zzclsVar = (zzcls) this.f13441b.get(zzeymVar.f17697a);
                JSONObject jSONObject = zzeymVar.f17698b;
                HashMap map = new HashMap();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    String strOptString = jSONObject.optString(next);
                    if (strOptString != null) {
                        map.put(next, strOptString);
                    }
                }
                zzclsVar.a(map);
            }
        }
    }
}
