package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class RootTelemetryConfigManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static RootTelemetryConfigManager f7420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final RootTelemetryConfiguration f7421c = new RootTelemetryConfiguration(0, false, false, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RootTelemetryConfiguration f7422a;

    private RootTelemetryConfigManager() {
    }

    @KeepForSdk
    public static synchronized RootTelemetryConfigManager b() {
        if (f7420b == null) {
            f7420b = new RootTelemetryConfigManager();
        }
        return f7420b;
    }

    @KeepForSdk
    public RootTelemetryConfiguration a() {
        return this.f7422a;
    }

    @VisibleForTesting
    public final synchronized void c(RootTelemetryConfiguration rootTelemetryConfiguration) {
        if (rootTelemetryConfiguration == null) {
            this.f7422a = f7421c;
            return;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration2 = this.f7422a;
        if (rootTelemetryConfiguration2 == null || rootTelemetryConfiguration2.Z3() < rootTelemetryConfiguration.Z3()) {
            this.f7422a = rootTelemetryConfiguration;
        }
    }
}
