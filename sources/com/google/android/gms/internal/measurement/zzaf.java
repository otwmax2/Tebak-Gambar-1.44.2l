package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaf implements zzap {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f23267o;

    public zzaf(Boolean bool) {
        this.f23267o = bool == null ? false : bool.booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap c(String str, zzg zzgVar, List list) {
        if ("toString".equals(str)) {
            return new zzat(Boolean.toString(this.f23267o));
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", Boolean.toString(this.f23267o), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap d() {
        return new zzaf(Boolean.valueOf(this.f23267o));
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean e() {
        return Boolean.valueOf(this.f23267o);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzaf) && this.f23267o == ((zzaf) obj).f23267o;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double f() {
        return Double.valueOf(true != this.f23267o ? 0.0d : 1.0d);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String g() {
        return Boolean.toString(this.f23267o);
    }

    public final int hashCode() {
        return Boolean.valueOf(this.f23267o).hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator j() {
        return null;
    }

    public final String toString() {
        return String.valueOf(this.f23267o);
    }
}
