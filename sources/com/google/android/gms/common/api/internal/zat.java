package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zat implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Api<?> f7284o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f7285p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zau f7286q;

    private final zau b() {
        Preconditions.l(this.f7286q, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
        return this.f7286q;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void P0(int i10) {
        b().P0(i10);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
        b().Q4(connectionResult, this.f7284o, this.f7285p);
    }

    public final void a(zau zauVar) {
        this.f7286q = zauVar;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void t1(Bundle bundle) {
        b().t1(bundle);
    }
}
