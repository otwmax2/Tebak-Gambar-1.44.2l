package com.google.android.gms.internal.games;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzek implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final RemoteCall f23168a = new zzek();

    private zzek() {
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) {
        ((TaskCompletionSource) obj2).c(((com.google.android.gms.games.internal.zzf) obj).t1());
    }
}
