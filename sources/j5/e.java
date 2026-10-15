package j5;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class e implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f30678o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ f f30679p;

    e(f fVar, String str) {
        this.f30679p = fVar;
        this.f30678o = Preconditions.g(str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(b5.g.n(this.f30678o));
        if (firebaseAuth.b() != null) {
            Task<g5.u> taskA = firebaseAuth.a(true);
            f.f30692h.g("Token refreshing started", new Object[0]);
            taskA.f(new g(this));
        }
    }
}
