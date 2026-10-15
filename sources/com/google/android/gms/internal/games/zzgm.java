package com.google.android.gms.internal.games;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgm extends WeakReference<Throwable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f23228a;

    public zzgm(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.f23228a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzgm.class) {
            if (this == obj) {
                return true;
            }
            zzgm zzgmVar = (zzgm) obj;
            if (this.f23228a == zzgmVar.f23228a && get() == zzgmVar.get()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f23228a;
    }
}
