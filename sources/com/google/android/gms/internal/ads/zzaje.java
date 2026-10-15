package com.google.android.gms.internal.ads;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.tebakgambar.model.response.ApiResponse;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaje implements zzajf {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int[] f9343m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int[] f9344n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 209, 230, 253, 279, ApiResponse.STATUS_ALREADY_REGISTER, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzzx f9345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzabb f9346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzaji f9347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f9348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f9349e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzen f9350f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f9351g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzaf f9352h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f9353i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f9354j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f9355k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f9356l;

    public zzaje(zzzx zzzxVar, zzabb zzabbVar, zzaji zzajiVar) throws zzbu {
        this.f9345a = zzzxVar;
        this.f9346b = zzabbVar;
        this.f9347c = zzajiVar;
        int iMax = Math.max(1, zzajiVar.f9375c / 10);
        this.f9351g = iMax;
        zzen zzenVar = new zzen(zzajiVar.f9378f);
        zzenVar.q();
        int iQ = zzenVar.q();
        this.f9348d = iQ;
        int i10 = zzajiVar.f9374b;
        int i11 = (((zzajiVar.f9376d - (i10 * 4)) * 8) / (zzajiVar.f9377e * i10)) + 1;
        if (iQ != i11) {
            throw zzbu.a("Expected frames per block: " + i11 + "; got: " + iQ, null);
        }
        int iP = zzew.P(iMax, iQ);
        this.f9349e = new byte[zzajiVar.f9376d * iP];
        this.f9350f = new zzen(iP * (iQ + iQ) * i10);
        int i12 = ((zzajiVar.f9375c * zzajiVar.f9376d) * 8) / iQ;
        zzad zzadVar = new zzad();
        zzadVar.s("audio/raw");
        zzadVar.d0(i12);
        zzadVar.o(i12);
        zzadVar.l((iMax + iMax) * i10);
        zzadVar.e0(zzajiVar.f9374b);
        zzadVar.t(zzajiVar.f9375c);
        zzadVar.n(2);
        this.f9352h = zzadVar.y();
    }

    private final int c(int i10) {
        int i11 = this.f9347c.f9374b;
        return i10 / (i11 + i11);
    }

    private final int d(int i10) {
        return (i10 + i10) * this.f9347c.f9374b;
    }

    private final void e(int i10) {
        long jH0 = this.f9354j + zzew.h0(this.f9356l, 1000000L, this.f9347c.f9375c);
        int iD = d(i10);
        this.f9346b.f(jH0, 1, iD, this.f9355k - iD, null);
        this.f9356l += (long) i10;
        this.f9355k -= iD;
    }

    @Override // com.google.android.gms.internal.ads.zzajf
    public final void W(long j10) {
        this.f9353i = 0;
        this.f9354j = j10;
        this.f9355k = 0;
        this.f9356l = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzajf
    public final void a(int i10, long j10) {
        this.f9345a.e(new zzajl(this.f9347c, this.f9348d, i10, j10));
        this.f9346b.e(this.f9352h);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003b -> B:4:0x001f). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.zzajf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean b(com.google.android.gms.internal.ads.zzzv r21, long r22) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 341
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaje.b(com.google.android.gms.internal.ads.zzzv, long):boolean");
    }
}
