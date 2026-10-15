package x5;

import org.json.JSONException;
import org.json.JSONObject;
import q5.w;

/* JADX INFO: compiled from: SettingsJsonParser.java */
/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final w f36296a;

    g(w wVar) {
        this.f36296a = wVar;
    }

    private static h a(int i10) {
        if (i10 == 3) {
            return new l();
        }
        n5.g.f().d("Could not determine SettingsJsonTransform for settings version " + i10 + ". Using default settings values.");
        return new b();
    }

    public d b(JSONObject jSONObject) throws JSONException {
        return a(jSONObject.getInt("settings_version")).a(this.f36296a, jSONObject);
    }
}
