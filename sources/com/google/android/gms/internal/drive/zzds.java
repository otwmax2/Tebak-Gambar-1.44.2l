package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzds extends zzav {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ List f21928t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ zzdp f21929u;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).I()).f2(new zzgw(this.f21929u.f21924a, this.f21928t), new zzgy(this));
    }
}
