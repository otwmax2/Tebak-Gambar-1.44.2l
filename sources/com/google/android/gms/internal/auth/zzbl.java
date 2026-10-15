package com.google.android.gms.internal.auth;

import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzbl implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbo f21347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ProxyRequest f21348b;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) throws RemoteException {
        zzbo zzboVar = this.f21347a;
        ProxyRequest proxyRequest = this.f21348b;
        ((zzbh) ((zzbe) obj).I()).Q4(new zzbm(zzboVar, (TaskCompletionSource) obj2), proxyRequest);
    }
}
