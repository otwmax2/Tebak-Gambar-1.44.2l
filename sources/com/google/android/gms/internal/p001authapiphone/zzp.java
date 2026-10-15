package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-api-phone@@17.5.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzp extends zzd {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f21254o;

    zzp(zzr zzrVar, TaskCompletionSource taskCompletionSource) {
        this.f21254o = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zze
    public final void qa(Status status, int i10) {
        TaskUtil.b(status, Integer.valueOf(i10), this.f21254o);
    }
}
