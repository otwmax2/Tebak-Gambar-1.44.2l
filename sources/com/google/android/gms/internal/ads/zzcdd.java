package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.util.Clock;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcdd extends zzccu implements zzcaz {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private zzcba f11886r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f11887s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f11888t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f11889u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private zzccm f11890v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f11891w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f11892x;

    public zzcdd(zzcbj zzcbjVar, zzcbi zzcbiVar) {
        super(zzcbjVar);
        zzcdv zzcdvVar = new zzcdv(zzcbjVar.getContext(), zzcbiVar, (zzcbj) this.f11864q.get());
        zzbza.f("ExoPlayerAdapter initialized.");
        this.f11886r = zzcdvVar;
        zzcdvVar.B(this);
    }

    protected static final String A(String str) {
        return "cache:".concat(String.valueOf(zzbyt.j(str)));
    }

    private static String B(String str, Exception exc) {
        return str + "/" + exc.getClass().getCanonicalName() + CertificateUtil.DELIMITER + exc.getMessage();
    }

    private final void C(long j10) {
        com.google.android.gms.ads.internal.util.zzs.f6190i.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcdc
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f11885o.z();
            }
        }, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzcaz
    public final void a(String str, Exception exc) {
        zzbza.h("Precache exception", exc);
        com.google.android.gms.ads.internal.zzt.q().t(exc, "VideoStreamExoPlayerCache.onException");
    }

    @Override // com.google.android.gms.internal.ads.zzcaz
    public final void b(final boolean z10, final long j10) {
        final zzcbj zzcbjVar = (zzcbj) this.f11864q.get();
        if (zzcbjVar != null) {
            zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcdb
                @Override // java.lang.Runnable
                public final void run() {
                    zzcbjVar.Y0(z10, j10);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccu, com.google.android.gms.common.api.Releasable
    public final void c() {
        zzcba zzcbaVar = this.f11886r;
        if (zzcbaVar != null) {
            zzcbaVar.B(null);
            this.f11886r.x();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaz
    public final void d(String str, Exception exc) {
        zzbza.h("Precache error", exc);
        com.google.android.gms.ads.internal.zzt.q().t(exc, "VideoStreamExoPlayerCache.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcaz
    public final void e(int i10, int i11) {
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final void g() {
        synchronized (this) {
            this.f11888t = true;
            notify();
            c();
        }
        String str = this.f11887s;
        if (str != null) {
            i(this.f11887s, A(str), "externalAbort", "Programmatic precache abort.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaz
    public final void l0(int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final void p(int i10) {
        this.f11886r.z(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final void r(int i10) {
        this.f11886r.A(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final void s(int i10) {
        this.f11886r.C(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcaz
    public final void t() {
        zzbza.g("Precache onRenderedFirstFrame");
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final void u(int i10) {
        this.f11886r.D(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final boolean v(String str) {
        return w(str, new String[]{str});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.zzcbj] */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r15v0, types: [com.google.android.gms.internal.ads.zzccu, com.google.android.gms.internal.ads.zzcdd] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [com.google.android.gms.internal.ads.zzcdd] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r17v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18, types: [long] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.gms.internal.ads.zzccu] */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v11, types: [int] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // com.google.android.gms.internal.ads.zzccu
    public final boolean w(String str, String[] strArr) throws Throwable {
        ?? r62;
        String str2;
        ?? r52;
        long j10;
        long j11;
        long j12;
        ?? r12;
        long j13;
        long j14;
        String str3;
        long j15;
        ?? r13;
        long j16;
        ?? r15 = this;
        ?? r132 = str;
        r15.f11887s = r132;
        ?? r17 = "error";
        String strA = A(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i10 = 0; i10 < strArr.length; i10++) {
                uriArr[i10] = Uri.parse(strArr[i10]);
            }
            r15.f11886r.v(uriArr, r15.f11863p);
            ?? r02 = (zzcbj) r15.f11864q.get();
            if (r02 != 0) {
                r02.y(strA, r15);
            }
            Clock clockB = com.google.android.gms.ads.internal.zzt.b();
            long jA = clockB.a();
            long jLongValue = ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10400w)).longValue();
            long jLongValue2 = ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10389v)).longValue() * 1000;
            long jIntValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10378u)).intValue();
            boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G1)).booleanValue();
            ?? r14 = -1;
            long j17 = jIntValue;
            r132 = r132;
            r15 = r15;
            while (true) {
                synchronized (this) {
                    try {
                        if (clockB.a() - jA > jLongValue2) {
                            throw new IOException("Timeout reached. Limit: " + jLongValue2 + " ms");
                        }
                        if (r15.f11888t) {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                        if (r15.f11889u) {
                            break;
                        }
                        if (!r15.f11886r.K()) {
                            throw new IOException("ExoPlayer was released during preloading.");
                        }
                        long jT = r15.f11886r.T();
                        if (jT > 0) {
                            long jP = r15.f11886r.P();
                            if (jP != r14) {
                                try {
                                    j13 = j17;
                                    j16 = jT;
                                    j11 = jLongValue2;
                                    j14 = jLongValue;
                                    str3 = strA;
                                } catch (Throwable th) {
                                    th = th;
                                    r52 = this;
                                    r62 = str;
                                    str2 = strA;
                                }
                                try {
                                    n(str, strA, jP, j16, jP > 0, zBooleanValue ? r15.f11886r.r() : -1L, zBooleanValue ? r15.f11886r.R() : -1L, zBooleanValue ? r15.f11886r.s() : -1L, zzcba.M(), zzcba.O());
                                    r13 = jP;
                                    j15 = jT;
                                    r62 = j16;
                                } catch (Throwable th2) {
                                    th = th2;
                                    r52 = this;
                                    r62 = str;
                                    str2 = str3;
                                    try {
                                        throw th;
                                    } catch (Exception e10) {
                                        e = e10;
                                        ?? r16 = r17;
                                        zzbza.g("Failed to preload url " + r62 + " Exception: " + e.getMessage());
                                        com.google.android.gms.ads.internal.zzt.q().t(e, "VideoStreamExoPlayerCache.preload");
                                        c();
                                        r52.i(r62, str2, r16, B(r16, e));
                                        return false;
                                    }
                                }
                            } else {
                                j13 = j17;
                                j11 = jLongValue2;
                                j14 = jLongValue;
                                str3 = strA;
                                j15 = jT;
                                r13 = r14;
                                r62 = j17;
                            }
                            r52 = (jP > j15 ? 1 : (jP == j15 ? 0 : -1));
                            if (r52 >= 0) {
                                l(str, str3, j15);
                            } else {
                                try {
                                    zzcdd zzcddVar = this;
                                    r62 = str;
                                    str2 = str3;
                                    if (zzcddVar.f11886r.Q() < j13 || jP <= 0) {
                                        j12 = j14;
                                        r12 = r13;
                                        r52 = zzcddVar;
                                        j10 = j13;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    throw th;
                                }
                            }
                        } else {
                            j10 = j17;
                            j11 = jLongValue2;
                            r62 = r132;
                            str2 = strA;
                            r52 = r15;
                            j12 = jLongValue;
                            r12 = r14;
                        }
                        try {
                            try {
                                r52.wait(j12);
                            } catch (InterruptedException unused) {
                                throw new IOException("Wait interrupted.");
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            r17 = r12;
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        r62 = r132;
                        str2 = strA;
                        r52 = r15;
                    }
                }
                jLongValue = j12;
                r15 = r52;
                r132 = r62;
                strA = str2;
                j17 = j10;
                jLongValue2 = j11;
                r14 = r12;
            }
            return true;
        } catch (Exception e11) {
            e = e11;
            r62 = r132;
            str2 = strA;
            r52 = r15;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final boolean x(String str, String[] strArr, zzccm zzccmVar) {
        this.f11887s = str;
        this.f11890v = zzccmVar;
        String strA = A(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i10 = 0; i10 < strArr.length; i10++) {
                uriArr[i10] = Uri.parse(strArr[i10]);
            }
            this.f11886r.v(uriArr, this.f11863p);
            zzcbj zzcbjVar = (zzcbj) this.f11864q.get();
            if (zzcbjVar != null) {
                zzcbjVar.y(strA, this);
            }
            this.f11891w = com.google.android.gms.ads.internal.zzt.b().a();
            this.f11892x = -1L;
            C(0L);
            return true;
        } catch (Exception e10) {
            zzbza.g("Failed to preload url " + str + " Exception: " + e10.getMessage());
            com.google.android.gms.ads.internal.zzt.q().t(e10, "VideoStreamExoPlayerCache.preload");
            c();
            i(str, strA, "error", B("error", e10));
            return false;
        }
    }

    public final zzcba y() {
        synchronized (this) {
            this.f11889u = true;
            notify();
        }
        this.f11886r.B(null);
        zzcba zzcbaVar = this.f11886r;
        this.f11886r = null;
        return zzcbaVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22, types: [com.google.android.gms.internal.ads.zzccu, com.google.android.gms.internal.ads.zzcdd] */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26, types: [com.google.android.gms.internal.ads.zzcdd] */
    /* JADX WARN: Type inference failed for: r2v31 */
    final /* synthetic */ void z() throws Throwable {
        String str;
        zzcdd zzcddVarBooleanValue;
        zzcdd zzcddVar;
        zzbap zzbapVarC;
        long jLongValue;
        long jIntValue;
        zzcdd zzcddVar2;
        long j10;
        long j11;
        String str2;
        long j12;
        String strA = A(this.f11887s);
        Object obj = "error";
        try {
            zzbaj zzbajVar = zzbar.f10389v;
            zzbapVarC = com.google.android.gms.ads.internal.client.zzba.c();
            jLongValue = ((Long) zzbapVarC.b(zzbajVar)).longValue() * 1000;
            jIntValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10378u)).intValue();
            zzcddVarBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G1)).booleanValue();
            try {
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e10) {
            e = e10;
            str = strA;
            zzcddVarBooleanValue = this;
        }
        synchronized (this) {
            try {
                int i10 = ((com.google.android.gms.ads.internal.zzt.b().a() - this.f11891w) > jLongValue ? 1 : ((com.google.android.gms.ads.internal.zzt.b().a() - this.f11891w) == jLongValue ? 0 : -1));
                if (i10 <= 0) {
                    try {
                        if (this.f11888t) {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                        if (!this.f11889u) {
                            if (!this.f11886r.K()) {
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            long jT = this.f11886r.T();
                            if (jT > 0) {
                                long jP = this.f11886r.P();
                                if (jP != this.f11892x) {
                                    try {
                                        j11 = jIntValue;
                                        str2 = strA;
                                        try {
                                            n(this.f11887s, strA, jP, jT, jP > 0, zzcddVarBooleanValue != 0 ? this.f11886r.r() : -1L, zzcddVarBooleanValue != 0 ? this.f11886r.R() : -1L, zzcddVarBooleanValue != 0 ? this.f11886r.s() : -1L, zzcba.M(), zzcba.O());
                                            zzcddVarBooleanValue = this;
                                            j10 = jP;
                                            try {
                                                zzcddVarBooleanValue.f11892x = j10;
                                                j12 = jT;
                                                zzcddVarBooleanValue = zzcddVarBooleanValue;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                str = str2;
                                                throw th;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            zzcddVarBooleanValue = this;
                                            str = str2;
                                            throw th;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        zzcddVarBooleanValue = this;
                                        str = strA;
                                        throw th;
                                    }
                                } else {
                                    j10 = jP;
                                    j11 = jIntValue;
                                    str2 = strA;
                                    zzcddVarBooleanValue = this;
                                    j12 = jT;
                                }
                                if (j10 >= j12) {
                                    zzcddVarBooleanValue.l(zzcddVarBooleanValue.f11887s, str2, j12);
                                    zzcddVar = zzcddVarBooleanValue;
                                } else {
                                    long jQ = zzcddVarBooleanValue.f11886r.Q();
                                    zzcddVar2 = zzcddVarBooleanValue;
                                    if (jQ >= j11) {
                                        zzcddVar2 = zzcddVarBooleanValue;
                                        if (j10 > 0) {
                                            zzcddVar = zzcddVarBooleanValue;
                                        }
                                    }
                                }
                            } else {
                                zzcddVar2 = this;
                            }
                            zzcddVar2.C(((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10400w)).longValue());
                            return;
                        }
                        zzcddVar = this;
                        com.google.android.gms.ads.internal.zzt.A().i(zzcddVar.f11890v);
                    } catch (Throwable th5) {
                        th = th5;
                        obj = zzbapVarC;
                        str = i10;
                    }
                } else {
                    str = strA;
                    zzcddVarBooleanValue = this;
                    try {
                        throw new IOException("Timeout reached. Limit: " + jLongValue + " ms");
                    } catch (Throwable th6) {
                        th = th6;
                        obj = "downloadTimeout";
                    }
                }
            } catch (Throwable th7) {
                th = th7;
                str = strA;
                zzcddVarBooleanValue = this;
            }
            try {
                throw th;
            } catch (Exception e11) {
                e = e11;
                String str3 = obj;
                zzbza.g("Failed to preload url " + zzcddVarBooleanValue.f11887s + " Exception: " + e.getMessage());
                com.google.android.gms.ads.internal.zzt.q().t(e, "VideoStreamExoPlayerCache.preload");
                c();
                zzcddVarBooleanValue.i(zzcddVarBooleanValue.f11887s, str, str3, B(str3, e));
                zzcddVar = zzcddVarBooleanValue;
                com.google.android.gms.ads.internal.zzt.A().i(zzcddVar.f11890v);
            }
        }
    }
}
