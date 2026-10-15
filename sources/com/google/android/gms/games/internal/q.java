package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class q implements BaseImplementation.ResultHolder<Status> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ BaseGmsClient.SignOutCallbacks f8113a;

    q(BaseGmsClient.SignOutCallbacks signOutCallbacks) {
        this.f8113a = signOutCallbacks;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final void a(Status status) {
        this.f8113a.r1();
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final /* synthetic */ void b(Object obj) {
        this.f8113a.r1();
    }
}
