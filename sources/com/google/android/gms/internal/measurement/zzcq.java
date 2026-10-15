package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcq extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ String f23375s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzee f23376t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzcq(zzee zzeeVar, String str) {
        super(zzeeVar, true);
        this.f23376t = zzeeVar;
        this.f23375s = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23376t.f23484i)).setUserId(this.f23375s, this.f23451o);
    }
}
