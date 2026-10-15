package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class j extends r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ BaseGmsClient.ConnectionProgressReportCallbacks f7112b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    j(k kVar, zabf zabfVar, BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        super(zabfVar);
        this.f7112b = connectionProgressReportCallbacks;
    }

    @Override // com.google.android.gms.common.api.internal.r
    @GuardedBy("mLock")
    public final void a() {
        this.f7112b.a(new ConnectionResult(16, null));
    }
}
