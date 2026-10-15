package com.google.android.gms.internal.ads;

import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfbl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfbe f17873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfut f17874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f17875c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f17876d = false;

    public zzfbl(final zzfaj zzfajVar, final zzfbd zzfbdVar, final zzfbe zzfbeVar) {
        this.f17873a = zzfbeVar;
        this.f17874b = zzfuj.f(zzfuj.m(zzfbdVar.b(zzfbeVar), new zzftq() { // from class: com.google.android.gms.internal.ads.zzfbj
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f17867a.b(zzfbdVar, zzfajVar, zzfbeVar, (zzfas) obj);
            }
        }, zzfbeVar.zzb()), Exception.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzfbk
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f17871a.c(zzfbdVar, (Exception) obj);
            }
        }, zzfbeVar.zzb());
    }

    public final synchronized zzfut a(zzfbe zzfbeVar) {
        if (!this.f17876d && !this.f17875c) {
            if (this.f17873a.zza() != null && zzfbeVar.zza() != null && this.f17873a.zza().equals(zzfbeVar.zza())) {
                this.f17875c = true;
                return this.f17874b;
            }
            return null;
        }
        return null;
    }

    final /* synthetic */ zzfut b(zzfbd zzfbdVar, zzfaj zzfajVar, zzfbe zzfbeVar, zzfas zzfasVar) throws Exception {
        synchronized (this) {
            this.f17876d = true;
            zzfbdVar.a(zzfasVar);
            if (this.f17875c) {
                return zzfuj.h(new zzfbc(zzfasVar, zzfbeVar));
            }
            zzfajVar.c(zzfbeVar.zza(), zzfasVar);
            return zzfuj.h(null);
        }
    }

    final /* synthetic */ zzfut c(zzfbd zzfbdVar, Exception exc) throws Exception {
        synchronized (this) {
            this.f17876d = true;
            throw exc;
        }
    }

    public final synchronized void d(zzfuf zzfufVar) {
        zzfuj.q(zzfuj.m(this.f17874b, new zzftq() { // from class: com.google.android.gms.internal.ads.zzfbi
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzfuj.i();
            }
        }, this.f17873a.zzb()), zzfufVar, this.f17873a.zzb());
    }
}
