package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzcn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzcn f13536a = new zzci();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f13537b = zzew.p(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f13538c = zzew.p(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f13539d = zzew.p(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzn f13540e = new zzn() { // from class: com.google.android.gms.internal.ads.zzch
    };

    protected zzcn() {
    }

    public abstract int a(Object obj);

    public abstract int b();

    public abstract int c();

    public abstract zzck d(int i10, zzck zzckVar, boolean z10);

    public abstract zzcm e(int i10, zzcm zzcmVar, long j10);

    public final boolean equals(Object obj) {
        int iH;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcn)) {
            return false;
        }
        zzcn zzcnVar = (zzcn) obj;
        if (zzcnVar.c() == c() && zzcnVar.b() == b()) {
            zzcm zzcmVar = new zzcm();
            zzck zzckVar = new zzck();
            zzcm zzcmVar2 = new zzcm();
            zzck zzckVar2 = new zzck();
            for (int i10 = 0; i10 < c(); i10++) {
                if (!e(i10, zzcmVar, 0L).equals(zzcnVar.e(i10, zzcmVar2, 0L))) {
                    return false;
                }
            }
            for (int i11 = 0; i11 < b(); i11++) {
                if (!d(i11, zzckVar, true).equals(zzcnVar.d(i11, zzckVar2, true))) {
                    return false;
                }
            }
            int iG = g(true);
            if (iG == zzcnVar.g(true) && (iH = h(true)) == zzcnVar.h(true)) {
                while (iG != iH) {
                    int iJ = j(iG, 0, true);
                    if (iJ != zzcnVar.j(iG, 0, true)) {
                        return false;
                    }
                    iG = iJ;
                }
                return true;
            }
        }
        return false;
    }

    public abstract Object f(int i10);

    public int g(boolean z10) {
        return o() ? -1 : 0;
    }

    public int h(boolean z10) {
        if (o()) {
            return -1;
        }
        return c() - 1;
    }

    public final int hashCode() {
        zzcm zzcmVar = new zzcm();
        zzck zzckVar = new zzck();
        int iC = c() + 217;
        for (int i10 = 0; i10 < c(); i10++) {
            iC = (iC * 31) + e(i10, zzcmVar, 0L).hashCode();
        }
        int iB = (iC * 31) + b();
        for (int i11 = 0; i11 < b(); i11++) {
            iB = (iB * 31) + d(i11, zzckVar, true).hashCode();
        }
        int iG = g(true);
        while (iG != -1) {
            iB = (iB * 31) + iG;
            iG = j(iG, 0, true);
        }
        return iB;
    }

    public final int i(int i10, zzck zzckVar, zzcm zzcmVar, int i11, boolean z10) {
        int i12 = d(i10, zzckVar, false).f13166c;
        if (e(i12, zzcmVar, 0L).f13475n != i10) {
            return i10 + 1;
        }
        int iJ = j(i12, i11, z10);
        if (iJ == -1) {
            return -1;
        }
        return e(iJ, zzcmVar, 0L).f13474m;
    }

    public int j(int i10, int i11, boolean z10) {
        if (i11 == 0) {
            if (i10 == h(z10)) {
                return -1;
            }
            return i10 + 1;
        }
        if (i11 == 1) {
            return i10;
        }
        if (i11 == 2) {
            return i10 == h(z10) ? g(z10) : i10 + 1;
        }
        throw new IllegalStateException();
    }

    public int k(int i10, int i11, boolean z10) {
        if (i10 == g(false)) {
            return -1;
        }
        return i10 - 1;
    }

    public final Pair l(zzcm zzcmVar, zzck zzckVar, int i10, long j10) {
        Pair pairM = m(zzcmVar, zzckVar, i10, j10, 0L);
        Objects.requireNonNull(pairM);
        return pairM;
    }

    public final Pair m(zzcm zzcmVar, zzck zzckVar, int i10, long j10, long j11) {
        zzdl.a(i10, 0, c());
        e(i10, zzcmVar, j11);
        if (j10 == -9223372036854775807L) {
            long j12 = zzcmVar.f13472k;
            j10 = 0;
        }
        int i11 = zzcmVar.f13474m;
        d(i11, zzckVar, false);
        while (i11 < zzcmVar.f13475n) {
            long j13 = zzckVar.f13168e;
            if (j10 == 0) {
                break;
            }
            int i12 = i11 + 1;
            long j14 = d(i12, zzckVar, false).f13168e;
            if (j10 < 0) {
                break;
            }
            i11 = i12;
        }
        d(i11, zzckVar, true);
        long j15 = zzckVar.f13168e;
        long j16 = zzckVar.f13167d;
        if (j16 != -9223372036854775807L) {
            j10 = Math.min(j10, j16 - 1);
        }
        long jMax = Math.max(0L, j10);
        Object obj = zzckVar.f13165b;
        Objects.requireNonNull(obj);
        return Pair.create(obj, Long.valueOf(jMax));
    }

    public zzck n(Object obj, zzck zzckVar) {
        return d(a(obj), zzckVar, true);
    }

    public final boolean o() {
        return c() == 0;
    }
}
