package o5;

import android.os.Bundle;
import n5.g;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: BreadcrumbAnalyticsEventReceiver.java */
/* JADX INFO: loaded from: classes2.dex */
public class d implements b, p5.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private p5.a f33088a;

    private static String b(String str, Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put("name", str);
        jSONObject.put("parameters", jSONObject2);
        return jSONObject.toString();
    }

    @Override // p5.b
    public void a(p5.a aVar) {
        this.f33088a = aVar;
        g.f().b("Registered Firebase Analytics event receiver for breadcrumbs");
    }

    @Override // o5.b
    public void s1(String str, Bundle bundle) {
        p5.a aVar = this.f33088a;
        if (aVar != null) {
            try {
                aVar.a("$A$:" + b(str, bundle));
            } catch (JSONException unused) {
                g.f().k("Unable to serialize Firebase Analytics event to breadcrumb.");
            }
        }
    }
}
