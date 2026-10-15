package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class TelemetryLoggingOptions implements Api.ApiOptions.Optional {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final TelemetryLoggingOptions f7432p = a().a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f7433o;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f7434a;

        private Builder() {
        }

        /* synthetic */ Builder(zaac zaacVar) {
        }

        @KeepForSdk
        public TelemetryLoggingOptions a() {
            return new TelemetryLoggingOptions(this.f7434a, null);
        }
    }

    /* synthetic */ TelemetryLoggingOptions(String str, zaad zaadVar) {
        this.f7433o = str;
    }

    @KeepForSdk
    public static Builder a() {
        return new Builder(null);
    }

    public final Bundle b() {
        Bundle bundle = new Bundle();
        String str = this.f7433o;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TelemetryLoggingOptions) {
            return Objects.b(this.f7433o, ((TelemetryLoggingOptions) obj).f7433o);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.c(this.f7433o);
    }
}
