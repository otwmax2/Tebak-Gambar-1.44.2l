package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
public class zzhh<T> extends zzl {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TaskCompletionSource<T> f22028o;

    zzhh(TaskCompletionSource<T> taskCompletionSource) {
        this.f22028o = taskCompletionSource;
    }

    public final TaskCompletionSource<T> X0() {
        return this.f22028o;
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void v0(Status status) throws RemoteException {
        this.f22028o.b(new ApiException(status));
    }
}
