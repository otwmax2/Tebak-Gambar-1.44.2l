package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-api-phone@@17.5.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzu extends IStatusCallback.Stub {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f21260o;

    zzu(zzv zzvVar, TaskCompletionSource taskCompletionSource) {
        this.f21260o = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void l4(Status status) {
        if (status.X3() == 6) {
            this.f21260o.d(ApiExceptionUtil.a(status));
        } else {
            TaskUtil.a(status, this.f21260o);
        }
    }
}
