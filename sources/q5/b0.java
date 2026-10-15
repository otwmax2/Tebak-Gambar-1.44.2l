package q5;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.vungle.mediation.BuildConfig;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;
import q5.c0;

/* JADX INFO: compiled from: IdManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class b0 implements c0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f33877g = Pattern.compile("[^\\p{Alnum}]");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f33878h = Pattern.quote("/");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d0 f33879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f33880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f33881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final l6.e f33882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final x f33883e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c0.a f33884f;

    public b0(Context context, String str, l6.e eVar, x xVar) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        this.f33880b = context;
        this.f33881c = str;
        this.f33882d = eVar;
        this.f33883e = xVar;
        this.f33879a = new d0();
    }

    private synchronized String b(String str, SharedPreferences sharedPreferences) {
        String strE;
        strE = e(UUID.randomUUID().toString());
        n5.g.f().i("Created new Crashlytics installation ID: " + strE + " for FID: " + str);
        sharedPreferences.edit().putString("crashlytics.installation.id", strE).putString("firebase.installation.id", str).apply();
        return strE;
    }

    static String c() {
        return "SYN_" + UUID.randomUUID().toString();
    }

    private static String e(String str) {
        if (str == null) {
            return null;
        }
        return f33877g.matcher(str).replaceAll(BuildConfig.FLAVOR).toLowerCase(Locale.US);
    }

    static boolean k(String str) {
        return str != null && str.startsWith("SYN_");
    }

    private String l(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString("crashlytics.installation.id", null);
    }

    private String m(String str) {
        return str.replaceAll(f33878h, BuildConfig.FLAVOR);
    }

    private boolean n() {
        c0.a aVar = this.f33884f;
        return aVar == null || (aVar.d() == null && this.f33883e.d());
    }

    @Override // q5.c0
    public synchronized c0.a a() {
        if (!n()) {
            return this.f33884f;
        }
        n5.g.f().i("Determining Crashlytics installation ID...");
        SharedPreferences sharedPreferencesQ = i.q(this.f33880b);
        String string = sharedPreferencesQ.getString("firebase.installation.id", null);
        n5.g.f().i("Cached Firebase Installation ID: " + string);
        if (this.f33883e.d()) {
            String strD = d();
            n5.g.f().i("Fetched Firebase Installation ID: " + strD);
            if (strD == null) {
                strD = string == null ? c() : string;
            }
            if (strD.equals(string)) {
                this.f33884f = c0.a.a(l(sharedPreferencesQ), strD);
            } else {
                this.f33884f = c0.a.a(b(strD, sharedPreferencesQ), strD);
            }
        } else if (k(string)) {
            this.f33884f = c0.a.b(l(sharedPreferencesQ));
        } else {
            this.f33884f = c0.a.b(b(c(), sharedPreferencesQ));
        }
        n5.g.f().i("Install IDs: " + this.f33884f);
        return this.f33884f;
    }

    public String d() {
        try {
            return (String) q0.f(this.f33882d.a());
        } catch (Exception e10) {
            n5.g.f().l("Failed to retrieve Firebase Installation ID.", e10);
            return null;
        }
    }

    public String f() {
        return this.f33881c;
    }

    public String g() {
        return this.f33879a.a(this.f33880b);
    }

    public String h() {
        return String.format(Locale.US, "%s/%s", m(Build.MANUFACTURER), m(Build.MODEL));
    }

    public String i() {
        return m(Build.VERSION.INCREMENTAL);
    }

    public String j() {
        return m(Build.VERSION.RELEASE);
    }
}
