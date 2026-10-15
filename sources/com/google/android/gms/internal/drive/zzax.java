package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes2.dex */
final class zzax extends zzav {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ zzj f21824t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ zzee f21825u;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).N9(this.f21824t, this.f21825u, null, new zzgy(this));
    }
}
