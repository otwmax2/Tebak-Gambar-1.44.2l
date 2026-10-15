package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.drive.DrivePreferencesApi;

/* JADX INFO: loaded from: classes2.dex */
final class zzce extends zzl {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final BaseImplementation.ResultHolder<DrivePreferencesApi.FileUploadPreferencesResult> f21867o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final /* synthetic */ zzcb f21868p;

    private zzce(zzcb zzcbVar, BaseImplementation.ResultHolder<DrivePreferencesApi.FileUploadPreferencesResult> resultHolder) {
        this.f21868p = zzcbVar;
        this.f21867o = resultHolder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void v0(Status status) throws RemoteException {
        this.f21867o.b(new zzcf(this.f21868p, status, null, 0 == true ? 1 : 0));
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void v7(zzfj zzfjVar) throws RemoteException {
        this.f21867o.b(new zzcf(this.f21868p, Status.f6973u, zzfjVar.f21970o, null));
    }

    /* synthetic */ zzce(zzcb zzcbVar, BaseImplementation.ResultHolder resultHolder, zzcc zzccVar) {
        this(zzcbVar, resultHolder);
    }
}
