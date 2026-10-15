package g5;

import android.net.Uri;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_auth.zzbk;
import com.google.android.gms.internal.firebase_auth.zzbl;
import java.util.Set;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final zzbl<String, Integer> f29851g = new zzbk().a("recoverEmail", 2).a("resetPassword", 0).a("signIn", 4).a("verifyEmail", 1).a("verifyBeforeChangeEmail", 5).a("revertSecondFactorAddition", 6).b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f29852a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f29853b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f29854c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f29855d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f29856e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f29857f;

    private b(String str) {
        String strC = c(str, "apiKey");
        this.f29852a = strC;
        String strC2 = c(str, "oobCode");
        this.f29853b = strC2;
        String strC3 = c(str, "mode");
        this.f29854c = strC3;
        if (strC == null || strC2 == null || strC3 == null) {
            throw new IllegalArgumentException(String.format("%s, %s and %s are required in a valid action code URL", "apiKey", "oobCode", "mode"));
        }
        this.f29855d = c(str, "continueUrl");
        this.f29856e = c(str, "languageCode");
        this.f29857f = c(str, "tenantId");
    }

    public static b a(String str) {
        Preconditions.g(str);
        try {
            return new b(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    private static String c(String str, String str2) {
        Uri uri = Uri.parse(str);
        try {
            Set<String> queryParameterNames = uri.getQueryParameterNames();
            if (queryParameterNames.contains(str2)) {
                return uri.getQueryParameter(str2);
            }
            if (queryParameterNames.contains("link")) {
                return Uri.parse(uri.getQueryParameter("link")).getQueryParameter(str2);
            }
            return null;
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }

    public final String b() {
        return this.f29857f;
    }
}
