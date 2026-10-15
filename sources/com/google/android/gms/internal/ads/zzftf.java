package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzftf extends zzftz implements Runnable {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final /* synthetic */ int f18714x = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @CheckForNull
    zzfut f18715v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @CheckForNull
    Object f18716w;

    zzftf(zzfut zzfutVar, Object obj) {
        Objects.requireNonNull(zzfutVar);
        this.f18715v = zzfutVar;
        Objects.requireNonNull(obj);
        this.f18716w = obj;
    }

    abstract Object E(Object obj, Object obj2) throws Exception;

    abstract void F(Object obj);

    @Override // com.google.android.gms.internal.ads.zzfsx
    @CheckForNull
    protected final String d() {
        String str;
        zzfut zzfutVar = this.f18715v;
        Object obj = this.f18716w;
        String strD = super.d();
        if (zzfutVar != null) {
            str = "inputFuture=[" + zzfutVar.toString() + "], ";
        } else {
            str = BuildConfig.FLAVOR;
        }
        if (obj == null) {
            if (strD != null) {
                return str.concat(strD);
            }
            return null;
        }
        return str + "function=[" + obj.toString() + "]";
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    protected final void g() {
        v(this.f18715v);
        this.f18715v = null;
        this.f18716w = null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfut zzfutVar = this.f18715v;
        Object obj = this.f18716w;
        if ((isCancelled() | (zzfutVar == null)) || (obj == null)) {
            return;
        }
        this.f18715v = null;
        if (zzfutVar.isCancelled()) {
            w(zzfutVar);
            return;
        }
        try {
            try {
                Object objE = E(obj, zzfuj.o(zzfutVar));
                this.f18716w = null;
                F(objE);
            } catch (Throwable th) {
                try {
                    zzfvb.a(th);
                    i(th);
                } finally {
                    this.f18716w = null;
                }
            }
        } catch (Error e10) {
            i(e10);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e11) {
            i(e11);
        } catch (ExecutionException e12) {
            i(e12.getCause());
        }
    }
}
