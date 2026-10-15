package com.google.android.gms.internal.p000authapi;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zbe implements CredentialRequestResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f21306o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Credential f21307p;

    public zbe(Status status, Credential credential) {
        this.f21306o = status;
        this.f21307p = credential;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f21306o;
    }
}
