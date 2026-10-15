package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbza;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class q implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ r f5767o;

    q(r rVar) {
        this.f5767o = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeu zzeuVar = this.f5767o.f5768o;
        if (zzeuVar.f5886o != null) {
            try {
                zzeuVar.f5886o.F(1);
            } catch (RemoteException e10) {
                zzbza.h("Could not notify onAdFailedToLoad event.", e10);
            }
        }
    }
}
