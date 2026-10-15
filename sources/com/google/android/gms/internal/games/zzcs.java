package com.google.android.gms.internal.games;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzcs implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f23110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f23111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f23112c;

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) {
        ((TaskCompletionSource) obj2).c(((com.google.android.gms.games.internal.zzac) ((com.google.android.gms.games.internal.zzf) obj).I()).y5(this.f23110a, this.f23111b, this.f23112c));
    }
}
