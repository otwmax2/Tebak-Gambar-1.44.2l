package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes2.dex */
final class zzcd extends zzav {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ zzei f21866t;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).u5(new zzgu(this.f21866t), new zzgy(this));
    }
}
