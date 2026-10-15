package com.google.android.gms.internal.games;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdb extends zzde {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ int f23125t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ boolean f23126u;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((com.google.android.gms.games.internal.zzf) anyClient).B0(this, this.f23125t, false, this.f23126u);
    }
}
