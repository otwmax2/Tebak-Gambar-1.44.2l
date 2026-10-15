package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.drive.DriveId;

/* JADX INFO: loaded from: classes2.dex */
final class zzba extends zzav {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ DriveId f21829t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ int f21830u;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).p3(new zzgs(this.f21829t, this.f21830u), null, null, new zzgy(this));
    }
}
