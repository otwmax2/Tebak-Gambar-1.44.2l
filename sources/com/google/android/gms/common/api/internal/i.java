package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class i extends r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ ConnectionResult f7109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ k f7110c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    i(k kVar, zabf zabfVar, ConnectionResult connectionResult) {
        super(zabfVar);
        this.f7110c = kVar;
        this.f7109b = connectionResult;
    }

    @Override // com.google.android.gms.common.api.internal.r
    @GuardedBy("mLock")
    public final void a() {
        this.f7110c.f7115q.l(this.f7109b);
    }
}
