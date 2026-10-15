package com.google.android.gms.cloudmessaging;

import android.os.Looper;
import android.os.Message;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class u extends com.google.android.gms.internal.cloudmessaging.zze {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Rpc f6882a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    u(Rpc rpc, Looper looper) {
        super(looper);
        this.f6882a = rpc;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.f6882a.g(message);
    }
}
