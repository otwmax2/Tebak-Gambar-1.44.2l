package com.google.android.gms.common.internal;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.service.zao;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class TelemetryLogging {
    private TelemetryLogging() {
    }

    @KeepForSdk
    public static TelemetryLoggingClient a(Context context) {
        return b(context, TelemetryLoggingOptions.f7432p);
    }

    @KeepForSdk
    public static TelemetryLoggingClient b(Context context, TelemetryLoggingOptions telemetryLoggingOptions) {
        return new zao(context, telemetryLoggingOptions);
    }
}
