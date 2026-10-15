package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcdj implements zzfg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfg f11938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f11939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfg f11940c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f11941d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Uri f11942e;

    zzcdj(zzfg zzfgVar, int i10, zzfg zzfgVar2) {
        this.f11938a = zzfgVar;
        this.f11939b = i10;
        this.f11940c = zzfgVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        return this.f11942e;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Map b() {
        return zzfqn.d();
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void d() throws IOException {
        this.f11938a.d();
        this.f11940c.d();
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        long j10 = this.f11941d;
        long j11 = this.f11939b;
        if (j10 < j11) {
            int iE = this.f11938a.e(bArr, i10, (int) Math.min(i11, j11 - j10));
            long j12 = this.f11941d + ((long) iE);
            this.f11941d = j12;
            i12 = iE;
            j10 = j12;
        } else {
            i12 = 0;
        }
        if (j10 < this.f11939b) {
            return i12;
        }
        int iE2 = this.f11940c.e(bArr, i10 + i12, i11 - i12);
        int i13 = i12 + iE2;
        this.f11941d += (long) iE2;
        return i13;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void f(zzgi zzgiVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final long j(zzfl zzflVar) throws IOException {
        zzfl zzflVar2;
        this.f11942e = zzflVar.f18368a;
        long j10 = zzflVar.f18373f;
        long j11 = this.f11939b;
        zzfl zzflVar3 = null;
        if (j10 >= j11) {
            zzflVar2 = null;
        } else {
            long j12 = zzflVar.f18374g;
            zzflVar2 = new zzfl(zzflVar.f18368a, null, j10, j10, j12 != -1 ? Math.min(j12, j11 - j10) : j11 - j10, null, 0);
        }
        long j13 = zzflVar.f18374g;
        if (j13 == -1 || zzflVar.f18373f + j13 > this.f11939b) {
            long jMax = Math.max(this.f11939b, zzflVar.f18373f);
            long j14 = zzflVar.f18374g;
            zzflVar3 = new zzfl(zzflVar.f18368a, null, jMax, jMax, j14 != -1 ? Math.min(j14, (zzflVar.f18373f + j14) - this.f11939b) : -1L, null, 0);
        }
        long j15 = zzflVar2 != null ? this.f11938a.j(zzflVar2) : 0L;
        long j16 = zzflVar3 != null ? this.f11940c.j(zzflVar3) : 0L;
        this.f11941d = zzflVar.f18373f;
        if (j15 == -1 || j16 == -1) {
            return -1L;
        }
        return j15 + j16;
    }
}
