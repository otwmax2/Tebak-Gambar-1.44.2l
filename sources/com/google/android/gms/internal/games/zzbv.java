package com.google.android.gms.internal.games;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzbv implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f23075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f23076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f23077c;

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) throws RemoteException {
        ((com.google.android.gms.games.internal.zzf) obj).r0(this.f23075a, this.f23076b, this.f23077c);
    }
}
