package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.drive.DriveId;

/* JADX INFO: loaded from: classes2.dex */
final class zzai extends zzap {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ String f21807t;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).Z3(new zzek(DriveId.Y3(this.f21807t), false), new zzan(this));
    }
}
