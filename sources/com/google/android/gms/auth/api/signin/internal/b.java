package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
final class b extends g {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ Context f6778t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ GoogleSignInOptions f6779u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    b(GoogleApiClient googleApiClient, Context context, GoogleSignInOptions googleSignInOptions) {
        super(googleApiClient);
        this.f6778t = context;
        this.f6779u = googleSignInOptions;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    protected final /* synthetic */ Result f(Status status) {
        return new GoogleSignInResult(null, status);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* bridge */ /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((zbs) ((zbe) anyClient).I()).A9(new a(this), this.f6779u);
    }
}
