package com.google.android.gms.internal.drive;

import android.content.IntentSender;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.OpenFileActivityOptions;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzbf extends TaskApiCall<zzaw, IntentSender> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ OpenFileActivityOptions f21833d;

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<IntentSender> taskCompletionSource) throws RemoteException {
        zzeo zzeoVar = (zzeo) ((zzaw) anyClient).I();
        OpenFileActivityOptions openFileActivityOptions = this.f21833d;
        taskCompletionSource.c(zzeoVar.a5(new zzgm(openFileActivityOptions.f7740a, openFileActivityOptions.f7741b, openFileActivityOptions.f7743d, openFileActivityOptions.f7742c)));
    }
}
