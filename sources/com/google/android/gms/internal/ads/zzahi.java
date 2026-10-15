package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzahi implements zzzu {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final zzaab f9038j = new zzaab() { // from class: com.google.android.gms.internal.ads.zzahh
        @Override // com.google.android.gms.internal.ads.zzaab
        public final /* synthetic */ zzzu[] a(Uri uri, Map map) {
            return zzaaa.a(this, uri, map);
        }

        @Override // com.google.android.gms.internal.ads.zzaab
        public final zzzu[] zza() {
            zzaab zzaabVar = zzahi.f9038j;
            return new zzzu[]{new zzahi(0)};
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzahj f9039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f9040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzen f9041c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzem f9042d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzzx f9043e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f9044f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f9045g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9046h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f9047i;

    public zzahi() {
        this(0);
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final boolean a(zzzv zzzvVar) throws IOException {
        int i10 = 0;
        while (true) {
            zzzk zzzkVar = (zzzk) zzzvVar;
            zzzkVar.k(this.f9041c.h(), 0, 10, false);
            this.f9041c.f(0);
            if (this.f9041c.u() != 4801587) {
                break;
            }
            this.f9041c.g(3);
            int iR = this.f9041c.r();
            i10 += iR + 10;
            zzzkVar.n(iR, false);
        }
        zzzvVar.h();
        zzzk zzzkVar2 = (zzzk) zzzvVar;
        zzzkVar2.n(i10, false);
        if (this.f9045g == -1) {
            this.f9045g = i10;
        }
        int i11 = i10;
        int i12 = 0;
        int i13 = 0;
        do {
            zzzkVar2.k(this.f9041c.h(), 0, 2, false);
            this.f9041c.f(0);
            if (zzahj.f(this.f9041c.w())) {
                i12++;
                if (i12 >= 4 && i13 > 188) {
                    return true;
                }
                zzzkVar2.k(this.f9041c.h(), 0, 4, false);
                this.f9042d.j(14);
                int iD = this.f9042d.d(13);
                if (iD <= 6) {
                    i11++;
                    zzzvVar.h();
                    zzzkVar2.n(i11, false);
                } else {
                    zzzkVar2.n(iD - 6, false);
                    i13 += iD;
                }
            } else {
                i11++;
                zzzvVar.h();
                zzzkVar2.n(i11, false);
            }
            i12 = 0;
            i13 = 0;
        } while (i11 - i10 < 8192);
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final int e(zzzv zzzvVar, zzaau zzaauVar) throws IOException {
        zzdl.b(this.f9043e);
        int iE = zzzvVar.e(this.f9040b.h(), 0, 2048);
        if (!this.f9047i) {
            this.f9043e.e(new zzaaw(-9223372036854775807L, 0L));
            this.f9047i = true;
        }
        if (iE == -1) {
            return -1;
        }
        this.f9040b.f(0);
        this.f9040b.e(iE);
        if (!this.f9046h) {
            this.f9039a.e(this.f9044f, 4);
            this.f9046h = true;
        }
        this.f9039a.c(this.f9040b);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.f9043e = zzzxVar;
        this.f9039a.d(zzzxVar, new zzaiz(Integer.MIN_VALUE, 0, 1));
        zzzxVar.f0();
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void h(long j10, long j11) {
        this.f9046h = false;
        this.f9039a.b();
        this.f9044f = j11;
    }

    public zzahi(int i10) {
        this.f9039a = new zzahj(true, null);
        this.f9040b = new zzen(2048);
        this.f9045g = -1L;
        zzen zzenVar = new zzen(10);
        this.f9041c = zzenVar;
        byte[] bArrH = zzenVar.h();
        this.f9042d = new zzem(bArrH, bArrH.length);
    }
}
