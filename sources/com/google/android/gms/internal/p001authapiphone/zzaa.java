package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-api-phone@@17.5.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaa extends zzi {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f21242o;

    zzaa(zzab zzabVar, TaskCompletionSource taskCompletionSource) {
        this.f21242o = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zzj
    public final void k1(Status status) {
        TaskUtil.a(status, this.f21242o);
    }
}
