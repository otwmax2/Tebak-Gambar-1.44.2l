package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyRequest;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbq extends zzbi {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ ProxyRequest f21352t;

    @Override // com.google.android.gms.internal.auth.zzbi
    protected final void y(Context context, zzbh zzbhVar) throws RemoteException {
        zzbhVar.Q4(new zzbp(this), this.f21352t);
    }
}
