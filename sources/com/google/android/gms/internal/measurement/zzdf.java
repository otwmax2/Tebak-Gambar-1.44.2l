package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdf extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ String f23409s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ String f23410t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ boolean f23411u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final /* synthetic */ zzbz f23412v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final /* synthetic */ zzee f23413w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdf(zzee zzeeVar, String str, String str2, boolean z10, zzbz zzbzVar) {
        super(zzeeVar, true);
        this.f23413w = zzeeVar;
        this.f23409s = str;
        this.f23410t = str2;
        this.f23411u = z10;
        this.f23412v = zzbzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23413w.f23484i)).getUserProperties(this.f23409s, this.f23410t, this.f23411u, this.f23412v);
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    protected final void b() {
        this.f23412v.X(null);
    }
}
