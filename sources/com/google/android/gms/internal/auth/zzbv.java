package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.vungle.mediation.BuildConfig;
import javax.annotation.Nonnull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbv implements ProxyApi.SpatulaHeaderResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f21356o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f21357p;

    public zzbv(@Nonnull Status status) {
        this.f21356o = (Status) Preconditions.k(status);
        this.f21357p = BuildConfig.FLAVOR;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f21356o;
    }

    public zzbv(@Nonnull String str) {
        this.f21357p = (String) Preconditions.k(str);
        this.f21356o = Status.f6973u;
    }
}
