package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class d implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ OnConnectionFailedListener f7441o;

    d(OnConnectionFailedListener onConnectionFailedListener) {
        this.f7441o = onConnectionFailedListener;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
        this.f7441o.X0(connectionResult);
    }
}
