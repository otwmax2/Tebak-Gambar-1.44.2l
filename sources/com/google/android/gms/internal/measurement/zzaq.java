package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaq implements zzap {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f23286o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ArrayList f23287p;

    public zzaq(String str, List list) {
        this.f23286o = str;
        ArrayList arrayList = new ArrayList();
        this.f23287p = arrayList;
        arrayList.addAll(list);
    }

    public final String a() {
        return this.f23286o;
    }

    public final ArrayList b() {
        return this.f23287p;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap c(String str, zzg zzgVar, List list) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap d() {
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean e() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaq)) {
            return false;
        }
        zzaq zzaqVar = (zzaq) obj;
        String str = this.f23286o;
        if (str == null ? zzaqVar.f23286o == null : str.equals(zzaqVar.f23286o)) {
            return this.f23287p.equals(zzaqVar.f23287p);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double f() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String g() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    public final int hashCode() {
        String str = this.f23286o;
        return ((str != null ? str.hashCode() : 0) * 31) + this.f23287p.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator j() {
        return null;
    }
}
