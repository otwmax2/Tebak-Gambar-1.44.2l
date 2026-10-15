package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveFile;

/* JADX INFO: loaded from: classes2.dex */
final class zzgl extends zzl {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final BaseImplementation.ResultHolder<DriveApi.DriveContentsResult> f22001o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final DriveFile.DownloadProgressListener f22002p;

    zzgl(BaseImplementation.ResultHolder<DriveApi.DriveContentsResult> resultHolder, DriveFile.DownloadProgressListener downloadProgressListener) {
        this.f22001o = resultHolder;
        this.f22002p = downloadProgressListener;
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void i7(zzfl zzflVar) throws RemoteException {
        DriveFile.DownloadProgressListener downloadProgressListener = this.f22002p;
        if (downloadProgressListener != null) {
            downloadProgressListener.onProgress(zzflVar.f21972o, zzflVar.f21973p);
        }
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void r5(zzfh zzfhVar) throws RemoteException {
        this.f22001o.b(new zzal(zzfhVar.f21969p ? new Status(-1) : Status.f6973u, new zzbi(zzfhVar.f21968o)));
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void v0(Status status) throws RemoteException {
        this.f22001o.b(new zzal(status, null));
    }
}
