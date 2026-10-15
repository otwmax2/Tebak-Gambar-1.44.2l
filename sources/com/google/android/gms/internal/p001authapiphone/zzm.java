package com.google.android.gms.internal.p001authapiphone;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-api-phone@@17.5.1 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzm implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzr f21251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f21252b;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) throws RemoteException {
        zzr zzrVar = this.f21251a;
        ((zzh) ((zzw) obj).I()).Q4(this.f21252b, new zzq(zzrVar, (TaskCompletionSource) obj2));
    }
}
