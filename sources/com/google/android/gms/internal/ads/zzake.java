package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzake implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzako f9418o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzaku f9419p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Runnable f9420q;

    public zzake(zzako zzakoVar, zzaku zzakuVar, Runnable runnable) {
        this.f9418o = zzakoVar;
        this.f9419p = zzakuVar;
        this.f9420q = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9418o.N();
        zzaku zzakuVar = this.f9419p;
        if (zzakuVar.c()) {
            this.f9418o.r(zzakuVar.f9460a);
        } else {
            this.f9418o.q(zzakuVar.f9462c);
        }
        if (this.f9419p.f9463d) {
            this.f9418o.p("intermediate-response");
        } else {
            this.f9418o.s("done");
        }
        Runnable runnable = this.f9420q;
        if (runnable != null) {
            runnable.run();
        }
    }
}
