package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzco extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ String f23367s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ String f23368t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ Bundle f23369u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final /* synthetic */ zzee f23370v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzco(zzee zzeeVar, String str, String str2, Bundle bundle) {
        super(zzeeVar, true);
        this.f23370v = zzeeVar;
        this.f23367s = str;
        this.f23368t = str2;
        this.f23369u = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23370v.f23484i)).clearConditionalUserProperty(this.f23367s, this.f23368t, this.f23369u);
    }
}
