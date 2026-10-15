package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdjo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f14931a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdjj f14932b;

    public zzdjo(Executor executor, zzdjj zzdjjVar) {
        this.f14931a = executor;
        this.f14932b = zzdjjVar;
    }

    public final zzfut a(JSONObject jSONObject, String str) {
        zzfut zzfutVarH;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("custom_assets");
        if (jSONArrayOptJSONArray == null) {
            return zzfuj.h(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = jSONArrayOptJSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
            if (jSONObjectOptJSONObject == null) {
                zzfutVarH = zzfuj.h(null);
            } else {
                final String strOptString = jSONObjectOptJSONObject.optString("name");
                if (strOptString == null) {
                    zzfutVarH = zzfuj.h(null);
                } else {
                    String strOptString2 = jSONObjectOptJSONObject.optString("type");
                    zzfutVarH = "string".equals(strOptString2) ? zzfuj.h(new zzdjn(strOptString, jSONObjectOptJSONObject.optString("string_value"))) : "image".equals(strOptString2) ? zzfuj.l(this.f14932b.e(jSONObjectOptJSONObject, "image_value"), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzdjl
                        @Override // com.google.android.gms.internal.ads.zzfnj
                        public final Object a(Object obj) {
                            return new zzdjn(strOptString, (zzbdj) obj);
                        }
                    }, this.f14931a) : zzfuj.h(null);
                }
            }
            arrayList.add(zzfutVarH);
        }
        return zzfuj.l(zzfuj.d(arrayList), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzdjm
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                ArrayList arrayList2 = new ArrayList();
                for (zzdjn zzdjnVar : (List) obj) {
                    if (zzdjnVar != null) {
                        arrayList2.add(zzdjnVar);
                    }
                }
                return arrayList2;
            }
        }, this.f14931a);
    }
}
