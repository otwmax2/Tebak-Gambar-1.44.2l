package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.util.SparseArray;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zznf implements zzlb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdm f20224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzck f20225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzcm f20226c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzne f20227d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SparseArray f20228e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzeb f20229f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzcg f20230g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzdv f20231h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f20232i;

    public zznf(zzdm zzdmVar) {
        Objects.requireNonNull(zzdmVar);
        this.f20224a = zzdmVar;
        this.f20229f = new zzeb(zzew.e(), zzdmVar, new zzdz() { // from class: com.google.android.gms.internal.ads.zzll
            @Override // com.google.android.gms.internal.ads.zzdz
            public final void a(Object obj, zzaa zzaaVar) {
            }
        });
        zzck zzckVar = new zzck();
        this.f20225b = zzckVar;
        this.f20226c = new zzcm();
        this.f20227d = new zzne(zzckVar);
        this.f20228e = new SparseArray();
    }

    public static /* synthetic */ void G(zznf zznfVar) {
        final zzlc zzlcVarD = zznfVar.D();
        zznfVar.I(zzlcVarD, 1028, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmb
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
        zznfVar.f20229f.e();
    }

    private final zzlc J(zzss zzssVar) {
        Objects.requireNonNull(this.f20230g);
        zzcn zzcnVarA = zzssVar == null ? null : this.f20227d.a(zzssVar);
        if (zzssVar != null && zzcnVarA != null) {
            return F(zzcnVarA, zzcnVarA.n(zzssVar.f11010a, this.f20225b).f13166c, zzssVar);
        }
        int iE = this.f20230g.e();
        zzcn zzcnVarR = this.f20230g.r();
        if (iE >= zzcnVarR.c()) {
            zzcnVarR = zzcn.f13536a;
        }
        return F(zzcnVarR, iE, null);
    }

    private final zzlc K(int i10, zzss zzssVar) {
        zzcg zzcgVar = this.f20230g;
        Objects.requireNonNull(zzcgVar);
        if (zzssVar != null) {
            return this.f20227d.a(zzssVar) != null ? J(zzssVar) : F(zzcn.f13536a, i10, zzssVar);
        }
        zzcn zzcnVarR = zzcgVar.r();
        if (i10 >= zzcnVarR.c()) {
            zzcnVarR = zzcn.f13536a;
        }
        return F(zzcnVarR, i10, null);
    }

    private final zzlc L() {
        return J(this.f20227d.d());
    }

    private final zzlc M() {
        return J(this.f20227d.e());
    }

    private final zzlc N(zzbw zzbwVar) {
        zzbn zzbnVar;
        return (!(zzbwVar instanceof zzhj) || (zzbnVar = ((zzhj) zzbwVar).B) == null) ? D() : J(new zzss(zzbnVar));
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void A(final zzhb zzhbVar) {
        final zzlc zzlcVarL = L();
        I(zzlcVarL, 1013, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmt
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void B(int i10, zzss zzssVar, final zzsj zzsjVar, final zzso zzsoVar, final IOException iOException, final boolean z10) {
        final zzlc zzlcVarK = K(i10, zzssVar);
        I(zzlcVarK, 1003, new zzdy() { // from class: com.google.android.gms.internal.ads.zzma
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                ((zzle) obj).d(zzlcVarK, zzsjVar, zzsoVar, iOException, z10);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void C(final zzaf zzafVar, final zzhc zzhcVar) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 1017, new zzdy() { // from class: com.google.android.gms.internal.ads.zzlg
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                ((zzle) obj).j(zzlcVarM, zzafVar, zzhcVar);
            }
        });
    }

    protected final zzlc D() {
        return J(this.f20227d.b());
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void D0(final boolean z10) {
        final zzlc zzlcVarD = D();
        I(zzlcVarD, 7, new zzdy(z10) { // from class: com.google.android.gms.internal.ads.zzml
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void E() {
        zzdv zzdvVar = this.f20231h;
        zzdl.b(zzdvVar);
        zzdvVar.i(new Runnable() { // from class: com.google.android.gms.internal.ads.zzmu
            @Override // java.lang.Runnable
            public final void run() {
                zznf.G(this.f20203o);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void E0(final zzda zzdaVar) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 25, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmx
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                zzlc zzlcVar = zzlcVarM;
                zzda zzdaVar2 = zzdaVar;
                ((zzle) obj).l(zzlcVar, zzdaVar2);
                int i10 = zzdaVar2.f14263a;
            }
        });
    }

    @RequiresNonNull({"player"})
    protected final zzlc F(zzcn zzcnVar, int i10, zzss zzssVar) {
        zzss zzssVar2 = true == zzcnVar.o() ? null : zzssVar;
        long jZza = this.f20224a.zza();
        boolean z10 = zzcnVar.equals(this.f20230g.r()) && i10 == this.f20230g.e();
        long jK0 = 0;
        if (zzssVar2 == null || !zzssVar2.b()) {
            if (z10) {
                jK0 = this.f20230g.l();
            } else if (!zzcnVar.o()) {
                long j10 = zzcnVar.e(i10, this.f20226c, 0L).f13472k;
                jK0 = zzew.k0(0L);
            }
        } else if (z10 && this.f20230g.b() == zzssVar2.f11011b && this.f20230g.c() == zzssVar2.f11012c) {
            jK0 = this.f20230g.k();
        }
        return new zzlc(jZza, zzcnVar, i10, zzssVar2, jK0, this.f20230g.r(), this.f20230g.e(), this.f20227d.b(), this.f20230g.k(), this.f20230g.n());
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void F0(final int i10, final int i11) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 24, new zzdy(i10, i11) { // from class: com.google.android.gms.internal.ads.zzna
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void G0(final zzcy zzcyVar) {
        final zzlc zzlcVarD = D();
        I(zzlcVarD, 2, new zzdy() { // from class: com.google.android.gms.internal.ads.zzlv
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    final /* synthetic */ void H(zzcg zzcgVar, zzle zzleVar, zzaa zzaaVar) {
        zzleVar.e(zzcgVar, new zzld(zzaaVar, this.f20228e));
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void H0(final zzby zzbyVar) {
        final zzlc zzlcVarD = D();
        I(zzlcVarD, 12, new zzdy() { // from class: com.google.android.gms.internal.ads.zzlk
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    protected final void I(zzlc zzlcVar, int i10, zzdy zzdyVar) {
        this.f20228e.put(i10, zzlcVar);
        zzeb zzebVar = this.f20229f;
        zzebVar.d(i10, zzdyVar);
        zzebVar.c();
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void I0(final boolean z10) {
        final zzlc zzlcVarD = D();
        I(zzlcVarD, 3, new zzdy(z10) { // from class: com.google.android.gms.internal.ads.zznc
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void J0(final float f10) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 22, new zzdy(f10) { // from class: com.google.android.gms.internal.ads.zzlj
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void K0(final boolean z10, final int i10) {
        final zzlc zzlcVarD = D();
        I(zzlcVarD, 5, new zzdy(z10, i10) { // from class: com.google.android.gms.internal.ads.zzmk
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void L0(final zzbw zzbwVar) {
        final zzlc zzlcVarN = N(zzbwVar);
        I(zzlcVarN, 10, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmq
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void M0(final zzbg zzbgVar, final int i10) {
        final zzlc zzlcVarD = D();
        I(zzlcVarD, 1, new zzdy(zzbgVar, i10) { // from class: com.google.android.gms.internal.ads.zzmo

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ zzbg f20190b;

            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void N0(final zzt zztVar) {
        final zzlc zzlcVarD = D();
        I(zzlcVarD, 29, new zzdy() { // from class: com.google.android.gms.internal.ads.zzlu
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void O0(final zzbw zzbwVar) {
        final zzlc zzlcVarN = N(zzbwVar);
        I(zzlcVarN, 10, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmg
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                ((zzle) obj).p(zzlcVarN, zzbwVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void P0(final zzcc zzccVar) {
        final zzlc zzlcVarD = D();
        I(zzlcVarD, 13, new zzdy() { // from class: com.google.android.gms.internal.ads.zzlt
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void Q0(final boolean z10, final int i10) {
        final zzlc zzlcVarD = D();
        I(zzlcVarD, -1, new zzdy(z10, i10) { // from class: com.google.android.gms.internal.ads.zzlf
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void R0(final boolean z10) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 23, new zzdy(z10) { // from class: com.google.android.gms.internal.ads.zzmm
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void S0(zzcn zzcnVar, final int i10) {
        zzne zzneVar = this.f20227d;
        zzcg zzcgVar = this.f20230g;
        Objects.requireNonNull(zzcgVar);
        zzneVar.i(zzcgVar);
        final zzlc zzlcVarD = D();
        I(zzlcVarD, 0, new zzdy(i10) { // from class: com.google.android.gms.internal.ads.zzmc
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void T0(final zzbm zzbmVar) {
        final zzlc zzlcVarD = D();
        I(zzlcVarD, 14, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmr
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void U0(final zzcf zzcfVar, final zzcf zzcfVar2, final int i10) {
        if (i10 == 1) {
            this.f20232i = false;
            i10 = 1;
        }
        zzne zzneVar = this.f20227d;
        zzcg zzcgVar = this.f20230g;
        Objects.requireNonNull(zzcgVar);
        zzneVar.g(zzcgVar);
        final zzlc zzlcVarD = D();
        I(zzlcVarD, 11, new zzdy() { // from class: com.google.android.gms.internal.ads.zzls
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                zzle zzleVar = (zzle) obj;
                zzleVar.c(zzlcVarD, zzcfVar, zzcfVar2, i10);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void V0(final int i10, final boolean z10) {
        final zzlc zzlcVarD = D();
        I(zzlcVarD, 30, new zzdy(i10, z10) { // from class: com.google.android.gms.internal.ads.zzlx
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void a(final int i10, final long j10) {
        final zzlc zzlcVarL = L();
        I(zzlcVarL, 1018, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmd
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                ((zzle) obj).b(zzlcVarL, i10, j10);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void b(int i10, zzss zzssVar, final zzsj zzsjVar, final zzso zzsoVar) {
        final zzlc zzlcVarK = K(i10, zzssVar);
        I(zzlcVarK, 1001, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmp
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void c(final zzaf zzafVar, final zzhc zzhcVar) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 1009, new zzdy() { // from class: com.google.android.gms.internal.ads.zzms
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                ((zzle) obj).f(zzlcVarM, zzafVar, zzhcVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void d(final Exception exc) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 1030, new zzdy() { // from class: com.google.android.gms.internal.ads.zzlo
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void e(final zzhb zzhbVar) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 1015, new zzdy() { // from class: com.google.android.gms.internal.ads.zzme
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void f(final String str, final long j10, final long j11) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 1016, new zzdy(str, j11, j10) { // from class: com.google.android.gms.internal.ads.zzlz

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ String f20158b;

            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void g(final zzhb zzhbVar) {
        final zzlc zzlcVarL = L();
        I(zzlcVarL, 1020, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmy
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                ((zzle) obj).g(zzlcVarL, zzhbVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void h(final String str) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 1019, new zzdy() { // from class: com.google.android.gms.internal.ads.zzlh
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void i(int i10, zzss zzssVar, final zzsj zzsjVar, final zzso zzsoVar) {
        final zzlc zzlcVarK = K(i10, zzssVar);
        I(zzlcVarK, 1002, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmf
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void j(final long j10, final int i10) {
        final zzlc zzlcVarL = L();
        I(zzlcVarL, 1021, new zzdy(j10, i10) { // from class: com.google.android.gms.internal.ads.zzlr
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void k(List list, zzss zzssVar) {
        zzne zzneVar = this.f20227d;
        zzcg zzcgVar = this.f20230g;
        Objects.requireNonNull(zzcgVar);
        zzneVar.h(list, zzssVar, zzcgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void l(final Exception exc) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 1014, new zzdy() { // from class: com.google.android.gms.internal.ads.zzlq
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void m(final Exception exc) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 1029, new zzdy() { // from class: com.google.android.gms.internal.ads.zzlw
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void n() {
        final zzlc zzlcVarD = D();
        I(zzlcVarD, -1, new zzdy() { // from class: com.google.android.gms.internal.ads.zzlm
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void o(final int i10, final long j10, final long j11) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 1011, new zzdy(i10, j10, j11) { // from class: com.google.android.gms.internal.ads.zzli
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void p(int i10, zzss zzssVar, final zzso zzsoVar) {
        final zzlc zzlcVarK = K(i10, zzssVar);
        I(zzlcVarK, 1004, new zzdy() { // from class: com.google.android.gms.internal.ads.zzln
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                ((zzle) obj).i(zzlcVarK, zzsoVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void q(zzle zzleVar) {
        this.f20229f.f(zzleVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void r(final String str, final long j10, final long j11) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 1008, new zzdy(str, j11, j10) { // from class: com.google.android.gms.internal.ads.zzmh

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ String f20178b;

            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void r0(final int i10) {
        final zzlc zzlcVarD = D();
        I(zzlcVarD, 6, new zzdy(i10) { // from class: com.google.android.gms.internal.ads.zznb
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void s(final int i10, final long j10, final long j11) {
        final zzlc zzlcVarJ = J(this.f20227d.c());
        I(zzlcVarJ, 1006, new zzdy() { // from class: com.google.android.gms.internal.ads.zzlp
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                ((zzle) obj).m(zzlcVarJ, i10, j10, j11);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void t(final zzhb zzhbVar) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 1007, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmi
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void t0(final String str) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 1012, new zzdy() { // from class: com.google.android.gms.internal.ads.zznd
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void u(zzle zzleVar) {
        this.f20229f.b(zzleVar);
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void v(int i10, zzss zzssVar, final zzsj zzsjVar, final zzso zzsoVar) {
        final zzlc zzlcVarK = K(i10, zzssVar);
        I(zzlcVarK, 1000, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmj
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void w(final zzcg zzcgVar, Looper looper) {
        boolean z10 = true;
        if (this.f20230g != null && !this.f20227d.f20219b.isEmpty()) {
            z10 = false;
        }
        zzdl.f(z10);
        Objects.requireNonNull(zzcgVar);
        this.f20230g = zzcgVar;
        this.f20231h = this.f20224a.a(looper, null);
        this.f20229f = this.f20229f.a(looper, new zzdz() { // from class: com.google.android.gms.internal.ads.zzly
            @Override // com.google.android.gms.internal.ads.zzdz
            public final void a(Object obj, zzaa zzaaVar) {
                this.f20155a.H(zzcgVar, (zzle) obj, zzaaVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void w0(final int i10) {
        final zzlc zzlcVarD = D();
        I(zzlcVarD, 4, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmn
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                ((zzle) obj).a(zzlcVarD, i10);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void x(final long j10) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 1010, new zzdy(j10) { // from class: com.google.android.gms.internal.ads.zzmv
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void y() {
        if (this.f20232i) {
            return;
        }
        final zzlc zzlcVarD = D();
        this.f20232i = true;
        I(zzlcVarD, -1, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmw
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void z(final Object obj, final long j10) {
        final zzlc zzlcVarM = M();
        I(zzlcVarM, 26, new zzdy() { // from class: com.google.android.gms.internal.ads.zzmz
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj2) {
                ((zzle) obj2).n(zzlcVarM, obj, j10);
            }
        });
    }
}
