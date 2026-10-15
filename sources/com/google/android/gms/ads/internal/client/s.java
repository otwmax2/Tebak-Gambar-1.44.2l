package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbza;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class s implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzew f5769o;

    s(zzew zzewVar) {
        this.f5769o = zzewVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzew zzewVar = this.f5769o;
        if (zzewVar.f5887o != null) {
            try {
                zzewVar.f5887o.F(1);
            } catch (RemoteException e10) {
                zzbza.h("Could not notify onAdFailedToLoad event.", e10);
            }
        }
    }
}
