package i5;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.firebase_auth.zzcv;
import com.google.android.gms.internal.firebase_auth.zze;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
final class q extends z0<Object, j5.c> {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final g5.d0 f30441z;

    public q(g5.d0 d0Var) {
        super(2);
        this.f30441z = (g5.d0) Preconditions.l(d0Var, "credential cannot be null");
    }

    @Override // i5.z0
    public final void m() {
        j5.e0 e0VarN = i.n(this.f30458c, this.f30466k);
        ((j5.c) this.f30460e).a(this.f30465j, e0VarN);
        l(new j5.y(e0VarN));
    }

    final /* synthetic */ void o(n0 n0Var, TaskCompletionSource taskCompletionSource) throws RemoteException {
        this.f30462g = new i1(this, taskCompletionSource);
        if (this.f30475t) {
            n0Var.zza().F5(this.f30459d.c(), this.f30441z, this.f30457b);
        } else {
            n0Var.zza().g6(new zzcv(this.f30459d.c(), this.f30441z), this.f30457b);
        }
    }

    @Override // i5.e
    public final String zza() {
        return "linkPhoneAuthCredential";
    }

    @Override // i5.e
    public final TaskApiCall<n0, Object> zzb() {
        return TaskApiCall.a().c(false).d((this.f30475t || this.f30476u) ? null : new Feature[]{zze.f22528b}).b(new RemoteCall(this) { // from class: i5.p

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final q f30440a;

            {
                this.f30440a = this;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void a(Object obj, Object obj2) throws RemoteException {
                this.f30440a.o((n0) obj, (TaskCompletionSource) obj2);
            }
        }).a();
    }
}
