package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzgc;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class z3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    zzgc f24410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List f24411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List f24412c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f24413d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzli f24414e;

    /* synthetic */ z3(zzli zzliVar, zzle zzleVar) {
        this.f24414e = zzliVar;
    }

    private static final long b(com.google.android.gms.internal.measurement.zzfs zzfsVar) {
        return ((zzfsVar.x() / 1000) / 60) / 60;
    }

    public final boolean a(long j10, com.google.android.gms.internal.measurement.zzfs zzfsVar) {
        Preconditions.k(zzfsVar);
        if (this.f24412c == null) {
            this.f24412c = new ArrayList();
        }
        if (this.f24411b == null) {
            this.f24411b = new ArrayList();
        }
        if (this.f24412c.size() > 0 && b((com.google.android.gms.internal.measurement.zzfs) this.f24412c.get(0)) != b(zzfsVar)) {
            return false;
        }
        long jM = this.f24413d + ((long) zzfsVar.M());
        this.f24414e.R();
        if (jM >= Math.max(0, ((Integer) zzel.f24575j.a(null)).intValue())) {
            return false;
        }
        this.f24413d = jM;
        this.f24412c.add(zzfsVar);
        this.f24411b.add(Long.valueOf(j10));
        int size = this.f24412c.size();
        this.f24414e.R();
        return size < Math.max(1, ((Integer) zzel.f24577k.a(null)).intValue());
    }
}
