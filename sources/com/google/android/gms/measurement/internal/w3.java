package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class w3 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzp f24355a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzli f24356b;

    w3(zzli zzliVar, zzp zzpVar) {
        this.f24356b = zzliVar;
        this.f24355a = zzpVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzah zzahVarS = this.f24356b.S((String) Preconditions.k(this.f24355a.f24879o));
        zzag zzagVar = zzag.ANALYTICS_STORAGE;
        if (zzahVarS.i(zzagVar) && zzah.b(this.f24355a.J).i(zzagVar)) {
            return this.f24356b.P(this.f24355a).f0();
        }
        this.f24356b.U().q().a("Analytics storage consent denied. Returning null app instance id");
        return null;
    }
}
