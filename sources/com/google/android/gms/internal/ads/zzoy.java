package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzoy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Exception f20376a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f20377b;

    public zzoy(long j10) {
    }

    public final void a() {
        this.f20376a = null;
    }

    public final void b(Exception exc) throws Exception {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.f20376a == null) {
            this.f20376a = exc;
            this.f20377b = 100 + jElapsedRealtime;
        }
        if (jElapsedRealtime >= this.f20377b) {
            Exception exc2 = this.f20376a;
            if (exc2 != exc) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(exc2, exc);
                } catch (Exception unused) {
                }
            }
            Exception exc3 = this.f20376a;
            this.f20376a = null;
            throw exc3;
        }
    }
}
