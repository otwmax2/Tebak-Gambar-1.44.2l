package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzct extends TaskApiCall<zzaw, DriveContents> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ DriveFile f21884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ int f21885e;

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<DriveContents> taskCompletionSource) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).v5(new zzgj(this.f21884d.a(), this.f21885e, 0), new zzhi(taskCompletionSource));
    }
}
