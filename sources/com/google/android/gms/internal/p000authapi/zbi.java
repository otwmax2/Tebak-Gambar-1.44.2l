package com.google.android.gms.internal.p000authapi;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zbi extends zbm {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ Credential f21311t;

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    protected final /* bridge */ /* synthetic */ Result f(Status status) {
        return status;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbm
    protected final void y(Context context, zbt zbtVar) throws RemoteException {
        zbtVar.t1(new zbk(this), new zbp(this.f21311t));
    }
}
