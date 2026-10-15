package com.google.android.gms.internal.measurement;

import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
final class zzih implements zzif {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @CheckForNull
    volatile zzif f23570o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    volatile boolean f23571p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @CheckForNull
    Object f23572q;

    zzih(zzif zzifVar) {
        Objects.requireNonNull(zzifVar);
        this.f23570o = zzifVar;
    }

    public final String toString() {
        Object string = this.f23570o;
        if (string == null) {
            String strValueOf = String.valueOf(this.f23572q);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 25);
            sb.append("<supplier that returned ");
            sb.append(strValueOf);
            sb.append(">");
            string = sb.toString();
        }
        String string2 = string.toString();
        StringBuilder sb2 = new StringBuilder(string2.length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(string2);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzif
    public final Object zza() {
        if (!this.f23571p) {
            synchronized (this) {
                if (!this.f23571p) {
                    zzif zzifVar = this.f23570o;
                    zzifVar.getClass();
                    Object objZza = zzifVar.zza();
                    this.f23572q = objZza;
                    this.f23571p = true;
                    this.f23570o = null;
                    return objZza;
                }
            }
        }
        return this.f23572q;
    }
}
