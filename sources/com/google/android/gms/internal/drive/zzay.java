package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes2.dex */
final class zzay extends zzav {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ zzgs f21826t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ zzee f21827u;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).p3(this.f21826t, this.f21827u, null, new zzgy(this));
    }
}
