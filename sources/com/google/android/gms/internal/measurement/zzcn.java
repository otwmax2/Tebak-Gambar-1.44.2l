package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcn extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ Bundle f23365s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzee f23366t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzcn(zzee zzeeVar, Bundle bundle) {
        super(zzeeVar, true);
        this.f23366t = zzeeVar;
        this.f23365s = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23366t.f23484i)).setConditionalUserProperty(this.f23365s, this.f23451o);
    }
}
