package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.MetadataBuffer;

/* JADX INFO: loaded from: classes2.dex */
final class zzdx extends zzl {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final BaseImplementation.ResultHolder<DriveApi.MetadataBufferResult> f21935o;

    public zzdx(BaseImplementation.ResultHolder<DriveApi.MetadataBufferResult> resultHolder) {
        this.f21935o = resultHolder;
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void L8(zzfv zzfvVar) throws RemoteException {
        this.f21935o.b(new zzaq(Status.f6973u, new MetadataBuffer(zzfvVar.f21987p), false));
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void v0(Status status) throws RemoteException {
        this.f21935o.b(new zzaq(status, null, false));
    }
}
