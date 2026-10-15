package com.google.android.gms.internal.p000authapi;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zbaq implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zbay f21281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ GetSignInIntentRequest f21282b;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) throws RemoteException {
        zbay zbayVar = this.f21281a;
        GetSignInIntentRequest getSignInIntentRequest = this.f21282b;
        ((zbai) ((zbaz) obj).I()).A9(new zbaw(zbayVar, (TaskCompletionSource) obj2), (GetSignInIntentRequest) Preconditions.k(getSignInIntentRequest));
    }
}
