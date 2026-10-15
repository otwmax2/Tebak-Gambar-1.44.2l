package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.TransferPreferences;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzbd extends TaskApiCall<zzaw, TransferPreferences> {
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<TransferPreferences> taskCompletionSource) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).fa(new zzhm(taskCompletionSource));
    }
}
