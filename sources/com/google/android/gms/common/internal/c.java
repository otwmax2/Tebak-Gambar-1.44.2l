package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class c implements BaseGmsClient.BaseConnectionCallbacks {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ ConnectionCallbacks f7440o;

    c(ConnectionCallbacks connectionCallbacks) {
        this.f7440o = connectionCallbacks;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void P0(int i10) {
        this.f7440o.P0(i10);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void t1(Bundle bundle) {
        this.f7440o.t1(bundle);
    }
}
