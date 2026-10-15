package com.vungle.warren.utility;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class ConcurrencyTimeoutProvider implements TimeoutProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long f28556a = TimeUnit.SECONDS.toMillis(4);

    @Override // com.vungle.warren.utility.TimeoutProvider
    public long getTimeout() {
        if (ThreadUtil.isMainThread()) {
            return f28556a;
        }
        return Long.MAX_VALUE;
    }
}
