package i5;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.firebase_auth.zzcn;
import com.google.android.gms.internal.firebase_auth.zze;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
final class k extends z0<g5.u, j5.c> {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final zzcn f30429z;

    public k(String str) {
        super(1);
        Preconditions.h(str, "refresh token cannot be null");
        this.f30429z = new zzcn(str);
    }

    @Override // i5.z0
    public final void m() {
        if (TextUtils.isEmpty(this.f30465j.Y3())) {
            this.f30465j.V3(this.f30429z.V3());
        }
        ((j5.c) this.f30460e).a(this.f30465j, this.f30459d);
        l(j5.l.a(this.f30465j.Z3()));
    }

    final /* synthetic */ void o(n0 n0Var, TaskCompletionSource taskCompletionSource) throws RemoteException {
        this.f30462g = new i1(this, taskCompletionSource);
        if (this.f30475t) {
            n0Var.zza().f3(this.f30429z.V3(), this.f30457b);
        } else {
            n0Var.zza().b2(this.f30429z, this.f30457b);
        }
    }

    @Override // i5.e
    public final String zza() {
        return "getAccessToken";
    }

    @Override // i5.e
    public final TaskApiCall<n0, g5.u> zzb() {
        return TaskApiCall.a().c(false).d((this.f30475t || this.f30476u) ? null : new Feature[]{zze.f22528b}).b(new RemoteCall(this) { // from class: i5.j

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final k f30427a;

            {
                this.f30427a = this;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void a(Object obj, Object obj2) throws RemoteException {
                this.f30427a.o((n0) obj, (TaskCompletionSource) obj2);
            }
        }).a();
    }
}
