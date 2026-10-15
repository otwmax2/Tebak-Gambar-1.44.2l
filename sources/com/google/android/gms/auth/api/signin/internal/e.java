package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
final class e extends zba {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ f f6781o;

    e(f fVar) {
        this.f6781o = fVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    public final void U5(Status status) throws RemoteException {
        this.f6781o.k(status);
    }
}
