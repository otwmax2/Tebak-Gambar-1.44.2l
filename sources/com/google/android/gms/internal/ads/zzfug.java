package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfug implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Future f18738o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final zzfuf f18739p;

    zzfug(Future future, zzfuf zzfufVar) {
        this.f18738o = future;
        this.f18739p = zzfufVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable thA;
        Object obj = this.f18738o;
        if ((obj instanceof zzfvm) && (thA = zzfvn.a((zzfvm) obj)) != null) {
            this.f18739p.a(thA);
            return;
        }
        try {
            this.f18739p.c(zzfuj.o(this.f18738o));
        } catch (Error e10) {
            e = e10;
            this.f18739p.a(e);
        } catch (RuntimeException e11) {
            e = e11;
            this.f18739p.a(e);
        } catch (ExecutionException e12) {
            this.f18739p.a(e12.getCause());
        }
    }

    public final String toString() {
        zzfnn zzfnnVarA = zzfno.a(this);
        zzfnnVarA.a(this.f18739p);
        return zzfnnVarA.toString();
    }
}
