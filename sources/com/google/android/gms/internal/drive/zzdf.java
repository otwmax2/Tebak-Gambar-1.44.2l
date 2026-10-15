package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzdf extends TaskApiCall<zzaw, Void> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ DriveResource f21906d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ List f21907e;

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).f2(new zzgw(this.f21906d.a(), this.f21907e), new zzhr(taskCompletionSource));
    }
}
