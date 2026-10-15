package com.google.android.gms.common.api;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public abstract class PendingResult<R extends Result> {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    public interface StatusListener {
        @KeepForSdk
        void a(Status status);
    }

    @KeepForSdk
    public void c(StatusListener statusListener) {
        throw new UnsupportedOperationException();
    }

    public abstract R d(long j10, TimeUnit timeUnit);

    public abstract void e();
}
