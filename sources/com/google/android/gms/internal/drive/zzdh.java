package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzdh extends TaskApiCall<zzaw, DriveFile> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final DriveFolder f21908d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MetadataChangeSet f21909e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final DriveContents f21910f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ExecutionOptions f21911g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.google.android.gms.drive.metadata.internal.zzk f21912h;

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<DriveFile> taskCompletionSource) throws RemoteException {
        zzaw zzawVar = (zzaw) anyClient;
        this.f21911g.a(zzawVar);
        MetadataChangeSet metadataChangeSet = this.f21909e;
        metadataChangeSet.a().W3(zzawVar.D());
        int iB = zzbs.b(this.f21910f, this.f21912h);
        com.google.android.gms.drive.metadata.internal.zzk zzkVar = this.f21912h;
        ((zzeo) zzawVar.I()).Na(new zzw(this.f21908d.a(), metadataChangeSet.a(), iB, (zzkVar == null || !zzkVar.a()) ? 0 : 1, this.f21911g), new zzhj(taskCompletionSource));
    }
}
