package com.google.android.gms.tasks;

import java.util.concurrent.ExecutionException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class d<T> implements c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f24957a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f24958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final z f24959c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("mLock")
    private int f24960d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("mLock")
    private int f24961e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("mLock")
    private int f24962f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @GuardedBy("mLock")
    private Exception f24963g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @GuardedBy("mLock")
    private boolean f24964h;

    public d(int i10, z zVar) {
        this.f24958b = i10;
        this.f24959c = zVar;
    }

    @GuardedBy("mLock")
    private final void a() {
        if (this.f24960d + this.f24961e + this.f24962f == this.f24958b) {
            if (this.f24963g == null) {
                if (this.f24964h) {
                    this.f24959c.y();
                    return;
                } else {
                    this.f24959c.x(null);
                    return;
                }
            }
            this.f24959c.w(new ExecutionException(this.f24961e + " out of " + this.f24958b + " underlying tasks failed", this.f24963g));
        }
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void b(Exception exc) {
        synchronized (this.f24957a) {
            this.f24961e++;
            this.f24963g = exc;
            a();
        }
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void d() {
        synchronized (this.f24957a) {
            this.f24962f++;
            this.f24964h = true;
            a();
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(T t10) {
        synchronized (this.f24957a) {
            this.f24960d++;
            a();
        }
    }
}
