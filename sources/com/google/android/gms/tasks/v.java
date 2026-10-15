package com.google.android.gms.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f25000a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("mLock")
    private Queue f25001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private boolean f25002c;

    v() {
    }

    public final void a(u uVar) {
        synchronized (this.f25000a) {
            if (this.f25001b == null) {
                this.f25001b = new ArrayDeque();
            }
            this.f25001b.add(uVar);
        }
    }

    public final void b(Task task) {
        u uVar;
        synchronized (this.f25000a) {
            if (this.f25001b != null && !this.f25002c) {
                this.f25002c = true;
                while (true) {
                    synchronized (this.f25000a) {
                        uVar = (u) this.f25001b.poll();
                        if (uVar == null) {
                            this.f25002c = false;
                            return;
                        }
                    }
                    uVar.c(task);
                }
            }
        }
    }
}
