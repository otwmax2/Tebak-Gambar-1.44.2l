package com.google.android.gms.common.util;

import android.os.SystemClock;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class DefaultClock implements Clock {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final DefaultClock f7635a = new DefaultClock();

    private DefaultClock() {
    }

    @KeepForSdk
    public static Clock d() {
        return f7635a;
    }

    @Override // com.google.android.gms.common.util.Clock
    public final long a() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.Clock
    public final long b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.Clock
    public final long c() {
        return System.nanoTime();
    }
}
