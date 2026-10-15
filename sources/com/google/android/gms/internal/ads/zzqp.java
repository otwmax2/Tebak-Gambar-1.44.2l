package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzqp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f20496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f20497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f20498c;

    zzqp() {
    }

    private final long d(long j10) {
        return this.f20496a + Math.max(0L, ((this.f20497b - 529) * 1000000) / j10);
    }

    public final long a(zzaf zzafVar) {
        return d(zzafVar.f8745z);
    }

    public final long b(zzaf zzafVar, zzgr zzgrVar) {
        if (this.f20497b == 0) {
            this.f20496a = zzgrVar.f19509e;
        }
        if (this.f20498c) {
            return zzgrVar.f19509e;
        }
        ByteBuffer byteBuffer = zzgrVar.f19507c;
        Objects.requireNonNull(byteBuffer);
        int i10 = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            i10 = (i10 << 8) | (byteBuffer.get(i11) & 255);
        }
        int iC = zzaao.c(i10);
        if (iC != -1) {
            long jD = d(zzafVar.f8745z);
            this.f20497b += (long) iC;
            return jD;
        }
        this.f20498c = true;
        this.f20497b = 0L;
        this.f20496a = zzgrVar.f19509e;
        zzee.e("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
        return zzgrVar.f19509e;
    }

    public final void c() {
        this.f20496a = 0L;
        this.f20497b = 0L;
        this.f20498c = false;
    }
}
