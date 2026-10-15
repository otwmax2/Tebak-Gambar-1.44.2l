package com.google.android.gms.internal.p000authapi;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zbf extends zbd {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zbg f21308o;

    zbf(zbg zbgVar) {
        this.f21308o = zbgVar;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbd, com.google.android.gms.internal.p000authapi.zbs
    public final void a1(Status status) {
        this.f21308o.k(new zbe(status, null));
    }

    @Override // com.google.android.gms.internal.p000authapi.zbd, com.google.android.gms.internal.p000authapi.zbs
    public final void g9(Status status, Credential credential) {
        this.f21308o.k(new zbe(status, credential));
    }
}
