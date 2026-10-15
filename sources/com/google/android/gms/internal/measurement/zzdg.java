package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdg extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ String f23414s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ Object f23415t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ zzee f23416u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdg(zzee zzeeVar, boolean z10, int i10, String str, Object obj, Object obj2, Object obj3) {
        super(zzeeVar, false);
        this.f23416u = zzeeVar;
        this.f23414s = str;
        this.f23415t = obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23416u.f23484i)).logHealthData(5, this.f23414s, ObjectWrapper.Q4(this.f23415t), ObjectWrapper.Q4(null), ObjectWrapper.Q4(null));
    }
}
