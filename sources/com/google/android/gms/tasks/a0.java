package com.google.android.gms.tasks;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class a0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ z f24954o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ Callable f24955p;

    a0(z zVar, Callable callable) {
        this.f24954o = zVar;
        this.f24955p = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f24954o.x(this.f24955p.call());
        } catch (Exception e10) {
            this.f24954o.w(e10);
        } catch (Throwable th) {
            this.f24954o.w(new RuntimeException(th));
        }
    }
}
