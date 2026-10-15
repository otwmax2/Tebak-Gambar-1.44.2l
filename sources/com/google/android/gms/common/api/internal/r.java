package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
abstract class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zabf f7136a;

    protected r(zabf zabfVar) {
        this.f7136a = zabfVar;
    }

    protected abstract void a();

    public final void b(zabi zabiVar) {
        Lock lock;
        zabiVar.f7205o.lock();
        try {
            if (zabiVar.f7215y != this.f7136a) {
                lock = zabiVar.f7205o;
            } else {
                a();
                lock = zabiVar.f7205o;
            }
            lock.unlock();
        } catch (Throwable th) {
            zabiVar.f7205o.unlock();
            throw th;
        }
    }
}
