package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeb extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ Activity f23469s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzbz f23470t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ zzed f23471u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzeb(zzed zzedVar, Activity activity, zzbz zzbzVar) {
        super(zzedVar.f23474o, true);
        this.f23471u = zzedVar;
        this.f23469s = activity;
        this.f23470t = zzbzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23471u.f23474o.f23484i)).onActivitySaveInstanceState(ObjectWrapper.Q4(this.f23469s), this.f23470t, this.f23452p);
    }
}
