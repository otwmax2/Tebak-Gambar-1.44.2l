package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.drive.DriveFolder;

/* JADX INFO: loaded from: classes2.dex */
final class zzbw extends zzl {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final BaseImplementation.ResultHolder<DriveFolder.DriveFolderResult> f21859o;

    public zzbw(BaseImplementation.ResultHolder<DriveFolder.DriveFolderResult> resultHolder) {
        this.f21859o = resultHolder;
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void l9(zzfn zzfnVar) throws RemoteException {
        this.f21859o.b(new zzbz(Status.f6973u, new zzbs(zzfnVar.f21976o)));
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void v0(Status status) throws RemoteException {
        this.f21859o.b(new zzbz(status, null));
    }
}
