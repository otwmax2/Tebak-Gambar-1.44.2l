package com.google.android.gms.internal.p000authapi;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zbaj implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zbao f21270a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SaveAccountLinkingTokenRequest f21271b;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) throws RemoteException {
        zbao zbaoVar = this.f21270a;
        SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest = this.f21271b;
        ((zbz) ((zbw) obj).I()).t1(new zbam(zbaoVar, (TaskCompletionSource) obj2), (SaveAccountLinkingTokenRequest) Preconditions.k(saveAccountLinkingTokenRequest));
    }
}
