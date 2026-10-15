package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8293a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f8296d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f8297e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f8298f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f8299g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f8300h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f8301i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f8302j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final zzaag f8303k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzbq f8304l;

    private zzaah(int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, zzaag zzaagVar, zzbq zzbqVar) {
        this.f8293a = i10;
        this.f8294b = i11;
        this.f8295c = i12;
        this.f8296d = i13;
        this.f8297e = i14;
        this.f8298f = i(i14);
        this.f8299g = i15;
        this.f8300h = i16;
        this.f8301i = h(i16);
        this.f8302j = j10;
        this.f8303k = zzaagVar;
        this.f8304l = zzbqVar;
    }

    public zzaah(byte[] bArr, int i10) {
        zzem zzemVar = new zzem(bArr, bArr.length);
        zzemVar.j(i10 * 8);
        this.f8293a = zzemVar.d(16);
        this.f8294b = zzemVar.d(16);
        this.f8295c = zzemVar.d(24);
        this.f8296d = zzemVar.d(24);
        int iD = zzemVar.d(20);
        this.f8297e = iD;
        this.f8298f = i(iD);
        this.f8299g = zzemVar.d(3) + 1;
        int iD2 = zzemVar.d(5) + 1;
        this.f8300h = iD2;
        this.f8301i = h(iD2);
        this.f8302j = zzew.j0(zzemVar.d(4), zzemVar.d(32));
        this.f8303k = null;
        this.f8304l = null;
    }

    private static int h(int i10) {
        if (i10 == 8) {
            return 1;
        }
        if (i10 == 12) {
            return 2;
        }
        if (i10 == 16) {
            return 4;
        }
        if (i10 != 20) {
            return i10 != 24 ? -1 : 6;
        }
        return 5;
    }

    private static int i(int i10) {
        switch (i10) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public final long a() {
        long j10 = this.f8302j;
        if (j10 == 0) {
            return -9223372036854775807L;
        }
        return (j10 * 1000000) / ((long) this.f8297e);
    }

    public final long b(long j10) {
        return zzew.c0((j10 * ((long) this.f8297e)) / 1000000, 0L, this.f8302j - 1);
    }

    public final zzaf c(byte[] bArr, zzbq zzbqVar) {
        bArr[4] = -128;
        int i10 = this.f8296d;
        if (i10 <= 0) {
            i10 = -1;
        }
        zzbq zzbqVarD = d(zzbqVar);
        zzad zzadVar = new zzad();
        zzadVar.s("audio/flac");
        zzadVar.l(i10);
        zzadVar.e0(this.f8299g);
        zzadVar.t(this.f8297e);
        zzadVar.i(Collections.singletonList(bArr));
        zzadVar.m(zzbqVarD);
        return zzadVar.y();
    }

    public final zzbq d(zzbq zzbqVar) {
        zzbq zzbqVar2 = this.f8304l;
        return zzbqVar2 == null ? zzbqVar : zzbqVar2.w(zzbqVar);
    }

    public final zzaah e(List list) {
        return new zzaah(this.f8293a, this.f8294b, this.f8295c, this.f8296d, this.f8297e, this.f8299g, this.f8300h, this.f8302j, this.f8303k, d(new zzbq(list)));
    }

    public final zzaah f(zzaag zzaagVar) {
        return new zzaah(this.f8293a, this.f8294b, this.f8295c, this.f8296d, this.f8297e, this.f8299g, this.f8300h, this.f8302j, zzaagVar, this.f8304l);
    }

    public final zzaah g(List list) {
        return new zzaah(this.f8293a, this.f8294b, this.f8295c, this.f8296d, this.f8297e, this.f8299g, this.f8300h, this.f8302j, this.f8303k, d(zzabh.b(list)));
    }
}
