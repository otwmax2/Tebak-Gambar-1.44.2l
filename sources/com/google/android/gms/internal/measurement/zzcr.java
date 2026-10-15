package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcr extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ Activity f23377s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ String f23378t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ String f23379u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final /* synthetic */ zzee f23380v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzcr(zzee zzeeVar, Activity activity, String str, String str2) {
        super(zzeeVar, true);
        this.f23380v = zzeeVar;
        this.f23377s = activity;
        this.f23378t = str;
        this.f23379u = str2;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        ((zzcc) Preconditions.k(this.f23380v.f23484i)).setCurrentScreen(ObjectWrapper.Q4(this.f23377s), this.f23378t, this.f23379u, this.f23451o);
    }
}
