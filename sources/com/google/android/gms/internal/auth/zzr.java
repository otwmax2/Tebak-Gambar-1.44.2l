package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzr implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzab f21631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Account f21632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f21633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Bundle f21634d;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) throws RemoteException {
        zzab zzabVar = this.f21631a;
        ((zzp) ((zzi) obj).I()).A9(new zzw(zzabVar, (TaskCompletionSource) obj2), this.f21632b, this.f21633c, this.f21634d);
    }
}
