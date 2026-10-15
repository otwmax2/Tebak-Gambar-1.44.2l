package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdh extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ Bundle f23417s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzbz f23418t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ zzee f23419u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdh(zzee zzeeVar, Bundle bundle, zzbz zzbzVar) {
        super(zzeeVar, true);
        this.f23419u = zzeeVar;
        this.f23417s = bundle;
        this.f23418t = zzbzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23419u.f23484i)).performAction(this.f23417s, this.f23418t, this.f23451o);
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    protected final void b() {
        this.f23418t.X(null);
    }
}
