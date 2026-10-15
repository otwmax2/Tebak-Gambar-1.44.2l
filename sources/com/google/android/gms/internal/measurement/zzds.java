package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzds extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ String f23446s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ String f23447t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ Object f23448u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final /* synthetic */ boolean f23449v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final /* synthetic */ zzee f23450w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzds(zzee zzeeVar, String str, String str2, Object obj, boolean z10) {
        super(zzeeVar, true);
        this.f23450w = zzeeVar;
        this.f23446s = str;
        this.f23447t = str2;
        this.f23448u = obj;
        this.f23449v = z10;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23450w.f23484i)).setUserProperty(this.f23446s, this.f23447t, ObjectWrapper.Q4(this.f23448u), this.f23449v, this.f23451o);
    }
}
