package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzea extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ Activity f23467s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzed f23468t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzea(zzed zzedVar, Activity activity) {
        super(zzedVar.f23474o, true);
        this.f23468t = zzedVar;
        this.f23467s = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23468t.f23474o.f23484i)).onActivityStopped(ObjectWrapper.Q4(this.f23467s), this.f23452p);
    }
}
