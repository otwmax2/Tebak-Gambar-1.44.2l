package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
final class a extends zba {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ b f6777o;

    a(b bVar) {
        this.f6777o = bVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    public final void i6(GoogleSignInAccount googleSignInAccount, Status status) throws RemoteException {
        if (googleSignInAccount != null) {
            zbn.c(this.f6777o.f6778t).e(this.f6777o.f6779u, googleSignInAccount);
        }
        this.f6777o.k(new GoogleSignInResult(googleSignInAccount, status));
    }
}
