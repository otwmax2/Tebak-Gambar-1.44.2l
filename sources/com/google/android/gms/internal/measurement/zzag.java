package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzag implements zzap {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzap f23268o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f23269p;

    public zzag() {
        throw null;
    }

    public zzag(String str) {
        this.f23268o = zzap.f23278d;
        this.f23269p = str;
    }

    public zzag(String str, zzap zzapVar) {
        this.f23268o = zzapVar;
        this.f23269p = str;
    }

    public final zzap a() {
        return this.f23268o;
    }

    public final String b() {
        return this.f23269p;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap c(String str, zzg zzgVar, List list) {
        throw new IllegalStateException("Control does not have functions");
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap d() {
        return new zzag(this.f23269p, this.f23268o.d());
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean e() {
        throw new IllegalStateException("Control is not a boolean");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzag)) {
            return false;
        }
        zzag zzagVar = (zzag) obj;
        return this.f23269p.equals(zzagVar.f23269p) && this.f23268o.equals(zzagVar.f23268o);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double f() {
        throw new IllegalStateException("Control is not a double");
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String g() {
        throw new IllegalStateException("Control is not a String");
    }

    public final int hashCode() {
        return (this.f23269p.hashCode() * 31) + this.f23268o.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator j() {
        return null;
    }
}
