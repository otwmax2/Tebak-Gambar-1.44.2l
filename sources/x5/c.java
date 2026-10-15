package x5;

import android.text.TextUtils;
import com.facebook.share.internal.ShareConstants;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import q5.r;

/* JADX INFO: compiled from: DefaultSettingsSpiCall.java */
/* JADX INFO: loaded from: classes2.dex */
class c implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f36266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u5.b f36267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n5.g f36268c;

    public c(String str, u5.b bVar) {
        this(str, bVar, n5.g.f());
    }

    private u5.a b(u5.a aVar, j jVar) {
        c(aVar, "X-CRASHLYTICS-GOOGLE-APP-ID", jVar.f36297a);
        c(aVar, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        c(aVar, "X-CRASHLYTICS-API-CLIENT-VERSION", r.i());
        c(aVar, "Accept", "application/json");
        c(aVar, "X-CRASHLYTICS-DEVICE-MODEL", jVar.f36298b);
        c(aVar, "X-CRASHLYTICS-OS-BUILD-VERSION", jVar.f36299c);
        c(aVar, "X-CRASHLYTICS-OS-DISPLAY-VERSION", jVar.f36300d);
        c(aVar, "X-CRASHLYTICS-INSTALLATION-ID", jVar.f36301e.a().c());
        return aVar;
    }

    private void c(u5.a aVar, String str, String str2) {
        if (str2 != null) {
            aVar.d(str, str2);
        }
    }

    private JSONObject e(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e10) {
            this.f36268c.l("Failed to parse settings JSON from " + this.f36266a, e10);
            this.f36268c.k("Settings response " + str);
            return null;
        }
    }

    private Map<String, String> f(j jVar) {
        HashMap map = new HashMap();
        map.put("build_version", jVar.f36304h);
        map.put("display_version", jVar.f36303g);
        map.put(ShareConstants.FEED_SOURCE_PARAM, Integer.toString(jVar.f36305i));
        String str = jVar.f36302f;
        if (!TextUtils.isEmpty(str)) {
            map.put("instance", str);
        }
        return map;
    }

    @Override // x5.k
    public JSONObject a(j jVar, boolean z10) {
        if (!z10) {
            throw new RuntimeException("An invalid data collection token was used.");
        }
        try {
            Map<String, String> mapF = f(jVar);
            u5.a aVarB = b(d(mapF), jVar);
            this.f36268c.b("Requesting settings from " + this.f36266a);
            this.f36268c.i("Settings query params were: " + mapF);
            return g(aVarB.c());
        } catch (IOException e10) {
            this.f36268c.e("Settings request failed.", e10);
            return null;
        }
    }

    protected u5.a d(Map<String, String> map) {
        return this.f36267b.a(this.f36266a, map).d("User-Agent", "Crashlytics Android SDK/" + r.i()).d("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
    }

    JSONObject g(u5.c cVar) {
        int iB = cVar.b();
        this.f36268c.i("Settings response code was: " + iB);
        if (h(iB)) {
            return e(cVar.a());
        }
        this.f36268c.d("Settings request failed; (status: " + iB + ") from " + this.f36266a);
        return null;
    }

    boolean h(int i10) {
        return i10 == 200 || i10 == 201 || i10 == 202 || i10 == 203;
    }

    c(String str, u5.b bVar, n5.g gVar) {
        if (str == null) {
            throw new IllegalArgumentException("url must not be null.");
        }
        this.f36268c = gVar;
        this.f36267b = bVar;
        this.f36266a = str;
    }
}
