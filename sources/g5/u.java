package g5;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth-interop@@19.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f29897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Object> f29898b;

    @KeepForSdk
    public u(String str, Map<String, Object> map) {
        this.f29897a = str;
        this.f29898b = map;
    }

    public Map<String, Object> a() {
        return this.f29898b;
    }

    public String b() {
        Map map = (Map) this.f29898b.get("firebase");
        if (map != null) {
            return (String) map.get("sign_in_provider");
        }
        return null;
    }

    public String c() {
        return this.f29897a;
    }
}
