package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
final class c extends zba {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ d f6780o;

    c(d dVar) {
        this.f6780o = dVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    public final void a1(Status status) throws RemoteException {
        this.f6780o.k(status);
    }
}
