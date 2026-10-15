package j5;

import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.internal.firebase_auth.zzbl;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f30715a = new Logger("GetTokenResultFactory", new String[0]);

    public static g5.u a(String str) {
        Map mapA;
        try {
            mapA = k.b(str);
        } catch (h5.a e10) {
            f30715a.b("Error parsing token claims", e10, new Object[0]);
            mapA = zzbl.a();
        }
        return new g5.u(str, mapA);
    }
}
