package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.drive.DriveApi;

/* JADX INFO: loaded from: classes2.dex */
final class zzan extends zzl {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final BaseImplementation.ResultHolder<DriveApi.DriveIdResult> f21811o;

    public zzan(BaseImplementation.ResultHolder<DriveApi.DriveIdResult> resultHolder) {
        this.f21811o = resultHolder;
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void l9(zzfn zzfnVar) throws RemoteException {
        this.f21811o.b(new zzao(Status.f6973u, zzfnVar.f21976o));
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void p5(zzfy zzfyVar) throws RemoteException {
        this.f21811o.b(new zzao(Status.f6973u, new zzaa(zzfyVar.f21989o).h()));
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void v0(Status status) throws RemoteException {
        this.f21811o.b(new zzao(status, null));
    }
}
