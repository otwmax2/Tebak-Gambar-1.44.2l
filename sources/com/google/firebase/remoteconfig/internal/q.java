package com.google.firebase.remoteconfig.internal;

import android.os.Bundle;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: Personalization.java */
/* JADX INFO: loaded from: classes2.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k6.b<e5.a> f26671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, String> f26672b = Collections.synchronizedMap(new HashMap());

    public q(k6.b<e5.a> bVar) {
        this.f26671a = bVar;
    }

    public void a(String str, f fVar) {
        JSONObject jSONObjectOptJSONObject;
        e5.a aVar = this.f26671a.get();
        if (aVar == null) {
            return;
        }
        JSONObject jSONObjectF = fVar.f();
        if (jSONObjectF.length() < 1) {
            return;
        }
        JSONObject jSONObjectD = fVar.d();
        if (jSONObjectD.length() >= 1 && (jSONObjectOptJSONObject = jSONObjectF.optJSONObject(str)) != null) {
            String strOptString = jSONObjectOptJSONObject.optString("choiceId");
            if (strOptString.isEmpty()) {
                return;
            }
            synchronized (this.f26672b) {
                if (strOptString.equals(this.f26672b.get(str))) {
                    return;
                }
                this.f26672b.put(str, strOptString);
                Bundle bundle = new Bundle();
                bundle.putString("arm_key", str);
                bundle.putString("arm_value", jSONObjectD.optString(str));
                bundle.putString("personalization_id", jSONObjectOptJSONObject.optString("personalizationId"));
                bundle.putInt("arm_index", jSONObjectOptJSONObject.optInt("armIndex", -1));
                bundle.putString("group", jSONObjectOptJSONObject.optString("group"));
                aVar.c("fp", "personalization_assignment", bundle);
                Bundle bundle2 = new Bundle();
                bundle2.putString("_fpid", strOptString);
                aVar.c("fp", "_fpc", bundle2);
            }
        }
    }
}
