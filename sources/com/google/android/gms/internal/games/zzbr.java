package com.google.android.gms.internal.games;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzbr implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f23065a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f23066b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f23067c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f23068d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f23069e;

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) throws RemoteException {
        ((com.google.android.gms.games.internal.zzf) obj).b1((TaskCompletionSource) obj2, this.f23065a, this.f23066b, this.f23067c, this.f23068d, this.f23069e);
    }
}
