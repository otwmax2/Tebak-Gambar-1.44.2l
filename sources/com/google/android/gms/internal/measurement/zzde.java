package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzde extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzbz f23407s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzee f23408t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzde(zzee zzeeVar, zzbz zzbzVar) {
        super(zzeeVar, true);
        this.f23408t = zzeeVar;
        this.f23407s = zzbzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23408t.f23484i)).getCurrentScreenClass(this.f23407s);
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    protected final void b() {
        this.f23407s.X(null);
    }
}
