package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdpl implements zzfdb {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdpd f15334p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Clock f15335q;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Map f15333o = new HashMap();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Map f15336r = new HashMap();

    public zzdpl(zzdpd zzdpdVar, Set set, Clock clock) {
        this.f15334p = zzdpdVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzdpk zzdpkVar = (zzdpk) it.next();
            this.f15336r.put(zzdpkVar.f15332c, zzdpkVar);
        }
        this.f15335q = clock;
    }

    private final void c(zzfcu zzfcuVar, boolean z10) {
        zzfcu zzfcuVar2 = ((zzdpk) this.f15336r.get(zzfcuVar)).f15331b;
        if (this.f15333o.containsKey(zzfcuVar2)) {
            String str = true != z10 ? "f." : "s.";
            this.f15334p.a().put("label.".concat(((zzdpk) this.f15336r.get(zzfcuVar)).f15330a), str.concat(String.valueOf(Long.toString(this.f15335q.b() - ((Long) this.f15333o.get(zzfcuVar2)).longValue()))));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void a(zzfcu zzfcuVar, String str) {
        this.f15333o.put(zzfcuVar, Long.valueOf(this.f15335q.b()));
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void b(zzfcu zzfcuVar, String str) {
        if (this.f15333o.containsKey(zzfcuVar)) {
            long jB = this.f15335q.b() - ((Long) this.f15333o.get(zzfcuVar)).longValue();
            this.f15334p.a().put("task.".concat(String.valueOf(str)), "s.".concat(String.valueOf(Long.toString(jB))));
        }
        if (this.f15336r.containsKey(zzfcuVar)) {
            c(zzfcuVar, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void e(zzfcu zzfcuVar, String str, Throwable th) {
        if (this.f15333o.containsKey(zzfcuVar)) {
            long jB = this.f15335q.b() - ((Long) this.f15333o.get(zzfcuVar)).longValue();
            this.f15334p.a().put("task.".concat(String.valueOf(str)), "f.".concat(String.valueOf(Long.toString(jB))));
        }
        if (this.f15336r.containsKey(zzfcuVar)) {
            c(zzfcuVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void q(zzfcu zzfcuVar, String str) {
    }
}
