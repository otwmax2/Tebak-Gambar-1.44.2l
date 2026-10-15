package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdj extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ String f23421s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzbz f23422t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ zzee f23423u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdj(zzee zzeeVar, String str, zzbz zzbzVar) {
        super(zzeeVar, true);
        this.f23423u = zzeeVar;
        this.f23421s = str;
        this.f23422t = zzbzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23423u.f23484i)).getMaxUserProperties(this.f23421s, this.f23422t);
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    protected final void b() {
        this.f23422t.X(null);
    }
}
