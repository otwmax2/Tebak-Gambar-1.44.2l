package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdd extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzbz f23405s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzee f23406t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdd(zzee zzeeVar, zzbz zzbzVar) {
        super(zzeeVar, true);
        this.f23406t = zzeeVar;
        this.f23405s = zzbzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23406t.f23484i)).getCurrentScreenName(this.f23405s);
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    protected final void b() {
        this.f23405s.X(null);
    }
}
