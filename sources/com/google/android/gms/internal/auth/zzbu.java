package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbu implements ProxyApi.ProxyResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f21354o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ProxyResponse f21355p;

    public zzbu(ProxyResponse proxyResponse) {
        this.f21355p = proxyResponse;
        this.f21354o = Status.f6973u;
    }

    public zzbu(Status status) {
        this.f21354o = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f21354o;
    }
}
