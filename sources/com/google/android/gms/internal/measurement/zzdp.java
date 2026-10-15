package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdp extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzdv f23435s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzee f23436t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdp(zzee zzeeVar, zzdv zzdvVar) {
        super(zzeeVar, true);
        this.f23436t = zzeeVar;
        this.f23435s = zzdvVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23436t.f23484i)).registerOnMeasurementEventListener(this.f23435s);
    }
}
