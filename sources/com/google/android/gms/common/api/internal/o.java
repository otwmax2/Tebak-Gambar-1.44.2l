package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class o implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zaaw f7131o;

    /* synthetic */ o(zaaw zaawVar, zaas zaasVar) {
        this.f7131o = zaawVar;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void P0(int i10) {
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
        this.f7131o.f7164b.lock();
        try {
            if (this.f7131o.q(connectionResult)) {
                this.f7131o.i();
                this.f7131o.n();
            } else {
                this.f7131o.l(connectionResult);
            }
        } finally {
            this.f7131o.f7164b.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void t1(Bundle bundle) {
        ((com.google.android.gms.signin.zae) Preconditions.k(this.f7131o.f7173k)).m(new n(this.f7131o));
    }
}
