package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaj implements Result {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f21330o;

    public zzaj(Status status) {
        this.f21330o = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f21330o;
    }
}
