package g5;

import com.google.android.gms.common.logging.Logger;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f29871a = new Logger("PhoneAuthProvider", new String[0]);

    public void a(String str) {
        f29871a.e("Sms auto retrieval timed-out.", new Object[0]);
    }

    public void b(String str, e0 e0Var) {
    }

    public abstract void c(d0 d0Var);

    public abstract void d(b5.m mVar);
}
