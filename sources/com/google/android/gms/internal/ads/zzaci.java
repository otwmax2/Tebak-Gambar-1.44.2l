package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaci implements zzzu {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzzx f8497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f8498c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8499d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8500e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzaef f8502g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzzv f8503h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private zzacl f8504i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private zzagc f8505j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzen f8496a = new zzen(6);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f8501f = -1;

    private final int b(zzzv zzzvVar) throws IOException {
        this.f8496a.c(2);
        ((zzzk) zzzvVar).k(this.f8496a.h(), 0, 2, false);
        return this.f8496a.w();
    }

    private final void c() {
        d(new zzbp[0]);
        zzzx zzzxVar = this.f8497b;
        Objects.requireNonNull(zzzxVar);
        zzzxVar.f0();
        this.f8497b.e(new zzaaw(-9223372036854775807L, 0L));
        this.f8498c = 6;
    }

    private final void d(zzbp... zzbpVarArr) {
        zzzx zzzxVar = this.f8497b;
        Objects.requireNonNull(zzzxVar);
        zzabb zzabbVarQ = zzzxVar.q(1024, 4);
        zzad zzadVar = new zzad();
        zzadVar.h0("image/jpeg");
        zzadVar.m(new zzbq(-9223372036854775807L, zzbpVarArr));
        zzabbVarQ.e(zzadVar.y());
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final boolean a(zzzv zzzvVar) throws IOException {
        if (b(zzzvVar) != 65496) {
            return false;
        }
        int iB = b(zzzvVar);
        this.f8499d = iB;
        if (iB == 65504) {
            this.f8496a.c(2);
            zzzk zzzkVar = (zzzk) zzzvVar;
            zzzkVar.k(this.f8496a.h(), 0, 2, false);
            zzzkVar.n(this.f8496a.w() - 2, false);
            iB = b(zzzvVar);
            this.f8499d = iB;
        }
        if (iB == 65505) {
            zzzk zzzkVar2 = (zzzk) zzzvVar;
            zzzkVar2.n(2, false);
            this.f8496a.c(6);
            zzzkVar2.k(this.f8496a.h(), 0, 6, false);
            if (this.f8496a.A() == 1165519206 && this.f8496a.w() == 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00e4  */
    @Override // com.google.android.gms.internal.ads.zzzu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int e(com.google.android.gms.internal.ads.zzzv r24, com.google.android.gms.internal.ads.zzaau r25) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 458
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaci.e(com.google.android.gms.internal.ads.zzzv, com.google.android.gms.internal.ads.zzaau):int");
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.f8497b = zzzxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void h(long j10, long j11) {
        if (j10 == 0) {
            this.f8498c = 0;
            this.f8505j = null;
        } else if (this.f8498c == 5) {
            zzagc zzagcVar = this.f8505j;
            Objects.requireNonNull(zzagcVar);
            zzagcVar.h(j10, j11);
        }
    }
}
