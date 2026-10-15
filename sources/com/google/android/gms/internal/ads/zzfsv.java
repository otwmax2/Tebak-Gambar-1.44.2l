package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzfsv extends zzftz implements Runnable {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @CheckForNull
    zzfut f18665v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @CheckForNull
    Class f18666w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @CheckForNull
    Object f18667x;

    zzfsv(zzfut zzfutVar, Class cls, Object obj) {
        Objects.requireNonNull(zzfutVar);
        this.f18665v = zzfutVar;
        this.f18666w = cls;
        Objects.requireNonNull(obj);
        this.f18667x = obj;
    }

    abstract Object E(Object obj, Throwable th) throws Exception;

    abstract void F(Object obj);

    @Override // com.google.android.gms.internal.ads.zzfsx
    @CheckForNull
    protected final String d() {
        String str;
        zzfut zzfutVar = this.f18665v;
        Class cls = this.f18666w;
        Object obj = this.f18667x;
        String strD = super.d();
        if (zzfutVar != null) {
            str = "inputFuture=[" + zzfutVar.toString() + "], ";
        } else {
            str = BuildConfig.FLAVOR;
        }
        if (cls == null || obj == null) {
            if (strD != null) {
                return str.concat(strD);
            }
            return null;
        }
        return str + "exceptionType=[" + cls.toString() + "], fallback=[" + obj.toString() + "]";
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    protected final void g() {
        v(this.f18665v);
        this.f18665v = null;
        this.f18666w = null;
        this.f18667x = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Throwable e10;
        zzfut zzfutVar = this.f18665v;
        Class cls = this.f18666w;
        Object obj = this.f18667x;
        if (((obj == null) || ((zzfutVar == 0) | (cls == null))) || isCancelled()) {
            return;
        }
        this.f18665v = null;
        try {
            e10 = zzfutVar instanceof zzfvm ? ((zzfvm) zzfutVar).a() : null;
        } catch (Error e11) {
            e10 = e11;
        } catch (RuntimeException e12) {
            e10 = e12;
        } catch (ExecutionException e13) {
            Throwable cause = e13.getCause();
            if (cause == null) {
                cause = new NullPointerException("Future type " + String.valueOf(zzfutVar.getClass()) + " threw " + String.valueOf(e13.getClass()) + " without a cause");
            }
            e10 = cause;
        }
        Object objO = e10 == null ? zzfuj.o(zzfutVar) : null;
        if (e10 == null) {
            h(objO);
            return;
        }
        if (!cls.isInstance(e10)) {
            w(zzfutVar);
            return;
        }
        try {
            Object objE = E(obj, e10);
            this.f18666w = null;
            this.f18667x = null;
            F(objE);
        } catch (Throwable th) {
            try {
                zzfvb.a(th);
                i(th);
            } finally {
                this.f18666w = null;
                this.f18667x = null;
            }
        }
    }
}
