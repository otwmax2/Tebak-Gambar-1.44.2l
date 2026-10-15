package com.google.firebase.auth;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.firebase_auth.zzff;
import g5.s;
import j5.i;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class b implements j5.c, i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ FirebaseAuth f26270a;

    b(FirebaseAuth firebaseAuth) {
        this.f26270a = firebaseAuth;
    }

    @Override // j5.c
    public final void a(zzff zzffVar, s sVar) {
        this.f26270a.j(sVar, zzffVar, true, true);
    }

    @Override // j5.i
    public final void v0(Status status) {
        int iX3 = status.X3();
        if (iX3 == 17011 || iX3 == 17021 || iX3 == 17005) {
            this.f26270a.e();
        }
    }
}
