package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfvd implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @CheckForNull
    zzfvg f18754o;

    zzfvd(zzfvg zzfvgVar) {
        this.f18754o = zzfvgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfut zzfutVar;
        zzfvg zzfvgVar = this.f18754o;
        if (zzfvgVar == null || (zzfutVar = zzfvgVar.f18755v) == null) {
            return;
        }
        this.f18754o = null;
        if (zzfutVar.isDone()) {
            zzfvgVar.w(zzfutVar);
            return;
        }
        try {
            ScheduledFuture scheduledFuture = zzfvgVar.f18756w;
            zzfvgVar.f18756w = null;
            String str = "Timed out";
            if (scheduledFuture != null) {
                try {
                    long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                    if (jAbs > 10) {
                        str = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                    }
                } catch (Throwable th) {
                    zzfvgVar.i(new zzfvf(str, null));
                    throw th;
                }
            }
            zzfvgVar.i(new zzfvf(str + ": " + zzfutVar.toString(), null));
        } finally {
            zzfutVar.cancel(true);
        }
    }
}
