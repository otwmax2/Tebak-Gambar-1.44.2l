package com.google.android.gms.internal.firebase_messaging;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap<zzo, List<Throwable>> f23005a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ReferenceQueue<Throwable> f23006b = new ReferenceQueue<>();

    zzp() {
    }

    public final List<Throwable> a(Throwable th, boolean z10) {
        ReferenceQueue<Throwable> referenceQueue = this.f23006b;
        while (true) {
            Reference<? extends Throwable> referencePoll = referenceQueue.poll();
            if (referencePoll == null) {
                break;
            }
            this.f23005a.remove(referencePoll);
            referenceQueue = this.f23006b;
        }
        List<Throwable> list = this.f23005a.get(new zzo(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> listPutIfAbsent = this.f23005a.putIfAbsent(new zzo(th, this.f23006b), vector);
        return listPutIfAbsent == null ? vector : listPutIfAbsent;
    }
}
