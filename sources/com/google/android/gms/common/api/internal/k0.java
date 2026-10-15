package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class k0 implements GoogleApiClient.OnConnectionFailedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f7116o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final GoogleApiClient f7117p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final GoogleApiClient.OnConnectionFailedListener f7118q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zak f7119r;

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
        Log.d("AutoManageHelper", "beginFailureResolution for ".concat(String.valueOf(connectionResult)));
        this.f7119r.s(connectionResult, this.f7116o);
    }
}
