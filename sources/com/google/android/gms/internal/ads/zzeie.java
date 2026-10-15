package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzeie implements zzcwz {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AtomicReference f16707o = new AtomicReference();

    public final void a(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        this.f16707o.set(zzdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcwz
    public final void c(final com.google.android.gms.ads.internal.client.zzs zzsVar) {
        zzevh.a(this.f16707o, new zzevg() { // from class: com.google.android.gms.internal.ads.zzeid
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzdg) obj).Z6(zzsVar);
            }
        });
    }
}
