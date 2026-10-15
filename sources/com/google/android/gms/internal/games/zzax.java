package com.google.android.gms.internal.games;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzax implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final RemoteCall f23038a = new zzax();

    private zzax() {
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) {
        ((TaskCompletionSource) obj2).c(((com.google.android.gms.games.internal.zzac) ((com.google.android.gms.games.internal.zzf) obj).I()).j6());
    }
}
