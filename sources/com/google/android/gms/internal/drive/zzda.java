package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzda extends TaskApiCall<zzaw, Void> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ DriveContents f21898d;

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).O9(new zzo(this.f21898d.g().X3(), false), new zzhr(taskCompletionSource));
    }
}
