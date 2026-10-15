package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzdd extends TaskApiCall<zzaw, Metadata> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ MetadataChangeSet f21903d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ DriveResource f21904e;

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<Metadata> taskCompletionSource) throws RemoteException {
        zzaw zzawVar = (zzaw) anyClient;
        this.f21903d.a().W3(zzawVar.D());
        ((zzeo) zzawVar.I()).F3(new zzhf(this.f21904e.a(), this.f21903d.a()), new zzhp(taskCompletionSource));
    }
}
