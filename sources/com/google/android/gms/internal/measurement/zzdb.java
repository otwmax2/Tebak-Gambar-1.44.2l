package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdb extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzbz f23401s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzee f23402t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdb(zzee zzeeVar, zzbz zzbzVar) {
        super(zzeeVar, true);
        this.f23402t = zzeeVar;
        this.f23401s = zzbzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23402t.f23484i)).getCachedAppInstanceId(this.f23401s);
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    protected final void b() {
        this.f23401s.X(null);
    }
}
