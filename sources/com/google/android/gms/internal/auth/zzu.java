package com.google.android.gms.internal.auth;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzu implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzab f21639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f21640b;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) throws RemoteException {
        zzab zzabVar = this.f21639a;
        ((zzp) ((zzi) obj).I()).Sa(new zzy(zzabVar, (TaskCompletionSource) obj2), this.f21640b);
    }
}
