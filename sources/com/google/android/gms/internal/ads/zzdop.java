package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdop implements zzfdb {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Map f15275o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzawe f15276p;

    zzdop(zzawe zzaweVar, Map map) {
        this.f15275o = map;
        this.f15276p = zzaweVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void a(zzfcu zzfcuVar, String str) {
        if (this.f15275o.containsKey(zzfcuVar)) {
            this.f15276p.c(((zzdoo) this.f15275o.get(zzfcuVar)).f15272a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void b(zzfcu zzfcuVar, String str) {
        if (this.f15275o.containsKey(zzfcuVar)) {
            this.f15276p.c(((zzdoo) this.f15275o.get(zzfcuVar)).f15273b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void e(zzfcu zzfcuVar, String str, Throwable th) {
        if (this.f15275o.containsKey(zzfcuVar)) {
            this.f15276p.c(((zzdoo) this.f15275o.get(zzfcuVar)).f15274c);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void q(zzfcu zzfcuVar, String str) {
    }
}
