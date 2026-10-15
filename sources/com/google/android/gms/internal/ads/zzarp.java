package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzarp extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f9823i;

    public zzarp(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, long j10, int i10, int i11) {
        super(zzaqxVar, "xTgGP9w4lMQ/WjLtAFn2v1JjPdma/PcJXQX8pyq+xajYX2HDrjKBZ5k/anX+M/Bo", "vRn7geI+WCeFJoZ7qQQ1ZFwlsU3+f9F9Kf66GT9NZts=", zzamvVar, i10, 25);
        this.f9823i = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        long jLongValue = ((Long) this.f9859f.invoke(null, new Object[0])).longValue();
        synchronized (this.f9858e) {
            this.f9858e.t0(jLongValue);
            long j10 = this.f9823i;
            if (j10 != 0) {
                this.f9858e.I(jLongValue - j10);
                this.f9858e.J(this.f9823i);
            }
        }
    }
}
