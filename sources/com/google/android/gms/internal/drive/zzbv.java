package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.drive.DriveFolder;

/* JADX INFO: loaded from: classes2.dex */
final class zzbv extends zzl {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final BaseImplementation.ResultHolder<DriveFolder.DriveFileResult> f21858o;

    public zzbv(BaseImplementation.ResultHolder<DriveFolder.DriveFileResult> resultHolder) {
        this.f21858o = resultHolder;
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void l9(zzfn zzfnVar) throws RemoteException {
        this.f21858o.b(new zzbx(Status.f6973u, new zzbn(zzfnVar.f21976o)));
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void v0(Status status) throws RemoteException {
        this.f21858o.b(new zzbx(status, null));
    }
}
