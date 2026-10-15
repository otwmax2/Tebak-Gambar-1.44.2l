package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzau implements zzap {
    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap c(String str, zzg zzgVar, List list) {
        throw new IllegalStateException(String.format("Undefined has no function %s", str));
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap d() {
        return zzap.f23278d;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean e() {
        return Boolean.FALSE;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof zzau;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double f() {
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String g() {
        return "undefined";
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator j() {
        return null;
    }
}
