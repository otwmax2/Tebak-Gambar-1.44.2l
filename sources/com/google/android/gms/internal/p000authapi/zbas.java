package com.google.android.gms.internal.p000authapi;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.GetPhoneNumberHintIntentRequest;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zbas implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zbay f21284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ GetPhoneNumberHintIntentRequest f21285b;

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) throws RemoteException {
        this.f21284a.z(this.f21285b, (zbaz) obj, (TaskCompletionSource) obj2);
    }
}
