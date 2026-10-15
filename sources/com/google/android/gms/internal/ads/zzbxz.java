package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbxz implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Context f11501o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzbzs f11502p;

    zzbxz(zzbya zzbyaVar, Context context, zzbzs zzbzsVar) {
        this.f11501o = context;
        this.f11502p = zzbzsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f11502p.c(AdvertisingIdClient.a(this.f11501o));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e10) {
            this.f11502p.d(e10);
            zzbza.e("Exception while getting advertising Id info", e10);
        }
    }
}
