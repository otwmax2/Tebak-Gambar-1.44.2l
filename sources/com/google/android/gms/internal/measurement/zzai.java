package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzai implements zzap, zzal {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final String f23271o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected final Map f23272p = new HashMap();

    public zzai(String str) {
        this.f23271o = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final zzap I(String str) {
        return this.f23272p.containsKey(str) ? (zzap) this.f23272p.get(str) : zzap.f23278d;
    }

    public abstract zzap a(zzg zzgVar, List list);

    public final String b() {
        return this.f23271o;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap c(String str, zzg zzgVar, List list) {
        return "toString".equals(str) ? new zzat(this.f23271o) : zzaj.a(this, new zzat(str), zzgVar, list);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public zzap d() {
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean e() {
        return Boolean.TRUE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzai)) {
            return false;
        }
        zzai zzaiVar = (zzai) obj;
        String str = this.f23271o;
        if (str != null) {
            return str.equals(zzaiVar.f23271o);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double f() {
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String g() {
        return this.f23271o;
    }

    public final int hashCode() {
        String str = this.f23271o;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final void i(String str, zzap zzapVar) {
        if (zzapVar == null) {
            this.f23272p.remove(str);
        } else {
            this.f23272p.put(str, zzapVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator j() {
        return zzaj.b(this.f23272p);
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final boolean z0(String str) {
        return this.f23272p.containsKey(str);
    }
}
