package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfqm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object[] f18607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f18608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    zzfql f18609c;

    public zzfqm() {
        this(4);
    }

    private final void d(int i10) {
        Object[] objArr = this.f18607a;
        int length = objArr.length;
        int i11 = i10 + i10;
        if (i11 > length) {
            this.f18607a = Arrays.copyOf(objArr, zzfqe.b(length, i11));
        }
    }

    public final zzfqm a(Object obj, Object obj2) {
        d(this.f18608b + 1);
        zzfpj.b(obj, obj2);
        Object[] objArr = this.f18607a;
        int i10 = this.f18608b;
        int i11 = i10 + i10;
        objArr[i11] = obj;
        objArr[i11 + 1] = obj2;
        this.f18608b = i10 + 1;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzfqm b(Iterable iterable) {
        if (iterable instanceof Collection) {
            d(this.f18608b + iterable.size());
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            a(entry.getKey(), entry.getValue());
        }
        return this;
    }

    public final zzfqn c() {
        zzfql zzfqlVar = this.f18609c;
        if (zzfqlVar != null) {
            throw zzfqlVar.a();
        }
        zzfry zzfryVarK = zzfry.k(this.f18608b, this.f18607a, this);
        zzfql zzfqlVar2 = this.f18609c;
        if (zzfqlVar2 == null) {
            return zzfryVarK;
        }
        throw zzfqlVar2.a();
    }

    zzfqm(int i10) {
        this.f18607a = new Object[i10 + i10];
        this.f18608b = 0;
    }
}
