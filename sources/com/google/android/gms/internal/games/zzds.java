package com.google.android.gms.internal.games;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzds extends zzec {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ String f23150t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ boolean f23151u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final /* synthetic */ int f23152v;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((com.google.android.gms.games.internal.zzf) anyClient).N0(this, this.f23150t, this.f23151u, this.f23152v);
    }
}
