package com.google.android.gms.internal.games;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcd extends zzci {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ String f23097t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ long f23098u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final /* synthetic */ String f23099v;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((com.google.android.gms.games.internal.zzf) anyClient).J0(this, this.f23097t, this.f23098u, this.f23099v);
    }
}
