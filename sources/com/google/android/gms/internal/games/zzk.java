package com.google.android.gms.internal.games;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzk implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f23232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f23233b;

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) throws RemoteException {
        ((com.google.android.gms.games.internal.zzf) obj).Z0(null, this.f23232a, this.f23233b);
    }
}
