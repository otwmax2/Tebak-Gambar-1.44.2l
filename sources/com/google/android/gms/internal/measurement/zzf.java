package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzax f23491a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final zzg f23492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final zzg f23493c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final zzj f23494d;

    public zzf() {
        zzax zzaxVar = new zzax();
        this.f23491a = zzaxVar;
        zzg zzgVar = new zzg(null, zzaxVar);
        this.f23493c = zzgVar;
        this.f23492b = zzgVar.a();
        zzj zzjVar = new zzj();
        this.f23494d = zzjVar;
        zzgVar.g("require", new zzw(zzjVar));
        zzjVar.a("internal.platform", new Callable() { // from class: com.google.android.gms.internal.measurement.zze
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzy();
            }
        });
        zzgVar.g("runtime.counter", new zzah(Double.valueOf(0.0d)));
    }

    public final zzap a(zzg zzgVar, zzgx... zzgxVarArr) {
        zzap zzapVarA = zzap.f23278d;
        for (zzgx zzgxVar : zzgxVarArr) {
            zzapVarA = zzi.a(zzgxVar);
            zzh.c(this.f23493c);
            if ((zzapVarA instanceof zzaq) || (zzapVarA instanceof zzao)) {
                zzapVarA = this.f23491a.a(zzgVar, zzapVarA);
            }
        }
        return zzapVarA;
    }
}
