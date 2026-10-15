package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgsm implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ArrayDeque f19584o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private zzgoz f19585p;

    /* synthetic */ zzgsm(zzgpe zzgpeVar, zzgsl zzgslVar) {
        if (!(zzgpeVar instanceof zzgso)) {
            this.f19584o = null;
            this.f19585p = (zzgoz) zzgpeVar;
            return;
        }
        zzgso zzgsoVar = (zzgso) zzgpeVar;
        ArrayDeque arrayDeque = new ArrayDeque(zzgsoVar.q());
        this.f19584o = arrayDeque;
        arrayDeque.push(zzgsoVar);
        this.f19585p = b(zzgsoVar.f19588t);
    }

    private final zzgoz b(zzgpe zzgpeVar) {
        while (zzgpeVar instanceof zzgso) {
            zzgso zzgsoVar = (zzgso) zzgpeVar;
            this.f19584o.push(zzgsoVar);
            zzgpeVar = zzgsoVar.f19588t;
        }
        return (zzgoz) zzgpeVar;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzgoz next() {
        zzgoz zzgozVarB;
        zzgoz zzgozVar = this.f19585p;
        if (zzgozVar == null) {
            throw new NoSuchElementException();
        }
        do {
            ArrayDeque arrayDeque = this.f19584o;
            zzgozVarB = null;
            if (arrayDeque == null || arrayDeque.isEmpty()) {
                break;
            }
            zzgozVarB = b(((zzgso) this.f19584o.pop()).f19589u);
        } while (zzgozVarB.j());
        this.f19585p = zzgozVarB;
        return zzgozVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f19585p != null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
