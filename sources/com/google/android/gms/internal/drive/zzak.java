package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.drive.DriveApi;

/* JADX INFO: loaded from: classes2.dex */
final class zzak extends zzl {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final BaseImplementation.ResultHolder<DriveApi.DriveContentsResult> f21808o;

    zzak(BaseImplementation.ResultHolder<DriveApi.DriveContentsResult> resultHolder) {
        this.f21808o = resultHolder;
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void r5(zzfh zzfhVar) throws RemoteException {
        this.f21808o.b(new zzal(Status.f6973u, new zzbi(zzfhVar.f21968o)));
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void v0(Status status) throws RemoteException {
        this.f21808o.b(new zzal(status, null));
    }
}
