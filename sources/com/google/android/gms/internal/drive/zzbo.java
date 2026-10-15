package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.drive.DriveFile;

/* JADX INFO: loaded from: classes2.dex */
final class zzbo extends zzam {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ int f21845t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ DriveFile.DownloadProgressListener f21846u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final /* synthetic */ zzbn f21847v;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        j(ICancelToken.Stub.X0(((zzeo) ((zzaw) anyClient).I()).v5(new zzgj(this.f21847v.a(), this.f21845t, 0), new zzgl(this, this.f21846u)).f21942o));
    }
}
