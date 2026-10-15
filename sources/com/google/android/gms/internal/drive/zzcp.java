package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RegisterListenerMethod;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzcp extends RegisterListenerMethod<zzaw, zzdi> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ DriveResource f21878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzdi f21879e;

    @Override // com.google.android.gms.common.api.internal.RegisterListenerMethod
    protected final /* synthetic */ void d(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).N9(new zzj(1, this.f21878d.a()), this.f21879e.f21913a, null, new zzhr(taskCompletionSource));
    }
}
