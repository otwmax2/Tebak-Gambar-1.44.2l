package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcp extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ String f23371s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ String f23372t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ zzbz f23373u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final /* synthetic */ zzee f23374v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzcp(zzee zzeeVar, String str, String str2, zzbz zzbzVar) {
        super(zzeeVar, true);
        this.f23374v = zzeeVar;
        this.f23371s = str;
        this.f23372t = str2;
        this.f23373u = zzbzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23374v.f23484i)).getConditionalUserProperties(this.f23371s, this.f23372t, this.f23373u);
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    protected final void b() {
        this.f23373u.X(null);
    }
}
