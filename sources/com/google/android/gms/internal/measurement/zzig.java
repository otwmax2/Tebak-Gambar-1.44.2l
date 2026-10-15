package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
final class zzig implements Serializable, zzif {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final zzif f23567o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    volatile transient boolean f23568p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @CheckForNull
    transient Object f23569q;

    zzig(zzif zzifVar) {
        Objects.requireNonNull(zzifVar);
        this.f23567o = zzifVar;
    }

    public final String toString() {
        Object string;
        if (this.f23568p) {
            String strValueOf = String.valueOf(this.f23569q);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 25);
            sb.append("<supplier that returned ");
            sb.append(strValueOf);
            sb.append(">");
            string = sb.toString();
        } else {
            string = this.f23567o;
        }
        String strValueOf2 = String.valueOf(string);
        StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(strValueOf2);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzif
    public final Object zza() {
        if (!this.f23568p) {
            synchronized (this) {
                if (!this.f23568p) {
                    Object objZza = this.f23567o.zza();
                    this.f23569q = objZza;
                    this.f23568p = true;
                    return objZza;
                }
            }
        }
        return this.f23569q;
    }
}
