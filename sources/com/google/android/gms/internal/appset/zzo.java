package com.google.android.gms.internal.appset;

import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-appset@@16.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzo extends zze {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f21231o;

    zzo(zzp zzpVar, TaskCompletionSource taskCompletionSource) {
        this.f21231o = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.appset.zzf
    public final void O6(Status status, com.google.android.gms.appset.zzc zzcVar) {
        TaskUtil.b(status, zzcVar != null ? new AppSetIdInfo(zzcVar.W3(), zzcVar.V3()) : null, this.f21231o);
    }
}
