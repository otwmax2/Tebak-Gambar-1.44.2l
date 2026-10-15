package i5;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.firebase_auth.zze;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class p0 extends GmsClient<s0> implements n0 {
    private static Logger Y = new Logger("FirebaseAuth", "FirebaseAuth:");
    private final Context W;
    private final v0 X;

    public p0(Context context, Looper looper, ClientSettings clientSettings, v0 v0Var, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 112, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.W = (Context) Preconditions.k(context);
        this.X = v0Var;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] A() {
        return zze.f22530d;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final Bundle F() {
        Bundle bundleF = super.F();
        if (bundleF == null) {
            bundleF = new Bundle();
        }
        v0 v0Var = this.X;
        if (v0Var != null) {
            bundleF.putString("com.google.firebase.auth.API_KEY", v0Var.b());
        }
        bundleF.putString("com.google.firebase.auth.LIBRARY_VERSION", x0.a());
        return bundleF;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String J() {
        return "com.google.firebase.auth.api.internal.IFirebaseAuthService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String K() {
        return "com.google.firebase.auth.api.gms.service.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String L() {
        if (this.X.f30408o) {
            Y.e("Preparing to create service connection to fallback implementation", new Object[0]);
            return this.W.getPackageName();
        }
        Y.e("Preparing to create service connection to gms implementation", new Object[0]);
        return "com.google.android.gms";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean l() {
        return DynamiteModule.a(this.W, "com.google.firebase.auth") == 0;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int n() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface x(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
        return iInterfaceQueryLocalInterface instanceof s0 ? (s0) iInterfaceQueryLocalInterface : new t0(iBinder);
    }

    @Override // i5.n0
    @KeepForSdk
    public final /* synthetic */ s0 zza() throws DeadObjectException {
        return (s0) super.I();
    }
}
