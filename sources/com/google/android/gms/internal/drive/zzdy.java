package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.drive.DriveResource;

/* JADX INFO: loaded from: classes2.dex */
final class zzdy extends zzl {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final BaseImplementation.ResultHolder<DriveResource.MetadataResult> f21936o;

    public zzdy(BaseImplementation.ResultHolder<DriveResource.MetadataResult> resultHolder) {
        this.f21936o = resultHolder;
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void p5(zzfy zzfyVar) throws RemoteException {
        this.f21936o.b(new zzdz(Status.f6973u, new zzaa(zzfyVar.f21989o)));
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void v0(Status status) throws RemoteException {
        this.f21936o.b(new zzdz(status, null));
    }
}
