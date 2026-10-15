package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfqo extends zzfqd {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @CheckForNull
    Object[] f18613d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f18614e;

    public zzfqo() {
        super(4);
    }

    @Override // com.google.android.gms.internal.ads.zzfqd, com.google.android.gms.internal.ads.zzfqe
    public final /* bridge */ /* synthetic */ zzfqe a(Object obj) {
        g(obj);
        return this;
    }

    public final zzfqo g(Object obj) {
        Objects.requireNonNull(obj);
        if (this.f18613d != null) {
            int iN = zzfqp.n(this.f18594b);
            int length = this.f18613d.length;
            if (iN <= length) {
                int iHashCode = obj.hashCode();
                int iA = zzfqc.a(iHashCode);
                while (true) {
                    Object[] objArr = this.f18613d;
                    int i10 = iA & (length - 1);
                    Object obj2 = objArr[i10];
                    if (obj2 != null) {
                        if (obj2.equals(obj)) {
                            break;
                        }
                        iA = i10 + 1;
                    } else {
                        objArr[i10] = obj;
                        this.f18614e += iHashCode;
                        super.c(obj);
                        break;
                    }
                }
                return this;
            }
        }
        this.f18613d = null;
        super.c(obj);
        return this;
    }

    public final zzfqo h(Iterable iterable) {
        if (this.f18613d != null) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                g(it.next());
            }
        } else {
            super.d(iterable);
        }
        return this;
    }

    public final zzfqp i() {
        zzfqp zzfqpVarA;
        int i10 = this.f18594b;
        if (i10 == 0) {
            return zzfrz.f18652w;
        }
        if (i10 == 1) {
            Object obj = this.f18593a[0];
            obj.getClass();
            return new zzfsg(obj);
        }
        if (this.f18613d == null || zzfqp.n(i10) != this.f18613d.length) {
            zzfqpVarA = zzfqp.A(this.f18594b, this.f18593a);
            this.f18594b = zzfqpVarA.size();
        } else {
            int i11 = this.f18594b;
            Object[] objArrCopyOf = this.f18593a;
            if (zzfqp.B(i11, objArrCopyOf.length)) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i11);
            }
            zzfqpVarA = new zzfrz(objArrCopyOf, this.f18614e, this.f18613d, r6.length - 1, this.f18594b);
        }
        this.f18595c = true;
        this.f18613d = null;
        return zzfqpVarA;
    }

    zzfqo(int i10) {
        super(i10);
        this.f18613d = new Object[zzfqp.n(i10)];
    }
}
