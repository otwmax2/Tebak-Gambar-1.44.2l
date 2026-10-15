package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzdb extends TaskApiCall<zzaw, DriveFolder> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ MetadataChangeSet f21899d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ DriveFolder f21900e;

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<DriveFolder> taskCompletionSource) throws RemoteException {
        zzaw zzawVar = (zzaw) anyClient;
        this.f21899d.a().W3(zzawVar.D());
        ((zzeo) zzawVar.I()).k4(new zzy(this.f21900e.a(), this.f21899d.a()), new zzhk(taskCompletionSource));
    }
}
