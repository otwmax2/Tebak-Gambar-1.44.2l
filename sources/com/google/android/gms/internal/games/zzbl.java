package com.google.android.gms.internal.games;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzbl implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f23048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f23049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f23050c;

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) {
        ((TaskCompletionSource) obj2).c(((com.google.android.gms.games.internal.zzf) obj).t0(this.f23048a, this.f23049b, this.f23050c));
    }
}
