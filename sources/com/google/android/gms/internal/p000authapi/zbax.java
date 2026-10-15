package com.google.android.gms.internal.p000authapi;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zbax extends zbaa {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f21289o;

    zbax(zbay zbayVar, TaskCompletionSource taskCompletionSource) {
        this.f21289o = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbab
    public final void e1(Status status, PendingIntent pendingIntent) {
        TaskUtil.b(status, pendingIntent, this.f21289o);
    }
}
