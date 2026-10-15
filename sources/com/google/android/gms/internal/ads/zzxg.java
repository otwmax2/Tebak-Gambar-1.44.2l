package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzxg {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzxa f20998d = new zzxa(0, -9223372036854775807L, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzxa f20999e = new zzxa(1, -9223372036854775807L, null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzxa f21000f = new zzxa(2, -9223372036854775807L, null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final zzxa f21001g = new zzxa(3, -9223372036854775807L, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExecutorService f21002a = zzew.r("ExoPlayer:Loader:ProgressiveMediaPeriod");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzxb f21003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private IOException f21004c;

    public zzxg(String str) {
    }

    public static zzxa b(boolean z10, long j10) {
        return new zzxa(z10 ? 1 : 0, j10, null);
    }

    public final long a(zzxc zzxcVar, zzwy zzwyVar, int i10) {
        Looper looperMyLooper = Looper.myLooper();
        zzdl.b(looperMyLooper);
        this.f21004c = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new zzxb(this, looperMyLooper, zzxcVar, zzwyVar, i10, jElapsedRealtime).c(0L);
        return jElapsedRealtime;
    }

    public final void g() {
        zzxb zzxbVar = this.f21003b;
        zzdl.b(zzxbVar);
        zzxbVar.a(false);
    }

    public final void h() {
        this.f21004c = null;
    }

    public final void i(int i10) throws IOException {
        IOException iOException = this.f21004c;
        if (iOException != null) {
            throw iOException;
        }
        zzxb zzxbVar = this.f21003b;
        if (zzxbVar != null) {
            zzxbVar.b(i10);
        }
    }

    public final void j(zzxd zzxdVar) {
        zzxb zzxbVar = this.f21003b;
        if (zzxbVar != null) {
            zzxbVar.a(true);
        }
        this.f21002a.execute(new zzxe(zzxdVar));
        this.f21002a.shutdown();
    }

    public final boolean k() {
        return this.f21004c != null;
    }

    public final boolean l() {
        return this.f21003b != null;
    }
}
