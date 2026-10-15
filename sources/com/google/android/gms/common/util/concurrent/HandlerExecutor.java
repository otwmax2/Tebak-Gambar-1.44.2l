package com.google.android.gms.common.util.concurrent;

import android.os.Handler;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class HandlerExecutor implements Executor {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Handler f7661o;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f7661o.post(runnable);
    }
}
