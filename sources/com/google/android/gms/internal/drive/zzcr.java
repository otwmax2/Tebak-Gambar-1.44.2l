package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzcr extends TaskApiCall<zzaw, Void> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ DriveResource f21882d;

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        zzaw zzawVar = (zzaw) anyClient;
        if (!zzawVar.Y) {
            throw new IllegalStateException("Application must define an exported DriveEventService subclass in AndroidManifest.xml to add event subscriptions");
        }
        ((zzeo) zzawVar.I()).N9(new zzj(1, this.f21882d.a()), null, null, new zzhr(taskCompletionSource));
    }
}
