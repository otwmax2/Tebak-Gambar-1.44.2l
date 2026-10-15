package i5;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.firebase_auth.zzeh;
import com.google.android.gms.internal.firebase_auth.zzej;
import com.google.android.gms.internal.firebase_auth.zzem;
import com.google.android.gms.internal.firebase_auth.zzew;
import com.google.android.gms.internal.firebase_auth.zzff;
import com.google.android.gms.internal.firebase_auth.zzfm;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
final class b1 extends q0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ z0 f30402o;

    b1(z0 z0Var) {
        this.f30402o = z0Var;
    }

    private final void X0(Status status, g5.d dVar, String str, String str2) {
        this.f30402o.k(status);
        z0 z0Var = this.f30402o;
        z0Var.f30471p = dVar;
        z0Var.f30472q = str;
        z0Var.f30473r = str2;
        j5.i iVar = z0Var.f30461f;
        if (iVar != null) {
            iVar.v0(status);
        }
        this.f30402o.g(status);
    }

    private final void t1(g1 g1Var) {
        this.f30402o.f30464i.execute(new h1(this, g1Var));
    }

    @Override // i5.r0
    public final void D(String str) throws RemoteException {
        int i10 = this.f30402o.f30456a;
        boolean z10 = i10 == 8;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i10);
        Preconditions.o(z10, sb.toString());
        z0 z0Var = this.f30402o;
        z0Var.f30470o = str;
        z0.j(z0Var, true);
        this.f30402o.f30478w = true;
        t1(new f1(this, str));
    }

    @Override // i5.r0
    public final void H2(zzem zzemVar) throws RemoteException {
        int i10 = this.f30402o.f30456a;
        boolean z10 = i10 == 3;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i10);
        Preconditions.o(z10, sb.toString());
        z0 z0Var = this.f30402o;
        z0Var.f30467l = zzemVar;
        z0Var.n();
    }

    @Override // i5.r0
    public final void I8(Status status, g5.d0 d0Var) throws RemoteException {
        int i10 = this.f30402o.f30456a;
        boolean z10 = i10 == 2;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i10);
        Preconditions.o(z10, sb.toString());
        X0(status, d0Var, null, null);
    }

    @Override // i5.r0
    public final void J8() throws RemoteException {
        int i10 = this.f30402o.f30456a;
        boolean z10 = i10 == 5;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i10);
        Preconditions.o(z10, sb.toString());
        this.f30402o.n();
    }

    @Override // i5.r0
    public final void L5(zzeh zzehVar) {
        X0(zzehVar.V3(), zzehVar.W3(), zzehVar.X3(), zzehVar.Y3());
    }

    @Override // i5.r0
    public final void S8(zzff zzffVar) throws RemoteException {
        int i10 = this.f30402o.f30456a;
        boolean z10 = i10 == 1;
        StringBuilder sb = new StringBuilder(37);
        sb.append("Unexpected response type: ");
        sb.append(i10);
        Preconditions.o(z10, sb.toString());
        z0 z0Var = this.f30402o;
        z0Var.f30465j = zzffVar;
        z0Var.n();
    }

    @Override // i5.r0
    public final void Z4(g5.d0 d0Var) throws RemoteException {
        int i10 = this.f30402o.f30456a;
        boolean z10 = i10 == 8;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i10);
        Preconditions.o(z10, sb.toString());
        z0.j(this.f30402o, true);
        this.f30402o.f30478w = true;
        t1(new c1(this, d0Var));
    }

    @Override // i5.r0
    public final void a() throws RemoteException {
        int i10 = this.f30402o.f30456a;
        boolean z10 = i10 == 9;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i10);
        Preconditions.o(z10, sb.toString());
        this.f30402o.n();
    }

    @Override // i5.r0
    public final void b8(zzej zzejVar) {
        z0 z0Var = this.f30402o;
        z0Var.f30474s = zzejVar;
        z0Var.g(j5.d.a("REQUIRES_SECOND_FACTOR_AUTH"));
    }

    @Override // i5.r0
    public final void k2(zzff zzffVar, zzew zzewVar) throws RemoteException {
        int i10 = this.f30402o.f30456a;
        boolean z10 = i10 == 2;
        StringBuilder sb = new StringBuilder(37);
        sb.append("Unexpected response type: ");
        sb.append(i10);
        Preconditions.o(z10, sb.toString());
        z0 z0Var = this.f30402o;
        z0Var.f30465j = zzffVar;
        z0Var.f30466k = zzewVar;
        z0Var.n();
    }

    @Override // i5.r0
    public final void o(String str) throws RemoteException {
        int i10 = this.f30402o.f30456a;
        boolean z10 = i10 == 7;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i10);
        Preconditions.o(z10, sb.toString());
        z0 z0Var = this.f30402o;
        z0Var.f30469n = str;
        z0Var.n();
    }

    @Override // i5.r0
    public final void p8(zzfm zzfmVar) throws RemoteException {
        int i10 = this.f30402o.f30456a;
        boolean z10 = i10 == 4;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i10);
        Preconditions.o(z10, sb.toString());
        z0 z0Var = this.f30402o;
        z0Var.f30468m = zzfmVar;
        z0Var.n();
    }

    @Override // i5.r0
    public final void u(String str) throws RemoteException {
        int i10 = this.f30402o.f30456a;
        boolean z10 = i10 == 8;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i10);
        Preconditions.o(z10, sb.toString());
        this.f30402o.f30470o = str;
        t1(new d1(this, str));
    }

    @Override // i5.r0
    public final void v0(Status status) throws RemoteException {
        String strY3 = status.Y3();
        if (strY3 != null) {
            if (strY3.contains("MISSING_MFA_PENDING_CREDENTIAL")) {
                status = new Status(17081);
            } else if (strY3.contains("MISSING_MFA_ENROLLMENT_ID")) {
                status = new Status(17082);
            } else if (strY3.contains("INVALID_MFA_PENDING_CREDENTIAL")) {
                status = new Status(17083);
            } else if (strY3.contains("MFA_ENROLLMENT_NOT_FOUND")) {
                status = new Status(17084);
            } else if (strY3.contains("ADMIN_ONLY_OPERATION")) {
                status = new Status(17085);
            } else if (strY3.contains("UNVERIFIED_EMAIL")) {
                status = new Status(17086);
            } else if (strY3.contains("SECOND_FACTOR_EXISTS")) {
                status = new Status(17087);
            } else if (strY3.contains("SECOND_FACTOR_LIMIT_EXCEEDED")) {
                status = new Status(17088);
            } else if (strY3.contains("UNSUPPORTED_FIRST_FACTOR")) {
                status = new Status(17089);
            } else if (strY3.contains("EMAIL_CHANGE_NEEDS_VERIFICATION")) {
                status = new Status(17090);
            }
        }
        z0 z0Var = this.f30402o;
        if (z0Var.f30456a != 8) {
            z0Var.k(status);
            this.f30402o.g(status);
        } else {
            z0.j(z0Var, true);
            this.f30402o.f30478w = false;
            t1(new e1(this, status));
        }
    }

    @Override // i5.r0
    public final void zzb() throws RemoteException {
        int i10 = this.f30402o.f30456a;
        boolean z10 = i10 == 6;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i10);
        Preconditions.o(z10, sb.toString());
        this.f30402o.n();
    }
}
