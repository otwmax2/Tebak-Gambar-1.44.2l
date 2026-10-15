package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.query.Query;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzcz extends TaskApiCall<zzaw, MetadataBuffer> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ Query f21897d;

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<MetadataBuffer> taskCompletionSource) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).E9(new zzgq(this.f21897d), new zzhn(taskCompletionSource));
    }
}
