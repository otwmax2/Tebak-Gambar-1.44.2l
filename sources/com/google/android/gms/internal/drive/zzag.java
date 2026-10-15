package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.drive.query.Query;

/* JADX INFO: loaded from: classes2.dex */
final class zzag extends zzar {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ Query f21805t;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).E9(new zzgq(this.f21805t), new zzas(this));
    }
}
