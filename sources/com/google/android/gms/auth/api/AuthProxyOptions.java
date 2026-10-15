package com.google.android.gms.auth.api;

import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@KeepForSdk
public final class AuthProxyOptions implements Api.ApiOptions.Optional {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final AuthProxyOptions f6552p = new AuthProxyOptions(new Bundle(), null);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Bundle f6553o;

    /* synthetic */ AuthProxyOptions(Bundle bundle, d dVar) {
        this.f6553o = bundle;
    }

    public final Bundle a() {
        return new Bundle(this.f6553o);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AuthProxyOptions) {
            return Objects.a(this.f6553o, ((AuthProxyOptions) obj).f6553o);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.c(this.f6553o);
    }
}
