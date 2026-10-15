package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdl extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzbz f23426s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ int f23427t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ zzee f23428u;

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23428u.f23484i)).getTestFlag(this.f23426s, this.f23427t);
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    protected final void b() {
        this.f23426s.X(null);
    }
}
