package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zad;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zact extends com.google.android.gms.signin.internal.zac implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> f7248v = zad.f24919c;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f7249o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Handler f7250p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> f7251q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Set<Scope> f7252r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final ClientSettings f7253s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private com.google.android.gms.signin.zae f7254t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private zacs f7255u;

    public zact(Context context, Handler handler, ClientSettings clientSettings) {
        Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder = f7248v;
        this.f7249o = context;
        this.f7250p = handler;
        this.f7253s = (ClientSettings) Preconditions.l(clientSettings, "ClientSettings must not be null");
        this.f7252r = clientSettings.h();
        this.f7251q = abstractClientBuilder;
    }

    static /* bridge */ /* synthetic */ void Sa(zact zactVar, com.google.android.gms.signin.internal.zak zakVar) {
        ConnectionResult connectionResultV3 = zakVar.V3();
        if (connectionResultV3.Z3()) {
            zav zavVar = (zav) Preconditions.k(zakVar.W3());
            ConnectionResult connectionResultV32 = zavVar.V3();
            if (!connectionResultV32.Z3()) {
                String strValueOf = String.valueOf(connectionResultV32);
                Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(strValueOf), new Exception());
                zactVar.f7255u.b(connectionResultV32);
                zactVar.f7254t.i();
                return;
            }
            zactVar.f7255u.c(zavVar.W3(), zactVar.f7252r);
        } else {
            zactVar.f7255u.b(connectionResultV3);
        }
        zactVar.f7254t.i();
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void P0(int i10) {
        this.f7254t.i();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.common.api.Api$Client, com.google.android.gms.signin.zae] */
    public final void Ta(zacs zacsVar) {
        com.google.android.gms.signin.zae zaeVar = this.f7254t;
        if (zaeVar != null) {
            zaeVar.i();
        }
        this.f7253s.n(Integer.valueOf(System.identityHashCode(this)));
        Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder = this.f7251q;
        Context context = this.f7249o;
        Looper looper = this.f7250p.getLooper();
        ClientSettings clientSettings = this.f7253s;
        this.f7254t = abstractClientBuilder.b(context, looper, clientSettings, clientSettings.j(), this, this);
        this.f7255u = zacsVar;
        Set<Scope> set = this.f7252r;
        if (set == null || set.isEmpty()) {
            this.f7250p.post(new d0(this));
        } else {
            this.f7254t.u();
        }
    }

    public final void Ua() {
        com.google.android.gms.signin.zae zaeVar = this.f7254t;
        if (zaeVar != null) {
            zaeVar.i();
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
        this.f7255u.b(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void t1(Bundle bundle) {
        this.f7254t.m(this);
    }

    @Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zae
    public final void v3(com.google.android.gms.signin.internal.zak zakVar) {
        this.f7250p.post(new e0(this, zakVar));
    }
}
