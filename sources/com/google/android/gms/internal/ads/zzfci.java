package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfci {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f17890a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f17891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzfcs f17892c;

    /* synthetic */ zzfci(zzfcs zzfcsVar, Object obj, List list, zzfch zzfchVar) {
        this.f17892c = zzfcsVar;
        this.f17890a = obj;
        this.f17891b = list;
    }

    public final zzfcr a(Callable callable) {
        zzfui zzfuiVarB = zzfuj.b(this.f17891b);
        zzfut zzfutVarA = zzfuiVarB.a(new Callable() { // from class: com.google.android.gms.internal.ads.zzfcg
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return null;
            }
        }, zzbzn.f11619f);
        zzfcs zzfcsVar = this.f17892c;
        return new zzfcr(zzfcsVar, this.f17890a, zzfutVarA, this.f17891b, zzfuiVarB.a(callable, zzfcsVar.f17908a));
    }
}
