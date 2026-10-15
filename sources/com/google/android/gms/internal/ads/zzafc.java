package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzafc implements zzzu {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final zzaab f8748q = new zzaab() { // from class: com.google.android.gms.internal.ads.zzafa
        @Override // com.google.android.gms.internal.ads.zzaab
        public final /* synthetic */ zzzu[] a(Uri uri, Map map) {
            return zzaaa.a(this, uri, map);
        }

        @Override // com.google.android.gms.internal.ads.zzaab
        public final zzzu[] zza() {
            zzaab zzaabVar = zzafc.f8748q;
            return new zzzu[]{new zzafc(0)};
        }
    };

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzadm f8749r = new zzadm() { // from class: com.google.android.gms.internal.ads.zzafb
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzen f8750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzaan f8751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzaaj f8752c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzaal f8753d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzabb f8754e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzzx f8755f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzabb f8756g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzabb f8757h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f8758i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private zzbq f8759j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f8760k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f8761l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f8762m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f8763n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzafe f8764o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f8765p;

    public zzafc() {
        this(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:123:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0169  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput", "realTrackOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int c(com.google.android.gms.internal.ads.zzzv r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 625
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafc.c(com.google.android.gms.internal.ads.zzzv):int");
    }

    private final long d(long j10) {
        return this.f8760k + ((j10 * 1000000) / ((long) this.f8751b.f8321d));
    }

    private final zzafe f(zzzv zzzvVar, boolean z10) throws IOException {
        ((zzzk) zzzvVar).k(this.f8750a.h(), 0, 4, false);
        this.f8750a.f(0);
        this.f8751b.a(this.f8750a.m());
        return new zzaex(zzzvVar.d(), zzzvVar.c(), this.f8751b, false);
    }

    private static boolean i(int i10, long j10) {
        return ((long) (i10 & (-128000))) == (j10 & (-128000));
    }

    private final boolean j(zzzv zzzvVar) throws IOException {
        zzafe zzafeVar = this.f8764o;
        if (zzafeVar != null) {
            long jZzb = zzafeVar.zzb();
            if (jZzb != -1 && zzzvVar.b() > jZzb - 4) {
                return true;
            }
        }
        try {
            return !zzzvVar.k(this.f8750a.h(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private final boolean k(zzzv zzzvVar, boolean z10) throws Throwable {
        int i10;
        int iB;
        int iB2;
        zzzvVar.h();
        if (zzzvVar.c() == 0) {
            zzbq zzbqVarA = this.f8753d.a(zzzvVar, null);
            this.f8759j = zzbqVarA;
            if (zzbqVarA != null) {
                this.f8752c.b(zzbqVarA);
            }
            iB = (int) zzzvVar.b();
            if (!z10) {
                ((zzzk) zzzvVar).o(iB, false);
            }
            i10 = 0;
        } else {
            i10 = 0;
            iB = 0;
        }
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (!j(zzzvVar)) {
                this.f8750a.f(0);
                int iM = this.f8750a.m();
                if ((i10 == 0 || i(iM, i10)) && (iB2 = zzaao.b(iM)) != -1) {
                    i11++;
                    if (i11 != 1) {
                        if (i11 == 4) {
                            break;
                        }
                    } else {
                        this.f8751b.a(iM);
                        i10 = iM;
                    }
                    ((zzzk) zzzvVar).n(iB2 - 4, false);
                } else {
                    int i13 = i12 + 1;
                    if (i12 == (true != z10 ? 131072 : 32768)) {
                        if (z10) {
                            return false;
                        }
                        throw zzbu.a("Searched too many bytes.", null);
                    }
                    if (z10) {
                        zzzvVar.h();
                        ((zzzk) zzzvVar).n(iB + i13, false);
                    } else {
                        ((zzzk) zzzvVar).o(1, false);
                    }
                    i12 = i13;
                    i10 = 0;
                    i11 = 0;
                }
            } else if (i11 <= 0) {
                throw new EOFException();
            }
        }
        if (z10) {
            ((zzzk) zzzvVar).o(iB + i12, false);
        } else {
            zzzvVar.h();
        }
        this.f8758i = i10;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final boolean a(zzzv zzzvVar) throws IOException {
        return k(zzzvVar, true);
    }

    public final void b() {
        this.f8765p = true;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final int e(zzzv zzzvVar, zzaau zzaauVar) throws Throwable {
        zzdl.b(this.f8756g);
        int i10 = zzew.f17494a;
        int iC = c(zzzvVar);
        if (iC == -1 && (this.f8764o instanceof zzaey)) {
            if (this.f8764o.b() != d(this.f8761l)) {
                throw null;
            }
        }
        return iC;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.f8755f = zzzxVar;
        zzabb zzabbVarQ = zzzxVar.q(0, 1);
        this.f8756g = zzabbVarQ;
        this.f8757h = zzabbVarQ;
        this.f8755f.f0();
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void h(long j10, long j11) {
        this.f8758i = 0;
        this.f8760k = -9223372036854775807L;
        this.f8761l = 0L;
        this.f8763n = 0;
        zzafe zzafeVar = this.f8764o;
        if (zzafeVar instanceof zzaey) {
            throw null;
        }
    }

    public zzafc(int i10) {
        this.f8750a = new zzen(10);
        this.f8751b = new zzaan();
        this.f8752c = new zzaaj();
        this.f8760k = -9223372036854775807L;
        this.f8753d = new zzaal();
        zzzt zzztVar = new zzzt();
        this.f8754e = zzztVar;
        this.f8757h = zzztVar;
    }
}
