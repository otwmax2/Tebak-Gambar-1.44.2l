package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfvj extends zzftz implements RunnableFuture {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @CheckForNull
    private volatile zzfus f18761v;

    zzfvj(zzftp zzftpVar) {
        this.f18761v = new zzfvh(this, zzftpVar);
    }

    static zzfvj E(Runnable runnable, Object obj) {
        return new zzfvj(Executors.callable(runnable, obj));
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    @CheckForNull
    protected final String d() {
        zzfus zzfusVar = this.f18761v;
        if (zzfusVar == null) {
            return super.d();
        }
        return "task=[" + zzfusVar.toString() + "]";
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    protected final void g() {
        zzfus zzfusVar;
        if (x() && (zzfusVar = this.f18761v) != null) {
            zzfusVar.g();
        }
        this.f18761v = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzfus zzfusVar = this.f18761v;
        if (zzfusVar != null) {
            zzfusVar.run();
        }
        this.f18761v = null;
    }

    zzfvj(Callable callable) {
        this.f18761v = new zzfvi(this, callable);
    }
}
