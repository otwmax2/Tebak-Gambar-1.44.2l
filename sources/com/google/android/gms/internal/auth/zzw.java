package com.google.android.gms.internal.auth;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzw extends zzn {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f21641o;

    zzw(zzab zzabVar, TaskCompletionSource taskCompletionSource) {
        this.f21641o = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.auth.zzo
    public final void o1(Status status, Bundle bundle) {
        zzab.z(status, bundle, this.f21641o);
    }
}
