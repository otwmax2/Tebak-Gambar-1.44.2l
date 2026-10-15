package com.google.android.gms.internal.auth;

import android.os.RemoteException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzac extends BaseImplementation.ApiMethodImpl<Result, zzam> {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ boolean f21322t;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl, com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    @KeepForSdk
    public final /* bridge */ /* synthetic */ void b(Object obj) {
        super.k((Result) obj);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    protected final Result f(Status status) {
        return new zzaj(status);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* bridge */ /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((com.google.android.gms.auth.account.zze) ((zzam) anyClient).I()).y0(this.f21322t);
        k(new zzaj(Status.f6973u));
    }
}
