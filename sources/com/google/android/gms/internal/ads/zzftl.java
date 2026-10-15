package com.google.android.gms.internal.ads;

import androidx.concurrent.futures.b;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzftl extends zzftk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final AtomicReferenceFieldUpdater f18723a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final AtomicIntegerFieldUpdater f18724b;

    zzftl(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        super(null);
        this.f18723a = atomicReferenceFieldUpdater;
        this.f18724b = atomicIntegerFieldUpdater;
    }

    @Override // com.google.android.gms.internal.ads.zzftk
    final int a(zzfto zzftoVar) {
        return this.f18724b.decrementAndGet(zzftoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzftk
    final void b(zzfto zzftoVar, @CheckForNull Set set, Set set2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = this.f18723a;
        while (!b.a(atomicReferenceFieldUpdater, zzftoVar, null, set2) && atomicReferenceFieldUpdater.get(zzftoVar) == null) {
        }
    }
}
