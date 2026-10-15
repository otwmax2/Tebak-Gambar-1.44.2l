package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzaha extends zzagy {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private zzagz f8998n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f8999o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f9000p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzabg f9001q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private zzabe f9002r;

    zzaha() {
    }

    @Override // com.google.android.gms.internal.ads.zzagy
    protected final long a(zzen zzenVar) {
        if ((zzenVar.h()[0] & 1) == 1) {
            return -1L;
        }
        byte b10 = zzenVar.h()[0];
        zzagz zzagzVar = this.f8998n;
        zzdl.b(zzagzVar);
        int i10 = !zzagzVar.f8995d[(b10 >> 1) & (255 >>> (8 - zzagzVar.f8996e))].f8374a ? zzagzVar.f8992a.f8379e : zzagzVar.f8992a.f8380f;
        int i11 = this.f9000p ? (this.f8999o + i10) / 4 : 0;
        if (zzenVar.j() < zzenVar.l() + 4) {
            byte[] bArrCopyOf = Arrays.copyOf(zzenVar.h(), zzenVar.l() + 4);
            zzenVar.d(bArrCopyOf, bArrCopyOf.length);
        } else {
            zzenVar.e(zzenVar.l() + 4);
        }
        long j10 = i11;
        byte[] bArrH = zzenVar.h();
        bArrH[zzenVar.l() - 4] = (byte) (j10 & 255);
        bArrH[zzenVar.l() - 3] = (byte) ((j10 >>> 8) & 255);
        bArrH[zzenVar.l() - 2] = (byte) ((j10 >>> 16) & 255);
        bArrH[zzenVar.l() - 1] = (byte) ((j10 >>> 24) & 255);
        this.f9000p = true;
        this.f8999o = i10;
        return j10;
    }

    @Override // com.google.android.gms.internal.ads.zzagy
    protected final void b(boolean z10) {
        super.b(z10);
        if (z10) {
            this.f8998n = null;
            this.f9001q = null;
            this.f9002r = null;
        }
        this.f8999o = 0;
        this.f9000p = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0196  */
    @Override // com.google.android.gms.internal.ads.zzagy
    @org.checkerframework.checker.nullness.qual.EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final boolean c(com.google.android.gms.internal.ads.zzen r26, long r27, com.google.android.gms.internal.ads.zzagv r29) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1113
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaha.c(com.google.android.gms.internal.ads.zzen, long, com.google.android.gms.internal.ads.zzagv):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzagy
    protected final void h(long j10) {
        super.h(j10);
        this.f9000p = j10 != 0;
        zzabg zzabgVar = this.f9001q;
        this.f8999o = zzabgVar != null ? zzabgVar.f8379e : 0;
    }
}
