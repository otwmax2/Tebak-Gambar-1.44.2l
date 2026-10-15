package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdm extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ boolean f23429s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzee f23430t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdm(zzee zzeeVar, boolean z10) {
        super(zzeeVar, true);
        this.f23430t = zzeeVar;
        this.f23429s = z10;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23430t.f23484i)).setDataCollectionEnabled(this.f23429s);
    }
}
