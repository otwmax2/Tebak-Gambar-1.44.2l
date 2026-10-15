package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes2.dex */
final class zzcc extends zzcg {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ zzcb f21865u;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).fa(new zzce(this.f21865u, this, null));
    }
}
