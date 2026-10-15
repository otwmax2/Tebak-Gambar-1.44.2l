package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzarq extends zzasm {
    public zzarq(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11) {
        super(zzaqxVar, "uz1YArq5cHS8AYJUDc1zzIdIMbHyJKwb7tfYne2XDSTiUe1d6tP4aZb4XhmiO5Pa", "D14sOPs9bJ6lVOYt2Sp9xUGRfFtxk1j4Rj4Ydr//Mak=", zzamvVar, i10, 24);
    }

    private final void c() {
        AdvertisingIdClient advertisingIdClientH = this.f9855b.h();
        if (advertisingIdClientH == null) {
            return;
        }
        try {
            AdvertisingIdClient.Info infoB = advertisingIdClientH.b();
            String strD = zzarb.d(infoB.a());
            if (strD != null) {
                synchronized (this.f9858e) {
                    this.f9858e.s0(strD);
                    this.f9858e.r0(infoB.b());
                    this.f9858e.S(6);
                }
            }
        } catch (IOException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (this.f9855b.q()) {
            c();
            return;
        }
        synchronized (this.f9858e) {
            this.f9858e.s0((String) this.f9859f.invoke(null, this.f9855b.b()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    public final Void b() throws Exception {
        if (this.f9855b.r()) {
            super.b();
            return null;
        }
        if (this.f9855b.q()) {
            c();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzasm, java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        b();
        return null;
    }
}
