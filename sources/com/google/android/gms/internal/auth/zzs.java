package com.google.android.gms.internal.auth;

import android.os.RemoteException;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzs implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzab f21635a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AccountChangeEventsRequest f21636b;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) throws RemoteException {
        zzab zzabVar = this.f21635a;
        AccountChangeEventsRequest accountChangeEventsRequest = this.f21636b;
        ((zzp) ((zzi) obj).I()).Q4(new zzz(zzabVar, (TaskCompletionSource) obj2), accountChangeEventsRequest);
    }
}
