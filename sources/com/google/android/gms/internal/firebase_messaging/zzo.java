package com.google.android.gms.internal.firebase_messaging;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzo extends WeakReference<Throwable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f23004a;

    public zzo(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f23004a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzo.class) {
            if (this == obj) {
                return true;
            }
            zzo zzoVar = (zzo) obj;
            if (this.f23004a == zzoVar.f23004a && get() == zzoVar.get()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f23004a;
    }
}
