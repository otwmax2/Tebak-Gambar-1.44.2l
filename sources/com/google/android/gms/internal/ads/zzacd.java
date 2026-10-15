package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzacd implements zzzu {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final zzaab f8469q = new zzaab() { // from class: com.google.android.gms.internal.ads.zzacc
        @Override // com.google.android.gms.internal.ads.zzaab
        public final /* synthetic */ zzzu[] a(Uri uri, Map map) {
            return zzaaa.a(this, uri, map);
        }

        @Override // com.google.android.gms.internal.ads.zzaab
        public final zzzu[] zza() {
            zzaab zzaabVar = zzacd.f8469q;
            return new zzzu[]{new zzacd()};
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzzx f8475f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f8477h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f8478i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f8479j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f8480k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f8481l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f8482m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f8483n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzacb f8484o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private zzach f8485p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzen f8470a = new zzen(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f8471b = new zzen(9);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzen f8472c = new zzen(11);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzen f8473d = new zzen();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzace f8474e = new zzace();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f8476g = 1;

    private final zzen b(zzzv zzzvVar) throws IOException {
        if (this.f8481l > this.f8473d.j()) {
            zzen zzenVar = this.f8473d;
            int iJ = zzenVar.j();
            zzenVar.d(new byte[Math.max(iJ + iJ, this.f8481l)], 0);
        } else {
            this.f8473d.f(0);
        }
        this.f8473d.e(this.f8481l);
        ((zzzk) zzzvVar).g(this.f8473d.h(), 0, this.f8481l, false);
        return this.f8473d;
    }

    @RequiresNonNull({"extractorOutput"})
    private final void c() {
        if (this.f8483n) {
            return;
        }
        this.f8475f.e(new zzaaw(-9223372036854775807L, 0L));
        this.f8483n = true;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final boolean a(zzzv zzzvVar) throws IOException {
        zzzk zzzkVar = (zzzk) zzzvVar;
        zzzkVar.k(this.f8470a.h(), 0, 3, false);
        this.f8470a.f(0);
        if (this.f8470a.u() != 4607062) {
            return false;
        }
        zzzkVar.k(this.f8470a.h(), 0, 2, false);
        this.f8470a.f(0);
        if ((this.f8470a.w() & 250) != 0) {
            return false;
        }
        zzzkVar.k(this.f8470a.h(), 0, 4, false);
        this.f8470a.f(0);
        int iM = this.f8470a.m();
        zzzvVar.h();
        zzzk zzzkVar2 = (zzzk) zzzvVar;
        zzzkVar2.n(iM, false);
        zzzkVar2.k(this.f8470a.h(), 0, 4, false);
        this.f8470a.f(0);
        return this.f8470a.m() == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0009 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzzu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int e(com.google.android.gms.internal.ads.zzzv r17, com.google.android.gms.internal.ads.zzaau r18) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 376
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzacd.e(com.google.android.gms.internal.ads.zzzv, com.google.android.gms.internal.ads.zzaau):int");
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.f8475f = zzzxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void h(long j10, long j11) {
        if (j10 == 0) {
            this.f8476g = 1;
            this.f8477h = false;
        } else {
            this.f8476g = 3;
        }
        this.f8479j = 0;
    }
}
