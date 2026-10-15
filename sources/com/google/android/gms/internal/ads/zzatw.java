package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzatw implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzatx f9934o;

    zzatw(zzatx zzatxVar) {
        this.f9934o = zzatxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9934o.f9937q) {
            zzatx zzatxVar = this.f9934o;
            if (zzatxVar.f9938r && zzatxVar.f9939s) {
                zzatxVar.f9938r = false;
                zzbza.b("App went background");
                Iterator it = this.f9934o.f9940t.iterator();
                while (it.hasNext()) {
                    try {
                        ((zzaty) it.next()).S(false);
                    } catch (Exception e10) {
                        zzbza.e(BuildConfig.FLAVOR, e10);
                    }
                }
            } else {
                zzbza.b("App is still foreground");
            }
        }
    }
}
