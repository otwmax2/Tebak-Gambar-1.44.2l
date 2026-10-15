package com.google.android.gms.internal.games;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap<zzgm, List<Throwable>> f23224a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ReferenceQueue<Throwable> f23225b = new ReferenceQueue<>();

    zzgj() {
    }

    public final List<Throwable> a(Throwable th, boolean z10) {
        Reference<? extends Throwable> referencePoll = this.f23225b.poll();
        while (referencePoll != null) {
            this.f23224a.remove(referencePoll);
            referencePoll = this.f23225b.poll();
        }
        List<Throwable> list = this.f23224a.get(new zzgm(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> listPutIfAbsent = this.f23224a.putIfAbsent(new zzgm(th, this.f23225b), vector);
        return listPutIfAbsent == null ? vector : listPutIfAbsent;
    }
}
