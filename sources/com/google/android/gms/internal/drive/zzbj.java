package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes2.dex */
final class zzbj extends zzam {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ zzbi f21840t;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).v5(new zzgj(this.f21840t.a(), 536870912, this.f21840t.f21836a.X3()), new zzgl(this, null));
    }
}
