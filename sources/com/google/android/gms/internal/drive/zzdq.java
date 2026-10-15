package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes2.dex */
final class zzdq extends zzea {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ boolean f21925t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ zzdp f21926u;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).Z3(new zzek(this.f21926u.f21924a, this.f21925t), new zzdy(this));
    }
}
