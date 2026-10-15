package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzak implements Result {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f21331o;

    public zzak(Status status) {
        this.f21331o = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f21331o;
    }
}
