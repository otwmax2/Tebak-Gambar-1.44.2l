package com.google.android.gms.internal.games;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzdl implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f23135a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f23136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f23137c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f23138d;

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) {
        ((TaskCompletionSource) obj2).c(((com.google.android.gms.games.internal.zzf) obj).u0(this.f23135a, this.f23136b, this.f23137c, this.f23138d));
    }
}
