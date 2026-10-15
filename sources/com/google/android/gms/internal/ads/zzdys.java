package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdys implements zzfdb {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Map f15977o = new HashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Map f15978p = new HashMap();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzfdj f15979q;

    public zzdys(Set set, zzfdj zzfdjVar) {
        this.f15979q = zzfdjVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzdyr zzdyrVar = (zzdyr) it.next();
            this.f15977o.put(zzdyrVar.f15975b, zzdyrVar.f15974a);
            this.f15978p.put(zzdyrVar.f15976c, zzdyrVar.f15974a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void a(zzfcu zzfcuVar, String str) {
        this.f15979q.d("task.".concat(String.valueOf(str)));
        if (this.f15977o.containsKey(zzfcuVar)) {
            this.f15979q.d("label.".concat(String.valueOf((String) this.f15977o.get(zzfcuVar))));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void b(zzfcu zzfcuVar, String str) {
        this.f15979q.e("task.".concat(String.valueOf(str)), "s.");
        if (this.f15978p.containsKey(zzfcuVar)) {
            this.f15979q.e("label.".concat(String.valueOf((String) this.f15978p.get(zzfcuVar))), "s.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void e(zzfcu zzfcuVar, String str, Throwable th) {
        this.f15979q.e("task.".concat(String.valueOf(str)), "f.");
        if (this.f15978p.containsKey(zzfcuVar)) {
            this.f15979q.e("label.".concat(String.valueOf((String) this.f15978p.get(zzfcuVar))), "f.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void q(zzfcu zzfcuVar, String str) {
    }
}
