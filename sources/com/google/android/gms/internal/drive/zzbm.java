package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes2.dex */
final class zzbm extends zzav {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ zzbi f21844t;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).O9(new zzo(this.f21844t.f21836a.X3(), false), new zzgy(this));
    }
}
