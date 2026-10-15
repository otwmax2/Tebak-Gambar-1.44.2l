package r5;

import com.google.auto.value.AutoValue;
import org.json.JSONException;
import org.json.JSONObject;
import s5.f0;

/* JADX INFO: compiled from: RolloutAssignment.java */
/* JADX INFO: loaded from: classes2.dex */
@AutoValue
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d6.a f34291a = new f6.d().j(a.f34245a).i();

    static i a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        return b(jSONObject.getString("rolloutId"), jSONObject.getString("parameterKey"), jSONObject.getString("parameterValue"), jSONObject.getString("variantId"), jSONObject.getLong("templateVersion"));
    }

    public static i b(String str, String str2, String str3, String str4, long j10) {
        return new b(str, str2, i(str3), str4, j10);
    }

    private static String i(String str) {
        return str.length() > 256 ? str.substring(0, 256) : str;
    }

    public abstract String c();

    public abstract String d();

    public abstract String e();

    public abstract long f();

    public abstract String g();

    public f0.e.d.AbstractC0246e h() {
        return f0.e.d.AbstractC0246e.a().d(f0.e.d.AbstractC0246e.b.a().c(g()).b(e()).a()).b(c()).c(d()).e(f()).a();
    }
}
