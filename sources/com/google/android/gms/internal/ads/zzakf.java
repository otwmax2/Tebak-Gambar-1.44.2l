package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzakf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f9421a;

    public zzakf(Handler handler) {
        this.f9421a = new zzakd(this, handler);
    }

    public final void a(zzako zzakoVar, zzakx zzakxVar) {
        zzakoVar.p("post-error");
        zzaku zzakuVarA = zzaku.a(zzakxVar);
        Executor executor = this.f9421a;
        ((zzakd) executor).f9417o.post(new zzake(zzakoVar, zzakuVarA, null));
    }

    public final void b(zzako zzakoVar, zzaku zzakuVar, Runnable runnable) {
        zzakoVar.u();
        zzakoVar.p("post-response");
        Executor executor = this.f9421a;
        ((zzakd) executor).f9417o.post(new zzake(zzakoVar, zzakuVar, runnable));
    }
}
