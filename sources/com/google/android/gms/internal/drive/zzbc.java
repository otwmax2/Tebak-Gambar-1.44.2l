package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzbc extends TaskApiCall<zzaw, DriveId> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ String f21831d;

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<DriveId> taskCompletionSource) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).Z3(new zzek(DriveId.Y3(this.f21831d), false), new zzhl(taskCompletionSource));
    }
}
