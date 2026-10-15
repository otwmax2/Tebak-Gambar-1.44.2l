package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzabo implements zzzu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f8409c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzabp f8411e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f8414h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private zzabr f8415i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f8419m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f8420n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzen f8407a = new zzen(12);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzabn f8408b = new zzabn(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzzx f8410d = new zzzs();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzabr[] f8413g = new zzabr[0];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f8417k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f8418l = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f8416j = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f8412f = -9223372036854775807L;

    private final zzabr c(int i10) {
        for (zzabr zzabrVar : this.f8413g) {
            if (zzabrVar.g(i10)) {
                return zzabrVar;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final boolean a(zzzv zzzvVar) throws IOException {
        ((zzzk) zzzvVar).k(this.f8407a.h(), 0, 12, false);
        this.f8407a.f(0);
        if (this.f8407a.o() != 1179011410) {
            return false;
        }
        this.f8407a.g(4);
        return this.f8407a.o() == 541677121;
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x030e  */
    @Override // com.google.android.gms.internal.ads.zzzu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int e(com.google.android.gms.internal.ads.zzzv r23, com.google.android.gms.internal.ads.zzaau r24) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 972
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabo.e(com.google.android.gms.internal.ads.zzzv, com.google.android.gms.internal.ads.zzaau):int");
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.f8409c = 0;
        this.f8410d = zzzxVar;
        this.f8414h = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void h(long j10, long j11) {
        int i10;
        this.f8414h = -1L;
        this.f8415i = null;
        for (zzabr zzabrVar : this.f8413g) {
            zzabrVar.f(j10);
        }
        if (j10 != 0) {
            i10 = 6;
        } else {
            if (this.f8413g.length == 0) {
                this.f8409c = 0;
                return;
            }
            i10 = 3;
        }
        this.f8409c = i10;
    }
}
