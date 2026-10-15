package x5;

import org.json.JSONObject;
import q5.w;
import x5.d;

/* JADX INFO: compiled from: DefaultSettingsJsonTransform.java */
/* JADX INFO: loaded from: classes2.dex */
class b implements h {
    b() {
    }

    static d b(w wVar) {
        return new d(((long) 3600000) + wVar.a(), new d.b(8, 4), new d.a(true, false, false), 0, 3600, 10.0d, 1.2d, 60);
    }

    @Override // x5.h
    public d a(w wVar, JSONObject jSONObject) {
        return b(wVar);
    }
}
