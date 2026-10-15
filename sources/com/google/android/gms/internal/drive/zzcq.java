package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.UnregisterListenerMethod;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzcq extends UnregisterListenerMethod<zzaw, zzdi> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ DriveResource f21880a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzdi f21881b;

    @Override // com.google.android.gms.common.api.internal.UnregisterListenerMethod
    protected final /* synthetic */ void a(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).p3(new zzgs(this.f21880a.a(), 1), this.f21881b.f21913a, null, new zzhq(taskCompletionSource));
    }
}
