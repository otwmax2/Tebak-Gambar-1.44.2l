package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RegisterListenerMethod;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.events.OpenFileCallback;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzcu extends RegisterListenerMethod<zzaw, OpenFileCallback> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ DriveFile f21886d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ int f21887e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzg f21888f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final /* synthetic */ ListenerHolder f21889g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final /* synthetic */ zzch f21890h;

    @Override // com.google.android.gms.common.api.internal.RegisterListenerMethod
    protected final /* synthetic */ void d(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
        this.f21888f.b(ICancelToken.Stub.X0(((zzeo) ((zzaw) anyClient).I()).v5(new zzgj(this.f21886d.a(), this.f21887e, 0), new zzdk(this.f21890h, this.f21888f, this.f21889g)).f21942o));
        taskCompletionSource.c(null);
    }
}
