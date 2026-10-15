package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdzb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdyx f15991a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfuu f15992b;

    public zzdzb(zzdyx zzdyxVar, zzfuu zzfuuVar) {
        this.f15991a = zzdyxVar;
        this.f15992b = zzfuuVar;
    }

    public final void a(zzfcd zzfcdVar) {
        zzfuu zzfuuVar = this.f15992b;
        final zzdyx zzdyxVar = this.f15991a;
        zzfuj.q(zzfuuVar.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzdyz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzdyxVar.getWritableDatabase();
            }
        }), new zzdza(this, zzfcdVar), this.f15992b);
    }
}
