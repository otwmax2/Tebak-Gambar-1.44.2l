package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcz extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ String f23397s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzee f23398t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzcz(zzee zzeeVar, String str) {
        super(zzeeVar, true);
        this.f23398t = zzeeVar;
        this.f23397s = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23398t.f23484i)).endAdUnitExposure(this.f23397s, this.f23452p);
    }
}
