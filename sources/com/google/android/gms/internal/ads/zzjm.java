package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjm implements Handler.Callback, zzsp, zzwj, zzkf, zzhg, zzki {
    private final long A;
    private final zzhh B;
    private final ArrayList C;
    private final zzdm D;
    private final zzju E;
    private final zzkg F;
    private final long G;
    private zzkq H;
    private zzkh I;
    private zzjk J;
    private boolean K;
    private boolean M;
    private boolean N;
    private boolean O;
    private boolean R;
    private boolean S;
    private boolean T;
    private int U;
    private zzjl V;
    private long W;
    private int X;
    private boolean Y;
    private zzhj Z;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private final zzip f19930b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private final zzhe f19931c0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzkn[] f19932o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Set f19933p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzko[] f19934q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzwk f19935r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzwl f19936s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzjp f19937t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzws f19938u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzdv f19939v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final HandlerThread f19940w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Looper f19941x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final zzcm f19942y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final zzck f19943z;
    private int P = 0;
    private boolean Q = false;
    private boolean L = false;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private long f19929a0 = -9223372036854775807L;

    public zzjm(zzkn[] zzknVarArr, zzwk zzwkVar, zzwl zzwlVar, zzjp zzjpVar, zzws zzwsVar, int i10, boolean z10, zzlb zzlbVar, zzkq zzkqVar, zzhe zzheVar, long j10, boolean z11, Looper looper, zzdm zzdmVar, zzip zzipVar, zzno zznoVar, Looper looper2, byte[] bArr) {
        this.f19930b0 = zzipVar;
        this.f19932o = zzknVarArr;
        this.f19935r = zzwkVar;
        this.f19936s = zzwlVar;
        this.f19937t = zzjpVar;
        this.f19938u = zzwsVar;
        this.H = zzkqVar;
        this.f19931c0 = zzheVar;
        this.G = j10;
        this.D = zzdmVar;
        this.A = zzjpVar.zza();
        zzjpVar.c();
        zzkh zzkhVarG = zzkh.g(zzwlVar);
        this.I = zzkhVarG;
        this.J = new zzjk(zzkhVarG);
        int length = zzknVarArr.length;
        this.f19934q = new zzko[2];
        for (int i11 = 0; i11 < 2; i11++) {
            zzknVarArr[i11].r(i11, zznoVar);
            this.f19934q[i11] = zzknVarArr[i11].h();
        }
        this.B = new zzhh(this, zzdmVar);
        this.C = new ArrayList();
        this.f19933p = Collections.newSetFromMap(new IdentityHashMap());
        this.f19942y = new zzcm();
        this.f19943z = new zzck();
        zzwkVar.g(this, zzwsVar);
        this.Y = true;
        zzdv zzdvVarA = zzdmVar.a(looper, null);
        this.E = new zzju(zzlbVar, zzdvVarA);
        this.F = new zzkg(this, zzlbVar, zzdvVarA, zznoVar);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.f19940w = handlerThread;
        handlerThread.start();
        Looper looper3 = handlerThread.getLooper();
        this.f19941x = looper3;
        this.f19939v = zzdmVar.a(looper3, this);
    }

    private final void A(boolean z10, boolean z11) {
        q(z10 || !this.R, false, true, false);
        this.J.a(z11 ? 1 : 0);
        this.f19937t.d();
        y(1);
    }

    private final void B() throws zzhj {
        this.B.h();
        zzkn[] zzknVarArr = this.f19932o;
        int length = zzknVarArr.length;
        for (int i10 = 0; i10 < 2; i10++) {
            zzkn zzknVar = zzknVarArr[i10];
            if (I(zzknVar)) {
                P(zzknVar);
            }
        }
    }

    private final void C() {
        zzjr zzjrVarF = this.E.f();
        boolean z10 = this.O || (zzjrVarF != null && zzjrVarF.f19946a.n());
        zzkh zzkhVar = this.I;
        if (z10 != zzkhVar.f20046g) {
            this.I = new zzkh(zzkhVar.f20040a, zzkhVar.f20041b, zzkhVar.f20042c, zzkhVar.f20043d, zzkhVar.f20044e, zzkhVar.f20045f, z10, zzkhVar.f20047h, zzkhVar.f20048i, zzkhVar.f20049j, zzkhVar.f20050k, zzkhVar.f20051l, zzkhVar.f20052m, zzkhVar.f20053n, zzkhVar.f20055p, zzkhVar.f20056q, zzkhVar.f20057r, zzkhVar.f20054o);
        }
    }

    private final void D(zzur zzurVar, zzwl zzwlVar) {
        this.f19937t.e(this.f19932o, zzurVar, zzwlVar.f20952c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x009a, code lost:
    
        r7 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void E() throws com.google.android.gms.internal.ads.zzhj {
        /*
            Method dump skipped, instruction units count: 326
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjm.E():void");
    }

    private final void F(zzcn zzcnVar, zzss zzssVar, zzcn zzcnVar2, zzss zzssVar2, long j10) {
        if (!M(zzcnVar, zzssVar)) {
            zzby zzbyVar = zzssVar.b() ? zzby.f11503d : this.I.f20053n;
            if (this.B.a().equals(zzbyVar)) {
                return;
            }
            this.B.e(zzbyVar);
            return;
        }
        zzcnVar.e(zzcnVar.n(zzssVar.f11010a, this.f19943z).f13166c, this.f19942y, 0L);
        zzhe zzheVar = this.f19931c0;
        zzaw zzawVar = this.f19942y.f13470i;
        int i10 = zzew.f17494a;
        zzheVar.d(zzawVar);
        if (j10 != -9223372036854775807L) {
            this.f19931c0.e(d0(zzcnVar, zzssVar.f11010a, j10));
            return;
        }
        if (zzew.u(!zzcnVar2.o() ? zzcnVar2.e(zzcnVar2.n(zzssVar2.f11010a, this.f19943z).f13166c, this.f19942y, 0L).f13462a : null, this.f19942y.f13462a)) {
            return;
        }
        this.f19931c0.e(-9223372036854775807L);
    }

    private final synchronized void G(zzfok zzfokVar, long j10) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j10;
        boolean z10 = false;
        while (!Boolean.valueOf(((zzjd) zzfokVar).f19909o.K).booleanValue() && j10 > 0) {
            try {
                wait(j10);
            } catch (InterruptedException unused) {
                z10 = true;
            }
            j10 = jElapsedRealtime - SystemClock.elapsedRealtime();
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private final boolean H() {
        zzjr zzjrVarF = this.E.f();
        return (zzjrVarF == null || zzjrVarF.d() == Long.MIN_VALUE) ? false : true;
    }

    private static boolean I(zzkn zzknVar) {
        return zzknVar.f() != 0;
    }

    private final boolean J() {
        zzjr zzjrVarG = this.E.g();
        long j10 = zzjrVarG.f19951f.f19965e;
        if (zzjrVarG.f19949d) {
            return j10 == -9223372036854775807L || this.I.f20057r < j10 || !L();
        }
        return false;
    }

    private static boolean K(zzkh zzkhVar, zzck zzckVar) {
        zzss zzssVar = zzkhVar.f20041b;
        zzcn zzcnVar = zzkhVar.f20040a;
        return zzcnVar.o() || zzcnVar.n(zzssVar.f11010a, zzckVar).f13169f;
    }

    private final boolean L() {
        zzkh zzkhVar = this.I;
        return zzkhVar.f20051l && zzkhVar.f20052m == 0;
    }

    private final boolean M(zzcn zzcnVar, zzss zzssVar) {
        if (!zzssVar.b() && !zzcnVar.o()) {
            zzcnVar.e(zzcnVar.n(zzssVar.f11010a, this.f19943z).f13166c, this.f19942y, 0L);
            if (this.f19942y.b()) {
                zzcm zzcmVar = this.f19942y;
                if (zzcmVar.f13468g && zzcmVar.f13465d != -9223372036854775807L) {
                    return true;
                }
            }
        }
        return false;
    }

    private static zzaf[] N(zzwe zzweVar) {
        int iA = zzweVar != null ? zzweVar.a() : 0;
        zzaf[] zzafVarArr = new zzaf[iA];
        for (int i10 = 0; i10 < iA; i10++) {
            zzafVarArr[i10] = zzweVar.K(i10);
        }
        return zzafVarArr;
    }

    private static final void O(zzkk zzkkVar) throws zzhj {
        zzkkVar.j();
        try {
            zzkkVar.c().n(zzkkVar.a(), zzkkVar.g());
        } finally {
            zzkkVar.h(true);
        }
    }

    private static final void P(zzkn zzknVar) throws zzhj {
        if (zzknVar.f() == 2) {
            zzknVar.L();
        }
    }

    private static final void Q(zzkn zzknVar, long j10) {
        zzknVar.f0();
        if (zzknVar instanceof zzuv) {
            throw null;
        }
    }

    static Object U(zzcm zzcmVar, zzck zzckVar, int i10, boolean z10, Object obj, zzcn zzcnVar, zzcn zzcnVar2) {
        int iA = zzcnVar.a(obj);
        int iB = zzcnVar.b();
        int i11 = 0;
        int i12 = iA;
        int iA2 = -1;
        while (true) {
            if (i11 >= iB || iA2 != -1) {
                break;
            }
            i12 = zzcnVar.i(i12, zzckVar, zzcmVar, i10, z10);
            if (i12 == -1) {
                iA2 = -1;
                break;
            }
            iA2 = zzcnVar2.a(zzcnVar.f(i12));
            i11++;
        }
        if (iA2 == -1) {
            return null;
        }
        return zzcnVar2.f(iA2);
    }

    private final void c(zzkn zzknVar) throws zzhj {
        if (I(zzknVar)) {
            this.B.c(zzknVar);
            P(zzknVar);
            zzknVar.k();
            this.U--;
        }
    }

    static final /* synthetic */ void c0(zzkk zzkkVar) {
        try {
            O(zzkkVar);
        } catch (zzhj e10) {
            zzee.c("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e10);
            throw new RuntimeException(e10);
        }
    }

    private final void d() throws zzhj {
        int length = this.f19932o.length;
        i(new boolean[2]);
    }

    private final long d0(zzcn zzcnVar, Object obj, long j10) {
        zzcnVar.e(zzcnVar.n(obj, this.f19943z).f13166c, this.f19942y, 0L);
        zzcm zzcmVar = this.f19942y;
        if (zzcmVar.f13465d != -9223372036854775807L && zzcmVar.b()) {
            zzcm zzcmVar2 = this.f19942y;
            if (zzcmVar2.f13468g) {
                return zzew.g0(zzew.e0(zzcmVar2.f13466e) - this.f19942y.f13465d) - j10;
            }
        }
        return -9223372036854775807L;
    }

    private final long e0() {
        return f0(this.I.f20055p);
    }

    private final long f0(long j10) {
        zzjr zzjrVarF = this.E.f();
        if (zzjrVarF == null) {
            return 0L;
        }
        return Math.max(0L, j10 - (this.W - zzjrVarF.e()));
    }

    private final long g0(zzss zzssVar, long j10, boolean z10) throws zzhj {
        return h0(zzssVar, j10, this.E.g() != this.E.h(), z10);
    }

    private final long h0(zzss zzssVar, long j10, boolean z10, boolean z11) throws zzhj {
        B();
        this.N = false;
        if (z11 || this.I.f20044e == 3) {
            y(2);
        }
        zzjr zzjrVarG = this.E.g();
        zzjr zzjrVarG2 = zzjrVarG;
        while (zzjrVarG2 != null && !zzssVar.equals(zzjrVarG2.f19951f.f19961a)) {
            zzjrVarG2 = zzjrVarG2.g();
        }
        if (z10 || zzjrVarG != zzjrVarG2 || (zzjrVarG2 != null && zzjrVarG2.e() + j10 < 0)) {
            zzkn[] zzknVarArr = this.f19932o;
            int length = zzknVarArr.length;
            for (int i10 = 0; i10 < 2; i10++) {
                c(zzknVarArr[i10]);
            }
            if (zzjrVarG2 != null) {
                while (this.E.g() != zzjrVarG2) {
                    this.E.d();
                }
                this.E.p(zzjrVarG2);
                zzjrVarG2.p(1000000000000L);
                d();
            }
        }
        if (zzjrVarG2 != null) {
            this.E.p(zzjrVarG2);
            if (!zzjrVarG2.f19949d) {
                zzjrVarG2.f19951f = zzjrVarG2.f19951f.b(j10);
            } else if (zzjrVarG2.f19950e) {
                j10 = zzjrVarG2.f19946a.D(j10);
                zzjrVarG2.f19946a.h(j10 - this.A, false);
            }
            s(j10);
            o();
        } else {
            this.E.l();
            s(j10);
        }
        k(false);
        this.f19939v.Q(2);
        return j10;
    }

    private final void i(boolean[] zArr) throws zzhj {
        zzjr zzjrVarH = this.E.h();
        zzwl zzwlVarI = zzjrVarH.i();
        int i10 = 0;
        while (true) {
            int length = this.f19932o.length;
            if (i10 >= 2) {
                break;
            }
            if (!zzwlVarI.b(i10) && this.f19933p.remove(this.f19932o[i10])) {
                this.f19932o[i10].B();
            }
            i10++;
        }
        int i11 = 0;
        while (true) {
            int length2 = this.f19932o.length;
            if (i11 >= 2) {
                zzjrVarH.f19952g = true;
                return;
            }
            if (zzwlVarI.b(i11)) {
                boolean z10 = zArr[i11];
                zzkn zzknVar = this.f19932o[i11];
                if (!I(zzknVar)) {
                    zzjr zzjrVarH2 = this.E.h();
                    boolean z11 = zzjrVarH2 == this.E.g();
                    zzwl zzwlVarI2 = zzjrVarH2.i();
                    zzkp zzkpVar = zzwlVarI2.f20951b[i11];
                    zzaf[] zzafVarArrN = N(zzwlVarI2.f20952c[i11]);
                    boolean z12 = L() && this.I.f20044e == 3;
                    boolean z13 = !z10 && z12;
                    this.U++;
                    this.f19933p.add(zzknVar);
                    zzknVar.o(zzkpVar, zzafVarArrN, zzjrVarH2.f19948c[i11], this.W, z13, z11, zzjrVarH2.f(), zzjrVarH2.e());
                    zzknVar.n(11, new zzjf(this));
                    this.B.d(zzknVar);
                    if (z12) {
                        zzknVar.H();
                    }
                }
            }
            i11++;
        }
    }

    private final Pair i0(zzcn zzcnVar) {
        long j10 = 0;
        if (zzcnVar.o()) {
            return Pair.create(zzkh.h(), 0L);
        }
        Pair pairL = zzcnVar.l(this.f19942y, this.f19943z, zzcnVar.g(this.Q), -9223372036854775807L);
        zzss zzssVarK = this.E.k(zzcnVar, pairL.first, 0L);
        long jLongValue = ((Long) pairL.second).longValue();
        if (zzssVarK.b()) {
            zzcnVar.n(zzssVarK.f11010a, this.f19943z);
            if (zzssVarK.f11012c == this.f19943z.e(zzssVarK.f11011b)) {
                this.f19943z.i();
            }
        } else {
            j10 = jLongValue;
        }
        return Pair.create(zzssVarK, Long.valueOf(j10));
    }

    private final void j(IOException iOException, int i10) {
        zzhj zzhjVarC = zzhj.c(iOException, i10);
        zzjr zzjrVarG = this.E.g();
        if (zzjrVarG != null) {
            zzhjVarC = zzhjVarC.a(zzjrVarG.f19951f.f19961a);
        }
        zzee.c("ExoPlayerImplInternal", "Playback error", zzhjVarC);
        A(false, false);
        this.I = this.I.d(zzhjVarC);
    }

    private static Pair j0(zzcn zzcnVar, zzjl zzjlVar, boolean z10, int i10, boolean z11, zzcm zzcmVar, zzck zzckVar) {
        Pair pairL;
        zzcn zzcnVar2 = zzjlVar.f19926a;
        if (zzcnVar.o()) {
            return null;
        }
        zzcn zzcnVar3 = true == zzcnVar2.o() ? zzcnVar : zzcnVar2;
        try {
            pairL = zzcnVar3.l(zzcmVar, zzckVar, zzjlVar.f19927b, zzjlVar.f19928c);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (zzcnVar.equals(zzcnVar3)) {
            return pairL;
        }
        if (zzcnVar.a(pairL.first) != -1) {
            return (zzcnVar3.n(pairL.first, zzckVar).f13169f && zzcnVar3.e(zzckVar.f13166c, zzcmVar, 0L).f13474m == zzcnVar3.a(pairL.first)) ? zzcnVar.l(zzcmVar, zzckVar, zzcnVar.n(pairL.first, zzckVar).f13166c, zzjlVar.f19928c) : pairL;
        }
        Object objU = U(zzcmVar, zzckVar, i10, z11, pairL.first, zzcnVar3, zzcnVar);
        if (objU != null) {
            return zzcnVar.l(zzcmVar, zzckVar, zzcnVar.n(objU, zzckVar).f13166c, -9223372036854775807L);
        }
        return null;
    }

    private final void k(boolean z10) {
        zzjr zzjrVarF = this.E.f();
        zzss zzssVar = zzjrVarF == null ? this.I.f20041b : zzjrVarF.f19951f.f19961a;
        boolean z11 = !this.I.f20050k.equals(zzssVar);
        if (z11) {
            this.I = this.I.a(zzssVar);
        }
        zzkh zzkhVar = this.I;
        zzkhVar.f20055p = zzjrVarF == null ? zzkhVar.f20057r : zzjrVarF.c();
        this.I.f20056q = e0();
        if ((z11 || z10) && zzjrVarF != null && zzjrVarF.f19949d) {
            D(zzjrVarF.h(), zzjrVarF.i());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.google.android.gms.internal.ads.zzkh k0(com.google.android.gms.internal.ads.zzss r17, long r18, long r20, long r22, boolean r24, int r25) {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjm.k0(com.google.android.gms.internal.ads.zzss, long, long, long, boolean, int):com.google.android.gms.internal.ads.zzkh");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:182:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01bd  */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.google.android.gms.internal.ads.zzck] */
    /* JADX WARN: Type inference failed for: r14v1, types: [com.google.android.gms.internal.ads.zzjl] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r15v12, types: [com.google.android.gms.internal.ads.zzjm] */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.ads.zzcn] */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r25v10 */
    /* JADX WARN: Type inference failed for: r25v11 */
    /* JADX WARN: Type inference failed for: r25v12 */
    /* JADX WARN: Type inference failed for: r25v2, types: [long] */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Type inference failed for: r25v4, types: [long] */
    /* JADX WARN: Type inference failed for: r25v5 */
    /* JADX WARN: Type inference failed for: r25v6 */
    /* JADX WARN: Type inference failed for: r25v7 */
    /* JADX WARN: Type inference failed for: r25v8 */
    /* JADX WARN: Type inference failed for: r25v9 */
    /* JADX WARN: Type inference failed for: r28v0, types: [com.google.android.gms.internal.ads.zzjm] */
    /* JADX WARN: Type inference failed for: r29v0, types: [com.google.android.gms.internal.ads.zzcn] */
    /* JADX WARN: Type inference failed for: r5v17, types: [long] */
    /* JADX WARN: Type inference failed for: r5v20, types: [long] */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8, types: [boolean] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void l(com.google.android.gms.internal.ads.zzcn r29, boolean r30) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 943
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjm.l(com.google.android.gms.internal.ads.zzcn, boolean):void");
    }

    private final void m(zzby zzbyVar, boolean z10) throws zzhj {
        n(zzbyVar, zzbyVar.f11507a, true, z10);
    }

    private final void n(zzby zzbyVar, float f10, boolean z10, boolean z11) throws zzhj {
        int i10;
        zzjm zzjmVar = this;
        if (z10) {
            if (z11) {
                zzjmVar.J.a(1);
            }
            zzkh zzkhVar = zzjmVar.I;
            zzjmVar = this;
            zzjmVar.I = new zzkh(zzkhVar.f20040a, zzkhVar.f20041b, zzkhVar.f20042c, zzkhVar.f20043d, zzkhVar.f20044e, zzkhVar.f20045f, zzkhVar.f20046g, zzkhVar.f20047h, zzkhVar.f20048i, zzkhVar.f20049j, zzkhVar.f20050k, zzkhVar.f20051l, zzkhVar.f20052m, zzbyVar, zzkhVar.f20055p, zzkhVar.f20056q, zzkhVar.f20057r, zzkhVar.f20054o);
        }
        float f11 = zzbyVar.f11507a;
        zzjr zzjrVarG = zzjmVar.E.g();
        while (true) {
            i10 = 0;
            if (zzjrVarG == null) {
                break;
            }
            zzwe[] zzweVarArr = zzjrVarG.i().f20952c;
            int length = zzweVarArr.length;
            while (i10 < length) {
                zzwe zzweVar = zzweVarArr[i10];
                i10++;
            }
            zzjrVarG = zzjrVarG.g();
        }
        zzkn[] zzknVarArr = zzjmVar.f19932o;
        int length2 = zzknVarArr.length;
        while (i10 < 2) {
            zzkn zzknVar = zzknVarArr[i10];
            if (zzknVar != null) {
                zzknVar.i(f10, zzbyVar.f11507a);
            }
            i10++;
        }
    }

    private final void o() {
        long jE;
        long jE2;
        boolean zF = false;
        if (H()) {
            zzjr zzjrVarF = this.E.f();
            long jF0 = f0(zzjrVarF.d());
            if (zzjrVarF == this.E.g()) {
                jE = this.W;
                jE2 = zzjrVarF.e();
            } else {
                jE = this.W - zzjrVarF.e();
                jE2 = zzjrVarF.f19951f.f19962b;
            }
            long j10 = jE - jE2;
            boolean zF2 = this.f19937t.f(j10, jF0, this.B.a().f11507a);
            if (zF2 || jF0 >= 500000 || this.A <= 0) {
                zF = zF2;
            } else {
                this.E.g().f19946a.h(this.I.f20057r, false);
                zF = this.f19937t.f(j10, jF0, this.B.a().f11507a);
            }
        }
        this.O = zF;
        if (zF) {
            this.E.f().k(this.W);
        }
        C();
    }

    private final void p() {
        this.J.c(this.I);
        if (this.J.f19919a) {
            zzip zzipVar = this.f19930b0;
            zzipVar.f19863a.a0(this.J);
            this.J = new zzjk(this.I);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void q(boolean r30, boolean r31, boolean r32, boolean r33) {
        /*
            Method dump skipped, instruction units count: 267
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjm.q(boolean, boolean, boolean, boolean):void");
    }

    private final void r() {
        zzjr zzjrVarG = this.E.g();
        boolean z10 = false;
        if (zzjrVarG != null && zzjrVarG.f19951f.f19968h && this.L) {
            z10 = true;
        }
        this.M = z10;
    }

    private final void s(long j10) throws zzhj {
        zzjr zzjrVarG = this.E.g();
        long jE = j10 + (zzjrVarG == null ? 1000000000000L : zzjrVarG.e());
        this.W = jE;
        this.B.f(jE);
        zzkn[] zzknVarArr = this.f19932o;
        int length = zzknVarArr.length;
        for (int i10 = 0; i10 < 2; i10++) {
            zzkn zzknVar = zzknVarArr[i10];
            if (I(zzknVar)) {
                zzknVar.d(this.W);
            }
        }
        for (zzjr zzjrVarG2 = this.E.g(); zzjrVarG2 != null; zzjrVarG2 = zzjrVarG2.g()) {
            for (zzwe zzweVar : zzjrVarG2.i().f20952c) {
            }
        }
    }

    private final void t(zzcn zzcnVar, zzcn zzcnVar2) {
        if (zzcnVar.o() && zzcnVar2.o()) {
            return;
        }
        int size = this.C.size() - 1;
        if (size < 0) {
            Collections.sort(this.C);
        } else {
            Object obj = ((zzjj) this.C.get(size)).f19918o;
            int i10 = zzew.f17494a;
            throw null;
        }
    }

    private final void u(long j10, long j11) {
        this.f19939v.g(2, j10 + j11);
    }

    private final void v(boolean z10) throws zzhj {
        zzss zzssVar = this.E.g().f19951f.f19961a;
        long jH0 = h0(zzssVar, this.I.f20057r, true, false);
        if (jH0 != this.I.f20057r) {
            zzkh zzkhVar = this.I;
            this.I = k0(zzssVar, jH0, zzkhVar.f20042c, zzkhVar.f20043d, z10, 5);
        }
    }

    private final void w(zzkk zzkkVar) throws zzhj {
        if (zzkkVar.b() != this.f19941x) {
            this.f19939v.h(15, zzkkVar).zza();
            return;
        }
        O(zzkkVar);
        int i10 = this.I.f20044e;
        if (i10 == 3 || i10 == 2) {
            this.f19939v.Q(2);
        }
    }

    private final void x(boolean z10, int i10, boolean z11, int i11) throws zzhj {
        this.J.a(z11 ? 1 : 0);
        this.J.b(i11);
        this.I = this.I.c(z10, i10);
        this.N = false;
        for (zzjr zzjrVarG = this.E.g(); zzjrVarG != null; zzjrVarG = zzjrVarG.g()) {
            for (zzwe zzweVar : zzjrVarG.i().f20952c) {
            }
        }
        if (!L()) {
            B();
            E();
            return;
        }
        int i12 = this.I.f20044e;
        if (i12 == 3) {
            z();
            this.f19939v.Q(2);
        } else if (i12 == 2) {
            this.f19939v.Q(2);
        }
    }

    private final void y(int i10) {
        zzkh zzkhVar = this.I;
        if (zzkhVar.f20044e != i10) {
            if (i10 != 2) {
                this.f19929a0 = -9223372036854775807L;
            }
            this.I = zzkhVar.e(i10);
        }
    }

    private final void z() throws zzhj {
        this.N = false;
        this.B.g();
        zzkn[] zzknVarArr = this.f19932o;
        int length = zzknVarArr.length;
        for (int i10 = 0; i10 < 2; i10++) {
            zzkn zzknVar = zzknVarArr[i10];
            if (I(zzknVar)) {
                zzknVar.H();
            }
        }
    }

    public final Looper R() {
        return this.f19941x;
    }

    final /* synthetic */ Boolean T() {
        return Boolean.valueOf(this.K);
    }

    public final void W() {
        this.f19939v.z(0).zza();
    }

    public final void X(zzcn zzcnVar, int i10, long j10) {
        this.f19939v.h(3, new zzjl(zzcnVar, i10, j10)).zza();
    }

    public final void Y(boolean z10, int i10) {
        this.f19939v.k(1, z10 ? 1 : 0, i10).zza();
    }

    public final void Z() {
        this.f19939v.z(6).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void a(zzby zzbyVar) {
        this.f19939v.h(16, zzbyVar).zza();
    }

    public final synchronized boolean a0() {
        if (!this.K && this.f19941x.getThread().isAlive()) {
            this.f19939v.Q(7);
            G(new zzjd(this), this.G);
            return this.K;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzki
    public final synchronized void b(zzkk zzkkVar) {
        if (!this.K && this.f19941x.getThread().isAlive()) {
            this.f19939v.h(14, zzkkVar).zza();
            return;
        }
        zzee.e("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        zzkkVar.h(false);
    }

    public final void b0(List list, int i10, long j10, zzum zzumVar) {
        this.f19939v.h(17, new zzjh(list, zzumVar, i10, j10, null, null)).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzsp
    public final void e(zzsq zzsqVar) {
        this.f19939v.h(8, zzsqVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzkf
    public final void f() {
        this.f19939v.Q(22);
    }

    @Override // com.google.android.gms.internal.ads.zzuk
    public final /* bridge */ /* synthetic */ void g(zzul zzulVar) {
        this.f19939v.h(9, (zzsq) zzulVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzwj
    public final void h() {
        this.f19939v.Q(10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0585  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0787  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0896 A[Catch: RuntimeException -> 0x0ac9, IOException -> 0x0af4, zzru -> 0x0afc, zzfh -> 0x0b04, zzbu -> 0x0b0c, zzpr -> 0x0b23, zzhj -> 0x0b2c, TryCatch #9 {zzbu -> 0x0b0c, zzfh -> 0x0b04, zzhj -> 0x0b2c, zzpr -> 0x0b23, zzru -> 0x0afc, IOException -> 0x0af4, RuntimeException -> 0x0ac9, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:8:0x001b, B:12:0x0022, B:14:0x0026, B:16:0x002a, B:18:0x0030, B:19:0x0037, B:23:0x003e, B:25:0x0047, B:27:0x0055, B:28:0x005d, B:29:0x0068, B:30:0x007c, B:31:0x0094, B:32:0x00aa, B:34:0x00b9, B:35:0x00bd, B:36:0x00ce, B:38:0x00dd, B:39:0x00f9, B:40:0x010c, B:41:0x0115, B:43:0x0127, B:44:0x0133, B:45:0x0143, B:46:0x014c, B:50:0x0153, B:52:0x015b, B:54:0x015f, B:56:0x0165, B:58:0x016d, B:60:0x0175, B:61:0x0178, B:63:0x017d, B:70:0x018a, B:71:0x018b, B:75:0x0192, B:77:0x01a0, B:78:0x01a3, B:79:0x01a8, B:81:0x01b8, B:82:0x01bb, B:83:0x01c0, B:85:0x01d7, B:87:0x01db, B:89:0x01e9, B:93:0x01f3, B:95:0x01f8, B:97:0x01fe, B:101:0x0206, B:103:0x020e, B:105:0x0234, B:109:0x023d, B:111:0x025f, B:112:0x0262, B:113:0x0268, B:115:0x026d, B:117:0x027d, B:119:0x0283, B:120:0x0287, B:122:0x028b, B:123:0x0290, B:124:0x0295, B:128:0x02b6, B:130:0x02c1, B:125:0x0299, B:127:0x02a3, B:131:0x02ce, B:133:0x02da, B:134:0x02e6, B:136:0x02f2, B:138:0x031a, B:139:0x033a, B:140:0x033f, B:142:0x0350, B:143:0x0353, B:151:0x035f, B:152:0x0360, B:153:0x0367, B:154:0x036f, B:155:0x0384, B:157:0x03b0, B:222:0x04d2, B:207:0x049e, B:206:0x049a, B:231:0x04e9, B:232:0x04f9, B:158:0x03d3, B:162:0x03e6, B:164:0x03f6, B:166:0x040d, B:168:0x0417, B:233:0x04fa, B:235:0x050f, B:238:0x0519, B:240:0x0528, B:242:0x0534, B:244:0x0563, B:245:0x0568, B:246:0x056c, B:248:0x0570, B:250:0x057d, B:319:0x06b6, B:321:0x06be, B:323:0x06c6, B:326:0x06cb, B:327:0x06d7, B:329:0x06dd, B:331:0x06e5, B:334:0x06f5, B:336:0x06fb, B:337:0x0715, B:339:0x071b, B:341:0x0720, B:343:0x0725, B:345:0x0729, B:347:0x072f, B:349:0x0733, B:351:0x073b, B:353:0x0741, B:355:0x074b, B:358:0x0751, B:359:0x0754, B:361:0x075d, B:363:0x076f, B:365:0x0777, B:367:0x077f, B:371:0x0788, B:374:0x07b3, B:379:0x07bf, B:381:0x07c9, B:382:0x07d0, B:384:0x07e2, B:385:0x07f8, B:387:0x07fe, B:389:0x0806, B:391:0x080d, B:395:0x0816, B:400:0x0825, B:406:0x0832, B:408:0x0838, B:418:0x084b, B:419:0x084e, B:421:0x085d, B:423:0x0863, B:427:0x0870, B:429:0x0878, B:431:0x087c, B:432:0x0887, B:434:0x088d, B:487:0x096c, B:490:0x0974, B:492:0x0979, B:494:0x0981, B:496:0x098f, B:497:0x0996, B:498:0x099a, B:500:0x09a0, B:502:0x09a9, B:504:0x09af, B:506:0x09ba, B:513:0x09de, B:515:0x09e4, B:519:0x09ed, B:521:0x09f1, B:526:0x09fa, B:528:0x0a00, B:530:0x0a5c, B:532:0x0a61, B:541:0x0a72, B:543:0x0a76, B:544:0x0a7e, B:545:0x0a85, B:507:0x09c1, B:510:0x09cf, B:511:0x09d6, B:512:0x09d7, B:435:0x0896, B:469:0x0927, B:471:0x092d, B:473:0x0931, B:477:0x093a, B:479:0x0948, B:481:0x0950, B:483:0x095a, B:484:0x095f, B:485:0x0964, B:486:0x0969, B:438:0x089f, B:440:0x08a3, B:466:0x0917, B:468:0x0923, B:444:0x08ad, B:446:0x08b1, B:448:0x08c3, B:450:0x08d1, B:452:0x08dd, B:456:0x08e6, B:458:0x08f0, B:464:0x08fb, B:420:0x0856, B:253:0x058a, B:255:0x0590, B:258:0x0596, B:261:0x05a1, B:263:0x05a7, B:266:0x05b5, B:268:0x05bb, B:269:0x05c3, B:270:0x05c6, B:272:0x05ce, B:274:0x05dc, B:276:0x060f, B:278:0x0619, B:281:0x0624, B:283:0x062c, B:284:0x062f, B:286:0x0633, B:288:0x0639, B:290:0x0643, B:292:0x064d, B:294:0x065e, B:296:0x0664, B:297:0x066f, B:298:0x0672, B:300:0x067b, B:303:0x0680, B:305:0x0686, B:307:0x068e, B:309:0x0694, B:311:0x069a, B:315:0x06a8, B:317:0x06b0, B:318:0x06b3, B:249:0x057a, B:546:0x0a8a, B:550:0x0a91, B:551:0x0a99, B:555:0x0ab7), top: B:615:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:468:0x0923 A[Catch: RuntimeException -> 0x0ac9, IOException -> 0x0af4, zzru -> 0x0afc, zzfh -> 0x0b04, zzbu -> 0x0b0c, zzpr -> 0x0b23, zzhj -> 0x0b2c, TryCatch #9 {zzbu -> 0x0b0c, zzfh -> 0x0b04, zzhj -> 0x0b2c, zzpr -> 0x0b23, zzru -> 0x0afc, IOException -> 0x0af4, RuntimeException -> 0x0ac9, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:8:0x001b, B:12:0x0022, B:14:0x0026, B:16:0x002a, B:18:0x0030, B:19:0x0037, B:23:0x003e, B:25:0x0047, B:27:0x0055, B:28:0x005d, B:29:0x0068, B:30:0x007c, B:31:0x0094, B:32:0x00aa, B:34:0x00b9, B:35:0x00bd, B:36:0x00ce, B:38:0x00dd, B:39:0x00f9, B:40:0x010c, B:41:0x0115, B:43:0x0127, B:44:0x0133, B:45:0x0143, B:46:0x014c, B:50:0x0153, B:52:0x015b, B:54:0x015f, B:56:0x0165, B:58:0x016d, B:60:0x0175, B:61:0x0178, B:63:0x017d, B:70:0x018a, B:71:0x018b, B:75:0x0192, B:77:0x01a0, B:78:0x01a3, B:79:0x01a8, B:81:0x01b8, B:82:0x01bb, B:83:0x01c0, B:85:0x01d7, B:87:0x01db, B:89:0x01e9, B:93:0x01f3, B:95:0x01f8, B:97:0x01fe, B:101:0x0206, B:103:0x020e, B:105:0x0234, B:109:0x023d, B:111:0x025f, B:112:0x0262, B:113:0x0268, B:115:0x026d, B:117:0x027d, B:119:0x0283, B:120:0x0287, B:122:0x028b, B:123:0x0290, B:124:0x0295, B:128:0x02b6, B:130:0x02c1, B:125:0x0299, B:127:0x02a3, B:131:0x02ce, B:133:0x02da, B:134:0x02e6, B:136:0x02f2, B:138:0x031a, B:139:0x033a, B:140:0x033f, B:142:0x0350, B:143:0x0353, B:151:0x035f, B:152:0x0360, B:153:0x0367, B:154:0x036f, B:155:0x0384, B:157:0x03b0, B:222:0x04d2, B:207:0x049e, B:206:0x049a, B:231:0x04e9, B:232:0x04f9, B:158:0x03d3, B:162:0x03e6, B:164:0x03f6, B:166:0x040d, B:168:0x0417, B:233:0x04fa, B:235:0x050f, B:238:0x0519, B:240:0x0528, B:242:0x0534, B:244:0x0563, B:245:0x0568, B:246:0x056c, B:248:0x0570, B:250:0x057d, B:319:0x06b6, B:321:0x06be, B:323:0x06c6, B:326:0x06cb, B:327:0x06d7, B:329:0x06dd, B:331:0x06e5, B:334:0x06f5, B:336:0x06fb, B:337:0x0715, B:339:0x071b, B:341:0x0720, B:343:0x0725, B:345:0x0729, B:347:0x072f, B:349:0x0733, B:351:0x073b, B:353:0x0741, B:355:0x074b, B:358:0x0751, B:359:0x0754, B:361:0x075d, B:363:0x076f, B:365:0x0777, B:367:0x077f, B:371:0x0788, B:374:0x07b3, B:379:0x07bf, B:381:0x07c9, B:382:0x07d0, B:384:0x07e2, B:385:0x07f8, B:387:0x07fe, B:389:0x0806, B:391:0x080d, B:395:0x0816, B:400:0x0825, B:406:0x0832, B:408:0x0838, B:418:0x084b, B:419:0x084e, B:421:0x085d, B:423:0x0863, B:427:0x0870, B:429:0x0878, B:431:0x087c, B:432:0x0887, B:434:0x088d, B:487:0x096c, B:490:0x0974, B:492:0x0979, B:494:0x0981, B:496:0x098f, B:497:0x0996, B:498:0x099a, B:500:0x09a0, B:502:0x09a9, B:504:0x09af, B:506:0x09ba, B:513:0x09de, B:515:0x09e4, B:519:0x09ed, B:521:0x09f1, B:526:0x09fa, B:528:0x0a00, B:530:0x0a5c, B:532:0x0a61, B:541:0x0a72, B:543:0x0a76, B:544:0x0a7e, B:545:0x0a85, B:507:0x09c1, B:510:0x09cf, B:511:0x09d6, B:512:0x09d7, B:435:0x0896, B:469:0x0927, B:471:0x092d, B:473:0x0931, B:477:0x093a, B:479:0x0948, B:481:0x0950, B:483:0x095a, B:484:0x095f, B:485:0x0964, B:486:0x0969, B:438:0x089f, B:440:0x08a3, B:466:0x0917, B:468:0x0923, B:444:0x08ad, B:446:0x08b1, B:448:0x08c3, B:450:0x08d1, B:452:0x08dd, B:456:0x08e6, B:458:0x08f0, B:464:0x08fb, B:420:0x0856, B:253:0x058a, B:255:0x0590, B:258:0x0596, B:261:0x05a1, B:263:0x05a7, B:266:0x05b5, B:268:0x05bb, B:269:0x05c3, B:270:0x05c6, B:272:0x05ce, B:274:0x05dc, B:276:0x060f, B:278:0x0619, B:281:0x0624, B:283:0x062c, B:284:0x062f, B:286:0x0633, B:288:0x0639, B:290:0x0643, B:292:0x064d, B:294:0x065e, B:296:0x0664, B:297:0x066f, B:298:0x0672, B:300:0x067b, B:303:0x0680, B:305:0x0686, B:307:0x068e, B:309:0x0694, B:311:0x069a, B:315:0x06a8, B:317:0x06b0, B:318:0x06b3, B:249:0x057a, B:546:0x0a8a, B:550:0x0a91, B:551:0x0a99, B:555:0x0ab7), top: B:615:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:479:0x0948 A[Catch: RuntimeException -> 0x0ac9, IOException -> 0x0af4, zzru -> 0x0afc, zzfh -> 0x0b04, zzbu -> 0x0b0c, zzpr -> 0x0b23, zzhj -> 0x0b2c, TryCatch #9 {zzbu -> 0x0b0c, zzfh -> 0x0b04, zzhj -> 0x0b2c, zzpr -> 0x0b23, zzru -> 0x0afc, IOException -> 0x0af4, RuntimeException -> 0x0ac9, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:8:0x001b, B:12:0x0022, B:14:0x0026, B:16:0x002a, B:18:0x0030, B:19:0x0037, B:23:0x003e, B:25:0x0047, B:27:0x0055, B:28:0x005d, B:29:0x0068, B:30:0x007c, B:31:0x0094, B:32:0x00aa, B:34:0x00b9, B:35:0x00bd, B:36:0x00ce, B:38:0x00dd, B:39:0x00f9, B:40:0x010c, B:41:0x0115, B:43:0x0127, B:44:0x0133, B:45:0x0143, B:46:0x014c, B:50:0x0153, B:52:0x015b, B:54:0x015f, B:56:0x0165, B:58:0x016d, B:60:0x0175, B:61:0x0178, B:63:0x017d, B:70:0x018a, B:71:0x018b, B:75:0x0192, B:77:0x01a0, B:78:0x01a3, B:79:0x01a8, B:81:0x01b8, B:82:0x01bb, B:83:0x01c0, B:85:0x01d7, B:87:0x01db, B:89:0x01e9, B:93:0x01f3, B:95:0x01f8, B:97:0x01fe, B:101:0x0206, B:103:0x020e, B:105:0x0234, B:109:0x023d, B:111:0x025f, B:112:0x0262, B:113:0x0268, B:115:0x026d, B:117:0x027d, B:119:0x0283, B:120:0x0287, B:122:0x028b, B:123:0x0290, B:124:0x0295, B:128:0x02b6, B:130:0x02c1, B:125:0x0299, B:127:0x02a3, B:131:0x02ce, B:133:0x02da, B:134:0x02e6, B:136:0x02f2, B:138:0x031a, B:139:0x033a, B:140:0x033f, B:142:0x0350, B:143:0x0353, B:151:0x035f, B:152:0x0360, B:153:0x0367, B:154:0x036f, B:155:0x0384, B:157:0x03b0, B:222:0x04d2, B:207:0x049e, B:206:0x049a, B:231:0x04e9, B:232:0x04f9, B:158:0x03d3, B:162:0x03e6, B:164:0x03f6, B:166:0x040d, B:168:0x0417, B:233:0x04fa, B:235:0x050f, B:238:0x0519, B:240:0x0528, B:242:0x0534, B:244:0x0563, B:245:0x0568, B:246:0x056c, B:248:0x0570, B:250:0x057d, B:319:0x06b6, B:321:0x06be, B:323:0x06c6, B:326:0x06cb, B:327:0x06d7, B:329:0x06dd, B:331:0x06e5, B:334:0x06f5, B:336:0x06fb, B:337:0x0715, B:339:0x071b, B:341:0x0720, B:343:0x0725, B:345:0x0729, B:347:0x072f, B:349:0x0733, B:351:0x073b, B:353:0x0741, B:355:0x074b, B:358:0x0751, B:359:0x0754, B:361:0x075d, B:363:0x076f, B:365:0x0777, B:367:0x077f, B:371:0x0788, B:374:0x07b3, B:379:0x07bf, B:381:0x07c9, B:382:0x07d0, B:384:0x07e2, B:385:0x07f8, B:387:0x07fe, B:389:0x0806, B:391:0x080d, B:395:0x0816, B:400:0x0825, B:406:0x0832, B:408:0x0838, B:418:0x084b, B:419:0x084e, B:421:0x085d, B:423:0x0863, B:427:0x0870, B:429:0x0878, B:431:0x087c, B:432:0x0887, B:434:0x088d, B:487:0x096c, B:490:0x0974, B:492:0x0979, B:494:0x0981, B:496:0x098f, B:497:0x0996, B:498:0x099a, B:500:0x09a0, B:502:0x09a9, B:504:0x09af, B:506:0x09ba, B:513:0x09de, B:515:0x09e4, B:519:0x09ed, B:521:0x09f1, B:526:0x09fa, B:528:0x0a00, B:530:0x0a5c, B:532:0x0a61, B:541:0x0a72, B:543:0x0a76, B:544:0x0a7e, B:545:0x0a85, B:507:0x09c1, B:510:0x09cf, B:511:0x09d6, B:512:0x09d7, B:435:0x0896, B:469:0x0927, B:471:0x092d, B:473:0x0931, B:477:0x093a, B:479:0x0948, B:481:0x0950, B:483:0x095a, B:484:0x095f, B:485:0x0964, B:486:0x0969, B:438:0x089f, B:440:0x08a3, B:466:0x0917, B:468:0x0923, B:444:0x08ad, B:446:0x08b1, B:448:0x08c3, B:450:0x08d1, B:452:0x08dd, B:456:0x08e6, B:458:0x08f0, B:464:0x08fb, B:420:0x0856, B:253:0x058a, B:255:0x0590, B:258:0x0596, B:261:0x05a1, B:263:0x05a7, B:266:0x05b5, B:268:0x05bb, B:269:0x05c3, B:270:0x05c6, B:272:0x05ce, B:274:0x05dc, B:276:0x060f, B:278:0x0619, B:281:0x0624, B:283:0x062c, B:284:0x062f, B:286:0x0633, B:288:0x0639, B:290:0x0643, B:292:0x064d, B:294:0x065e, B:296:0x0664, B:297:0x066f, B:298:0x0672, B:300:0x067b, B:303:0x0680, B:305:0x0686, B:307:0x068e, B:309:0x0694, B:311:0x069a, B:315:0x06a8, B:317:0x06b0, B:318:0x06b3, B:249:0x057a, B:546:0x0a8a, B:550:0x0a91, B:551:0x0a99, B:555:0x0ab7), top: B:615:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:489:0x0973  */
    /* JADX WARN: Removed duplicated region for block: B:512:0x09d7 A[Catch: RuntimeException -> 0x0ac9, IOException -> 0x0af4, zzru -> 0x0afc, zzfh -> 0x0b04, zzbu -> 0x0b0c, zzpr -> 0x0b23, zzhj -> 0x0b2c, TryCatch #9 {zzbu -> 0x0b0c, zzfh -> 0x0b04, zzhj -> 0x0b2c, zzpr -> 0x0b23, zzru -> 0x0afc, IOException -> 0x0af4, RuntimeException -> 0x0ac9, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:8:0x001b, B:12:0x0022, B:14:0x0026, B:16:0x002a, B:18:0x0030, B:19:0x0037, B:23:0x003e, B:25:0x0047, B:27:0x0055, B:28:0x005d, B:29:0x0068, B:30:0x007c, B:31:0x0094, B:32:0x00aa, B:34:0x00b9, B:35:0x00bd, B:36:0x00ce, B:38:0x00dd, B:39:0x00f9, B:40:0x010c, B:41:0x0115, B:43:0x0127, B:44:0x0133, B:45:0x0143, B:46:0x014c, B:50:0x0153, B:52:0x015b, B:54:0x015f, B:56:0x0165, B:58:0x016d, B:60:0x0175, B:61:0x0178, B:63:0x017d, B:70:0x018a, B:71:0x018b, B:75:0x0192, B:77:0x01a0, B:78:0x01a3, B:79:0x01a8, B:81:0x01b8, B:82:0x01bb, B:83:0x01c0, B:85:0x01d7, B:87:0x01db, B:89:0x01e9, B:93:0x01f3, B:95:0x01f8, B:97:0x01fe, B:101:0x0206, B:103:0x020e, B:105:0x0234, B:109:0x023d, B:111:0x025f, B:112:0x0262, B:113:0x0268, B:115:0x026d, B:117:0x027d, B:119:0x0283, B:120:0x0287, B:122:0x028b, B:123:0x0290, B:124:0x0295, B:128:0x02b6, B:130:0x02c1, B:125:0x0299, B:127:0x02a3, B:131:0x02ce, B:133:0x02da, B:134:0x02e6, B:136:0x02f2, B:138:0x031a, B:139:0x033a, B:140:0x033f, B:142:0x0350, B:143:0x0353, B:151:0x035f, B:152:0x0360, B:153:0x0367, B:154:0x036f, B:155:0x0384, B:157:0x03b0, B:222:0x04d2, B:207:0x049e, B:206:0x049a, B:231:0x04e9, B:232:0x04f9, B:158:0x03d3, B:162:0x03e6, B:164:0x03f6, B:166:0x040d, B:168:0x0417, B:233:0x04fa, B:235:0x050f, B:238:0x0519, B:240:0x0528, B:242:0x0534, B:244:0x0563, B:245:0x0568, B:246:0x056c, B:248:0x0570, B:250:0x057d, B:319:0x06b6, B:321:0x06be, B:323:0x06c6, B:326:0x06cb, B:327:0x06d7, B:329:0x06dd, B:331:0x06e5, B:334:0x06f5, B:336:0x06fb, B:337:0x0715, B:339:0x071b, B:341:0x0720, B:343:0x0725, B:345:0x0729, B:347:0x072f, B:349:0x0733, B:351:0x073b, B:353:0x0741, B:355:0x074b, B:358:0x0751, B:359:0x0754, B:361:0x075d, B:363:0x076f, B:365:0x0777, B:367:0x077f, B:371:0x0788, B:374:0x07b3, B:379:0x07bf, B:381:0x07c9, B:382:0x07d0, B:384:0x07e2, B:385:0x07f8, B:387:0x07fe, B:389:0x0806, B:391:0x080d, B:395:0x0816, B:400:0x0825, B:406:0x0832, B:408:0x0838, B:418:0x084b, B:419:0x084e, B:421:0x085d, B:423:0x0863, B:427:0x0870, B:429:0x0878, B:431:0x087c, B:432:0x0887, B:434:0x088d, B:487:0x096c, B:490:0x0974, B:492:0x0979, B:494:0x0981, B:496:0x098f, B:497:0x0996, B:498:0x099a, B:500:0x09a0, B:502:0x09a9, B:504:0x09af, B:506:0x09ba, B:513:0x09de, B:515:0x09e4, B:519:0x09ed, B:521:0x09f1, B:526:0x09fa, B:528:0x0a00, B:530:0x0a5c, B:532:0x0a61, B:541:0x0a72, B:543:0x0a76, B:544:0x0a7e, B:545:0x0a85, B:507:0x09c1, B:510:0x09cf, B:511:0x09d6, B:512:0x09d7, B:435:0x0896, B:469:0x0927, B:471:0x092d, B:473:0x0931, B:477:0x093a, B:479:0x0948, B:481:0x0950, B:483:0x095a, B:484:0x095f, B:485:0x0964, B:486:0x0969, B:438:0x089f, B:440:0x08a3, B:466:0x0917, B:468:0x0923, B:444:0x08ad, B:446:0x08b1, B:448:0x08c3, B:450:0x08d1, B:452:0x08dd, B:456:0x08e6, B:458:0x08f0, B:464:0x08fb, B:420:0x0856, B:253:0x058a, B:255:0x0590, B:258:0x0596, B:261:0x05a1, B:263:0x05a7, B:266:0x05b5, B:268:0x05bb, B:269:0x05c3, B:270:0x05c6, B:272:0x05ce, B:274:0x05dc, B:276:0x060f, B:278:0x0619, B:281:0x0624, B:283:0x062c, B:284:0x062f, B:286:0x0633, B:288:0x0639, B:290:0x0643, B:292:0x064d, B:294:0x065e, B:296:0x0664, B:297:0x066f, B:298:0x0672, B:300:0x067b, B:303:0x0680, B:305:0x0686, B:307:0x068e, B:309:0x0694, B:311:0x069a, B:315:0x06a8, B:317:0x06b0, B:318:0x06b3, B:249:0x057a, B:546:0x0a8a, B:550:0x0a91, B:551:0x0a99, B:555:0x0ab7), top: B:615:0x0006 }] */
    /* JADX WARN: Type inference failed for: r2v26, types: [com.google.android.gms.internal.ads.zzgi, com.google.android.gms.internal.ads.zzws] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean handleMessage(android.os.Message r54) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 3022
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjm.handleMessage(android.os.Message):boolean");
    }
}
