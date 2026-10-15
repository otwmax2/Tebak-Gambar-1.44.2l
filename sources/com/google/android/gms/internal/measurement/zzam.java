package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public class zzam implements zzap, zzal {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Map f23274o = new HashMap();

    @Override // com.google.android.gms.internal.measurement.zzal
    public final zzap I(String str) {
        return this.f23274o.containsKey(str) ? (zzap) this.f23274o.get(str) : zzap.f23278d;
    }

    public final List a() {
        return new ArrayList(this.f23274o.keySet());
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public zzap c(String str, zzg zzgVar, List list) {
        return "toString".equals(str) ? new zzat(toString()) : zzaj.a(this, new zzat(str), zzgVar, list);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap d() {
        zzam zzamVar = new zzam();
        for (Map.Entry entry : this.f23274o.entrySet()) {
            if (entry.getValue() instanceof zzal) {
                zzamVar.f23274o.put((String) entry.getKey(), (zzap) entry.getValue());
            } else {
                zzamVar.f23274o.put((String) entry.getKey(), ((zzap) entry.getValue()).d());
            }
        }
        return zzamVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean e() {
        return Boolean.TRUE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzam) {
            return this.f23274o.equals(((zzam) obj).f23274o);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double f() {
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String g() {
        return "[object Object]";
    }

    public final int hashCode() {
        return this.f23274o.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final void i(String str, zzap zzapVar) {
        if (zzapVar == null) {
            this.f23274o.remove(str);
        } else {
            this.f23274o.put(str, zzapVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator j() {
        return zzaj.b(this.f23274o);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (!this.f23274o.isEmpty()) {
            for (String str : this.f23274o.keySet()) {
                sb.append(String.format("%s: %s,", str, this.f23274o.get(str)));
            }
            sb.deleteCharAt(sb.lastIndexOf(","));
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final boolean z0(String str) {
        return this.f23274o.containsKey(str);
    }
}
