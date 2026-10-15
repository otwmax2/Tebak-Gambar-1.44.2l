package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzevh {
    public static void a(AtomicReference atomicReference, zzevg zzevgVar) {
        Object obj = atomicReference.get();
        if (obj == null) {
            return;
        }
        try {
            zzevgVar.a(obj);
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        } catch (NullPointerException e11) {
            zzbza.h("NullPointerException occurs when invoking a method from a delegating listener.", e11);
        }
    }
}
