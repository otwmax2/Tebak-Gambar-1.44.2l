package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzcy extends TaskApiCall<zzaw, Void> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.drive.zzn f21894d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ DriveContents f21895e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final /* synthetic */ MetadataChangeSet f21896f;

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        zzaw zzawVar = (zzaw) anyClient;
        try {
            this.f21894d.a(zzawVar);
        } catch (IllegalStateException e10) {
            taskCompletionSource.b(e10);
        }
        this.f21895e.h();
        this.f21896f.a().W3(zzawVar.D());
        ((zzeo) zzawVar.I()).r7(new zzm(this.f21895e.a(), this.f21896f.a(), this.f21895e.g().X3(), this.f21895e.g().Y3(), this.f21894d), new zzhr(taskCompletionSource));
    }
}
