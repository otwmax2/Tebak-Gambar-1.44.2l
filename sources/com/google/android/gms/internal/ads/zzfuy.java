package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzfsx;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfuy extends zzfsx.zzi implements Runnable {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Runnable f18752v;

    public zzfuy(Runnable runnable) {
        Objects.requireNonNull(runnable);
        this.f18752v = runnable;
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    protected final String d() {
        return "task=[" + this.f18752v.toString() + "]";
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f18752v.run();
        } catch (Error | RuntimeException e10) {
            i(e10);
            throw e10;
        }
    }
}
