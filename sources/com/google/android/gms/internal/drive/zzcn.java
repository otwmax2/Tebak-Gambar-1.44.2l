package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzcn extends TaskApiCall<zzaw, Void> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ DriveResource f21877d;

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).M5(new zzhd(this.f21877d.a()), new zzhr(taskCompletionSource));
    }
}
