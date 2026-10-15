package com.google.firebase.messaging;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class k implements Executor {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final Executor f26484o = new k();

    private k() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
