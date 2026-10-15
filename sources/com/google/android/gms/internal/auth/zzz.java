package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.AccountChangeEventsResponse;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzz extends zzl {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f21644o;

    zzz(zzab zzabVar, TaskCompletionSource taskCompletionSource) {
        this.f21644o = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.auth.zzm
    public final void p7(Status status, AccountChangeEventsResponse accountChangeEventsResponse) {
        zzab.z(status, accountChangeEventsResponse, this.f21644o);
    }
}
