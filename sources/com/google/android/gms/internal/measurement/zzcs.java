package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcs extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ Boolean f23381s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzee f23382t;

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        if (this.f23381s != null) {
            ((zzcc) Preconditions.k(this.f23382t.f23484i)).setMeasurementEnabled(this.f23381s.booleanValue(), this.f23451o);
        } else {
            ((zzcc) Preconditions.k(this.f23382t.f23484i)).clearMeasurementEnabled(this.f23451o);
        }
    }
}
