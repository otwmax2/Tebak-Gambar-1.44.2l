package i5;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.FirebaseAuth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class i1<ResultT, CallbackT> implements a1<ResultT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z0<ResultT, CallbackT> f30425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TaskCompletionSource<ResultT> f30426b;

    public i1(z0<ResultT, CallbackT> z0Var, TaskCompletionSource<ResultT> taskCompletionSource) {
        this.f30425a = z0Var;
        this.f30426b = taskCompletionSource;
    }

    @Override // i5.a1
    public final void a(ResultT resultt, Status status) {
        Preconditions.l(this.f30426b, "completion source cannot be null");
        if (status == null) {
            this.f30426b.c(resultt);
            return;
        }
        z0<ResultT, CallbackT> z0Var = this.f30425a;
        if (z0Var.f30474s != null) {
            TaskCompletionSource<ResultT> taskCompletionSource = this.f30426b;
            FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(z0Var.f30458c);
            z0<ResultT, CallbackT> z0Var2 = this.f30425a;
            taskCompletionSource.b(o0.c(firebaseAuth, z0Var2.f30474s, ("reauthenticateWithCredential".equals(z0Var2.zza()) || "reauthenticateWithCredentialWithData".equals(this.f30425a.zza())) ? this.f30425a.f30459d : null));
            return;
        }
        g5.d dVar = z0Var.f30471p;
        if (dVar != null) {
            this.f30426b.b(o0.b(status, dVar, z0Var.f30472q, z0Var.f30473r));
        } else {
            this.f30426b.b(o0.a(status));
        }
    }
}
