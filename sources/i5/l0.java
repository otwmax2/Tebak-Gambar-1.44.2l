package i5;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.Collections;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class l0 implements Callable<a<v0>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v0 f30432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f30433b;

    public l0(v0 v0Var, Context context) {
        this.f30432a = v0Var;
        this.f30433b = context;
    }

    private final GoogleApi<v0> a(boolean z10, Context context) {
        v0 v0Var = (v0) this.f30432a.clone();
        v0Var.f30408o = z10;
        return new f(context, u0.f30448c, v0Var, new b5.n());
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ a<v0> call() throws Exception {
        int iC;
        if (m0.f30435a == -1 || m0.f30436b == -1) {
            int iA = DynamiteModule.a(this.f30433b, "com.google.firebase.auth");
            if (iA == 0) {
                iC = 1;
            } else {
                int iJ = GoogleApiAvailability.p().j(this.f30433b, 12451000);
                iC = (iJ == 0 || iJ == 2) ? DynamiteModule.c(this.f30433b, "com.google.android.gms.firebase_auth") : 0;
            }
            int unused = m0.f30435a = iC;
            int unused2 = m0.f30436b = iA;
        }
        return new a<>(m0.f30435a != 0 ? a(false, this.f30433b) : null, m0.f30436b != 0 ? a(true, this.f30433b) : null, new c(m0.f30435a, m0.f30436b, Collections.emptyMap()));
    }
}
