package d9;

import com.vungle.mediation.BuildConfig;
import ja.a0;
import ja.c0;
import ja.e0;
import ja.s;
import java.io.IOException;

/* JADX INFO: compiled from: GuestAuthenticator.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements ja.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final com.twitter.sdk.android.core.f f28769b;

    public c(com.twitter.sdk.android.core.f fVar) {
        this.f28769b = fVar;
    }

    @Override // ja.b
    public a0 a(e0 e0Var, c0 c0Var) throws IOException {
        return d(c0Var);
    }

    boolean b(c0 c0Var) {
        int i10 = 1;
        while (true) {
            c0Var = c0Var.l();
            if (c0Var == null) {
                break;
            }
            i10++;
        }
        return i10 < 2;
    }

    com.twitter.sdk.android.core.e c(c0 c0Var) {
        s sVarD = c0Var.n().d();
        String strC = sVarD.c("Authorization");
        String strC2 = sVarD.c("x-guest-token");
        if (strC == null || strC2 == null) {
            return null;
        }
        return new com.twitter.sdk.android.core.e(new com.twitter.sdk.android.core.internal.oauth.a("bearer", strC.replace("bearer ", BuildConfig.FLAVOR), strC2));
    }

    a0 d(c0 c0Var) {
        if (b(c0Var)) {
            com.twitter.sdk.android.core.e eVarD = this.f28769b.d(c(c0Var));
            com.twitter.sdk.android.core.internal.oauth.a aVarA = eVarD == null ? null : eVarD.a();
            if (aVarA != null) {
                return e(c0Var.n(), aVarA);
            }
        }
        return null;
    }

    a0 e(a0 a0Var, com.twitter.sdk.android.core.internal.oauth.a aVar) {
        a0.a aVarG = a0Var.g();
        a.a(aVarG, aVar);
        return aVarG.b();
    }
}
