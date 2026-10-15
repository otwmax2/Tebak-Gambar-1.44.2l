package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfps extends zzfpg {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f18573o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f18574p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzfpu f18575q;

    zzfps(zzfpu zzfpuVar, int i10) {
        this.f18575q = zzfpuVar;
        Object[] objArr = zzfpuVar.f18580q;
        objArr.getClass();
        this.f18573o = objArr[i10];
        this.f18574p = i10;
    }

    private final void a() {
        int i10 = this.f18574p;
        if (i10 != -1 && i10 < this.f18575q.size()) {
            Object obj = this.f18573o;
            zzfpu zzfpuVar = this.f18575q;
            int i11 = this.f18574p;
            Object[] objArr = zzfpuVar.f18580q;
            objArr.getClass();
            if (zzfnp.a(obj, objArr[i11])) {
                return;
            }
        }
        this.f18574p = this.f18575q.r(this.f18573o);
    }

    @Override // com.google.android.gms.internal.ads.zzfpg, java.util.Map.Entry
    public final Object getKey() {
        return this.f18573o;
    }

    @Override // com.google.android.gms.internal.ads.zzfpg, java.util.Map.Entry
    public final Object getValue() {
        Map mapL = this.f18575q.l();
        if (mapL != null) {
            return mapL.get(this.f18573o);
        }
        a();
        int i10 = this.f18574p;
        if (i10 == -1) {
            return null;
        }
        Object[] objArr = this.f18575q.f18581r;
        objArr.getClass();
        return objArr[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzfpg, java.util.Map.Entry
    public final Object setValue(Object obj) {
        Map mapL = this.f18575q.l();
        if (mapL != null) {
            return mapL.put(this.f18573o, obj);
        }
        a();
        int i10 = this.f18574p;
        if (i10 == -1) {
            this.f18575q.put(this.f18573o, obj);
            return null;
        }
        Object[] objArr = this.f18575q.f18581r;
        objArr.getClass();
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        return obj2;
    }
}
