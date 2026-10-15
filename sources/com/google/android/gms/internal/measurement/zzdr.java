package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdr extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ Long f23439s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ String f23440t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ String f23441u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final /* synthetic */ Bundle f23442v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final /* synthetic */ boolean f23443w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final /* synthetic */ boolean f23444x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    final /* synthetic */ zzee f23445y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdr(zzee zzeeVar, Long l10, String str, String str2, Bundle bundle, boolean z10, boolean z11) {
        super(zzeeVar, true);
        this.f23445y = zzeeVar;
        this.f23439s = l10;
        this.f23440t = str;
        this.f23441u = str2;
        this.f23442v = bundle;
        this.f23443w = z10;
        this.f23444x = z11;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        Long l10 = this.f23439s;
        ((zzcc) Preconditions.k(this.f23445y.f23484i)).logEvent(this.f23440t, this.f23441u, this.f23442v, this.f23443w, this.f23444x, l10 == null ? this.f23451o : l10.longValue());
    }
}
