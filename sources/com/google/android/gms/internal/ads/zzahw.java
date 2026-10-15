package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzahw implements zzahn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaio f9150a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f9154e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f9156g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzabb f9157h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private zzahv f9158i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f9159j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f9161l;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean[] f9155f = new boolean[3];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzaic f9151b = new zzaic(7, 128);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzaic f9152c = new zzaic(8, 128);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzaic f9153d = new zzaic(6, 128);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f9160k = -9223372036854775807L;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzen f9162m = new zzen();

    public zzahw(zzaio zzaioVar, boolean z10, boolean z11) {
        this.f9150a = zzaioVar;
    }

    @RequiresNonNull({"sampleReader"})
    private final void f(byte[] bArr, int i10, int i11) {
        if (!this.f9159j) {
            this.f9151b.a(bArr, i10, i11);
            this.f9152c.a(bArr, i10, i11);
        }
        this.f9153d.a(bArr, i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void b() {
        this.f9154e = 0L;
        this.f9161l = false;
        this.f9160k = -9223372036854775807L;
        zzaar.e(this.f9155f);
        this.f9151b.b();
        this.f9152c.b();
        this.f9153d.b();
        zzahv zzahvVar = this.f9158i;
        if (zzahvVar != null) {
            zzahvVar.c();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void c(zzen zzenVar) {
        zzdl.b(this.f9157h);
        int i10 = zzew.f17494a;
        int iK = zzenVar.k();
        int iL = zzenVar.l();
        byte[] bArrH = zzenVar.h();
        this.f9154e += (long) zzenVar.i();
        this.f9157h.d(zzenVar, zzenVar.i());
        while (true) {
            int iA = zzaar.a(bArrH, iK, iL, this.f9155f);
            if (iA == iL) {
                f(bArrH, iK, iL);
                return;
            }
            int i11 = iA + 3;
            int i12 = bArrH[i11] & 31;
            int i13 = iA - iK;
            if (i13 > 0) {
                f(bArrH, iK, iA);
            }
            int i14 = iL - iA;
            long j10 = this.f9154e - ((long) i14);
            int i15 = i13 < 0 ? -i13 : 0;
            long j11 = this.f9160k;
            if (!this.f9159j) {
                this.f9151b.d(i15);
                this.f9152c.d(i15);
                if (this.f9159j) {
                    zzaic zzaicVar = this.f9151b;
                    if (zzaicVar.e()) {
                        this.f9158i.b(zzaar.d(zzaicVar.f9232d, 4, zzaicVar.f9233e));
                        this.f9151b.b();
                    } else {
                        zzaic zzaicVar2 = this.f9152c;
                        if (zzaicVar2.e()) {
                            this.f9158i.a(zzaar.c(zzaicVar2.f9232d, 4, zzaicVar2.f9233e));
                            this.f9152c.b();
                        }
                    }
                } else if (this.f9151b.e() && this.f9152c.e()) {
                    ArrayList arrayList = new ArrayList();
                    zzaic zzaicVar3 = this.f9151b;
                    arrayList.add(Arrays.copyOf(zzaicVar3.f9232d, zzaicVar3.f9233e));
                    zzaic zzaicVar4 = this.f9152c;
                    arrayList.add(Arrays.copyOf(zzaicVar4.f9232d, zzaicVar4.f9233e));
                    zzaic zzaicVar5 = this.f9151b;
                    zzaaq zzaaqVarD = zzaar.d(zzaicVar5.f9232d, 4, zzaicVar5.f9233e);
                    zzaic zzaicVar6 = this.f9152c;
                    zzaap zzaapVarC = zzaar.c(zzaicVar6.f9232d, 4, zzaicVar6.f9233e);
                    String strA = zzdn.a(zzaaqVarD.f8333a, zzaaqVarD.f8334b, zzaaqVarD.f8335c);
                    zzabb zzabbVar = this.f9157h;
                    zzad zzadVar = new zzad();
                    zzadVar.h(this.f9156g);
                    zzadVar.s("video/avc");
                    zzadVar.f0(strA);
                    zzadVar.x(zzaaqVarD.f8337e);
                    zzadVar.f(zzaaqVarD.f8338f);
                    zzadVar.p(zzaaqVarD.f8339g);
                    zzadVar.i(arrayList);
                    zzabbVar.e(zzadVar.y());
                    this.f9159j = true;
                    this.f9158i.b(zzaaqVarD);
                    this.f9158i.a(zzaapVarC);
                    this.f9151b.b();
                    this.f9152c.b();
                }
            }
            if (this.f9153d.d(i15)) {
                zzaic zzaicVar7 = this.f9153d;
                this.f9162m.d(this.f9153d.f9232d, zzaar.b(zzaicVar7.f9232d, zzaicVar7.f9233e));
                this.f9162m.f(4);
                this.f9150a.a(j11, this.f9162m);
            }
            if (this.f9158i.e(j10, i14, this.f9159j, this.f9161l)) {
                this.f9161l = false;
            }
            long j12 = this.f9160k;
            if (!this.f9159j) {
                this.f9151b.c(i12);
                this.f9152c.c(i12);
            }
            this.f9153d.c(i12);
            this.f9158i.d(j10, i12, j12);
            iK = i11;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void d(zzzx zzzxVar, zzaiz zzaizVar) {
        zzaizVar.c();
        this.f9156g = zzaizVar.b();
        zzabb zzabbVarQ = zzzxVar.q(zzaizVar.a(), 2);
        this.f9157h = zzabbVarQ;
        this.f9158i = new zzahv(zzabbVarQ, false, false);
        this.f9150a.b(zzzxVar, zzaizVar);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f9160k = j10;
        }
        this.f9161l |= (i10 & 2) != 0;
    }
}
