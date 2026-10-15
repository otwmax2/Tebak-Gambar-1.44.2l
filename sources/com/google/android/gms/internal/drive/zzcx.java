package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzcx extends TaskApiCall<zzaw, DriveContents> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ DriveContents f21893d;

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<DriveContents> taskCompletionSource) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).v5(new zzgj(this.f21893d.a(), 536870912, this.f21893d.g().X3()), new zzhi(taskCompletionSource));
    }
}
