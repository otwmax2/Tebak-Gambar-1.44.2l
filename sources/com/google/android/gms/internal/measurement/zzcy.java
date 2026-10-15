package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcy extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ String f23395s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzee f23396t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzcy(zzee zzeeVar, String str) {
        super(zzeeVar, true);
        this.f23396t = zzeeVar;
        this.f23395s = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23396t.f23484i)).beginAdUnitExposure(this.f23395s, this.f23452p);
    }
}
