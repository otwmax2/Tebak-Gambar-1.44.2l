package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzg f23497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final zzax f23498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Map f23499c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Map f23500d = new HashMap();

    public zzg(zzg zzgVar, zzax zzaxVar) {
        this.f23497a = zzgVar;
        this.f23498b = zzaxVar;
    }

    public final zzg a() {
        return new zzg(this, this.f23498b);
    }

    public final zzap b(zzap zzapVar) {
        return this.f23498b.a(this, zzapVar);
    }

    public final zzap c(zzae zzaeVar) {
        zzap zzapVarA = zzap.f23278d;
        Iterator itO = zzaeVar.o();
        while (itO.hasNext()) {
            zzapVarA = this.f23498b.a(this, zzaeVar.m(((Integer) itO.next()).intValue()));
            if (zzapVarA instanceof zzag) {
                break;
            }
        }
        return zzapVarA;
    }

    public final zzap d(String str) {
        if (this.f23499c.containsKey(str)) {
            return (zzap) this.f23499c.get(str);
        }
        zzg zzgVar = this.f23497a;
        if (zzgVar != null) {
            return zzgVar.d(str);
        }
        throw new IllegalArgumentException(String.format("%s is not defined", str));
    }

    public final void e(String str, zzap zzapVar) {
        if (this.f23500d.containsKey(str)) {
            return;
        }
        if (zzapVar == null) {
            this.f23499c.remove(str);
        } else {
            this.f23499c.put(str, zzapVar);
        }
    }

    public final void f(String str, zzap zzapVar) {
        e(str, zzapVar);
        this.f23500d.put(str, Boolean.TRUE);
    }

    public final void g(String str, zzap zzapVar) {
        zzg zzgVar;
        if (!this.f23499c.containsKey(str) && (zzgVar = this.f23497a) != null && zzgVar.h(str)) {
            this.f23497a.g(str, zzapVar);
        } else {
            if (this.f23500d.containsKey(str)) {
                return;
            }
            if (zzapVar == null) {
                this.f23499c.remove(str);
            } else {
                this.f23499c.put(str, zzapVar);
            }
        }
    }

    public final boolean h(String str) {
        if (this.f23499c.containsKey(str)) {
            return true;
        }
        zzg zzgVar = this.f23497a;
        if (zzgVar != null) {
            return zzgVar.h(str);
        }
        return false;
    }
}
