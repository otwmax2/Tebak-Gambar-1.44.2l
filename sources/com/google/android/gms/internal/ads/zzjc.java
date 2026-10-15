package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjc extends zzm implements zzhu {

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final /* synthetic */ int f19875i0 = 0;
    private final zzla A;
    private final long B;
    private int C;
    private int D;
    private boolean E;
    private int F;
    private zzkq G;
    private zzcc H;
    private zzbm I;
    private zzbm J;
    private zzaf K;
    private zzaf L;
    private AudioTrack M;
    private Object N;
    private Surface O;
    private int P;
    private zzeo Q;
    private zzhb R;
    private zzhb S;
    private int T;
    private zzk U;
    private float V;
    private boolean W;
    private zzdk X;
    private boolean Y;
    private boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private zzt f19876a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final zzwl f19877b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private zzda f19878b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final zzcc f19879c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private zzbm f19880c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzdo f19881d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private zzkh f19882d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f19883e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private int f19884e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzcg f19885f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private long f19886f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzkn[] f19887g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private final zzip f19888g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzwk f19889h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private zzum f19890h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzdv f19891i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzjm f19892j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzeb f19893k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final CopyOnWriteArraySet f19894l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzck f19895m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final List f19896n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f19897o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzsr f19898p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzlb f19899q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Looper f19900r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzws f19901s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzdm f19902t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zziy f19903u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzja f19904v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final zzgv f19905w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final zzgz f19906x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final zzky f19907y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final zzkz f19908z;

    static {
        zzbh.b("media3.exoplayer");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.google.android.gms.internal.ads.zzlb, com.google.android.gms.internal.ads.zzwr, java.lang.Object] */
    @SuppressLint({"HandlerLeak"})
    public zzjc(zzht zzhtVar, zzcg zzcgVar) {
        Object obj;
        zzdo zzdoVar = new zzdo(zzdm.f15127a);
        this.f19881d = zzdoVar;
        try {
            zzee.d("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.0.0-beta03] [" + zzew.f17498e + "]");
            Context applicationContext = zzhtVar.f19818a.getApplicationContext();
            this.f19883e = applicationContext;
            ?? A = zzhtVar.f19825h.a(zzhtVar.f19819b);
            this.f19899q = A;
            this.U = zzhtVar.f19827j;
            this.P = zzhtVar.f19828k;
            this.W = false;
            this.B = zzhtVar.f19832o;
            zziy zziyVar = new zziy(this, null);
            this.f19903u = zziyVar;
            zzja zzjaVar = new zzja(null == true ? 1 : 0);
            this.f19904v = zzjaVar;
            Handler handler = new Handler(zzhtVar.f19826i);
            zzkn[] zzknVarArrA = ((zzhn) zzhtVar.f19820c).f19812o.a(handler, zziyVar, zziyVar, zziyVar, zziyVar);
            this.f19887g = zzknVarArrA;
            int length = zzknVarArrA.length;
            zzwk zzwkVar = (zzwk) zzhtVar.f19822e.zza();
            this.f19889h = zzwkVar;
            this.f19898p = zzht.a(((zzho) zzhtVar.f19821d).f19813o);
            zzww zzwwVarC = zzww.c(((zzhr) zzhtVar.f19824g).f19816o);
            this.f19901s = zzwwVarC;
            this.f19897o = zzhtVar.f19829l;
            this.G = zzhtVar.f19830m;
            Looper looper = zzhtVar.f19826i;
            this.f19900r = looper;
            zzdm zzdmVar = zzhtVar.f19819b;
            this.f19902t = zzdmVar;
            this.f19885f = zzcgVar;
            zzeb zzebVar = new zzeb(looper, zzdmVar, new zzdz() { // from class: com.google.android.gms.internal.ads.zzio
                @Override // com.google.android.gms.internal.ads.zzdz
                public final void a(Object obj2, zzaa zzaaVar) {
                }
            });
            this.f19893k = zzebVar;
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.f19894l = copyOnWriteArraySet;
            this.f19896n = new ArrayList();
            this.f19890h0 = new zzum(0);
            int length2 = zzknVarArrA.length;
            zzwl zzwlVar = new zzwl(new zzkp[2], new zzwe[2], zzcy.f14182b, null);
            this.f19877b = zzwlVar;
            this.f19895m = new zzck();
            zzca zzcaVar = new zzca();
            zzcaVar.c(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28);
            zzwkVar.c();
            zzcaVar.d(29, true);
            zzcc zzccVarE = zzcaVar.e();
            this.f19879c = zzccVarE;
            zzca zzcaVar2 = new zzca();
            zzcaVar2.b(zzccVarE);
            zzcaVar2.a(4);
            zzcaVar2.a(10);
            this.H = zzcaVar2.e();
            this.f19891i = zzdmVar.a(looper, null);
            zzip zzipVar = new zzip(this);
            this.f19888g0 = zzipVar;
            this.f19882d0 = zzkh.g(zzwlVar);
            A.w(zzcgVar, looper);
            int i10 = zzew.f17494a;
            this.f19892j = new zzjm(zzknVarArrA, zzwkVar, zzwlVar, (zzjp) zzhtVar.f19823f.zza(), zzwwVarC, 0, false, A, this.G, zzhtVar.f19835r, zzhtVar.f19831n, false, looper, zzdmVar, zzipVar, i10 < 31 ? new zzno() : zzir.a(applicationContext, this, zzhtVar.f19833p), null, null);
            this.V = 1.0f;
            zzbm zzbmVar = zzbm.f10918y;
            this.I = zzbmVar;
            this.J = zzbmVar;
            this.f19880c0 = zzbmVar;
            this.f19884e0 = -1;
            if (i10 >= 21) {
                this.T = zzew.T(applicationContext);
                obj = null;
            } else {
                AudioTrack audioTrack = this.M;
                if (audioTrack == null || audioTrack.getAudioSessionId() == 0) {
                    obj = null;
                } else {
                    this.M.release();
                    obj = null;
                    this.M = null;
                }
                if (this.M == null) {
                    this.M = new AudioTrack(3, 4000, 4, 2, 2, 0, 0);
                }
                this.T = this.M.getAudioSessionId();
            }
            this.X = zzdk.f14955b;
            this.Y = true;
            Objects.requireNonNull(A);
            zzebVar.b(A);
            zzwwVarC.a(new Handler(looper), A);
            copyOnWriteArraySet.add(zziyVar);
            this.f19905w = new zzgv(zzhtVar.f19818a, handler, zziyVar);
            this.f19906x = new zzgz(zzhtVar.f19818a, handler, zziyVar);
            zzew.u(obj, obj);
            zzky zzkyVar = new zzky(zzhtVar.f19818a, handler, zziyVar);
            this.f19907y = zzkyVar;
            int i11 = this.U.f20008a;
            zzkyVar.f(3);
            this.f19908z = new zzkz(zzhtVar.f19818a);
            this.A = new zzla(zzhtVar.f19818a);
            this.f19876a0 = k0(zzkyVar);
            this.f19878b0 = zzda.f14257e;
            this.Q = zzeo.f17031c;
            zzwkVar.b(this.U);
            o0(1, 10, Integer.valueOf(this.T));
            o0(2, 10, Integer.valueOf(this.T));
            o0(1, 3, this.U);
            o0(2, 4, Integer.valueOf(this.P));
            o0(2, 5, 0);
            o0(1, 9, Boolean.valueOf(this.W));
            o0(2, 7, zzjaVar);
            o0(6, 8, zzjaVar);
            zzdoVar.e();
        } catch (Throwable th) {
            this.f19881d.e();
            throw th;
        }
    }

    static /* bridge */ /* synthetic */ void V(zzjc zzjcVar, SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        zzjcVar.q0(surface);
        zzjcVar.O = surface;
    }

    private final int e0() {
        if (this.f19882d0.f20040a.o()) {
            return this.f19884e0;
        }
        zzkh zzkhVar = this.f19882d0;
        return zzkhVar.f20040a.n(zzkhVar.f20041b.f11010a, this.f19895m).f13166c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int f0(boolean z10, int i10) {
        return (!z10 || i10 == 1) ? 1 : 2;
    }

    private final long g0(zzkh zzkhVar) {
        if (zzkhVar.f20040a.o()) {
            return zzew.g0(this.f19886f0);
        }
        if (zzkhVar.f20041b.b()) {
            return zzkhVar.f20057r;
        }
        zzcn zzcnVar = zzkhVar.f20040a;
        zzss zzssVar = zzkhVar.f20041b;
        long j10 = zzkhVar.f20057r;
        i0(zzcnVar, zzssVar, j10);
        return j10;
    }

    private static long h0(zzkh zzkhVar) {
        zzcm zzcmVar = new zzcm();
        zzck zzckVar = new zzck();
        zzkhVar.f20040a.n(zzkhVar.f20041b.f11010a, zzckVar);
        long j10 = zzkhVar.f20042c;
        if (j10 != -9223372036854775807L) {
            return j10;
        }
        long j11 = zzkhVar.f20040a.e(zzckVar.f13166c, zzcmVar, 0L).f13472k;
        return 0L;
    }

    private final long i0(zzcn zzcnVar, zzss zzssVar, long j10) {
        zzcnVar.n(zzssVar.f11010a, this.f19895m);
        return j10;
    }

    private final Pair j0(zzcn zzcnVar, int i10, long j10) {
        if (zzcnVar.o()) {
            this.f19884e0 = i10;
            if (j10 == -9223372036854775807L) {
                j10 = 0;
            }
            this.f19886f0 = j10;
            return null;
        }
        if (i10 == -1 || i10 >= zzcnVar.c()) {
            i10 = zzcnVar.g(false);
            long j11 = zzcnVar.e(i10, this.f20159a, 0L).f13472k;
            j10 = zzew.k0(0L);
        }
        return zzcnVar.l(this.f20159a, this.f19895m, i10, zzew.g0(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzt k0(zzky zzkyVar) {
        return new zzt(0, zzkyVar.b(), zzkyVar.a());
    }

    private final zzkh l0(zzkh zzkhVar, zzcn zzcnVar, Pair pair) {
        zzss zzssVar;
        zzwl zzwlVar;
        zzkh zzkhVarB;
        zzdl.d(zzcnVar.o() || pair != null);
        zzcn zzcnVar2 = zzkhVar.f20040a;
        zzkh zzkhVarF = zzkhVar.f(zzcnVar);
        if (zzcnVar.o()) {
            zzss zzssVarH = zzkh.h();
            long jG0 = zzew.g0(this.f19886f0);
            zzkh zzkhVarA = zzkhVarF.b(zzssVarH, jG0, jG0, jG0, 0L, zzur.f20816d, this.f19877b, zzfqk.u()).a(zzssVarH);
            zzkhVarA.f20055p = zzkhVarA.f20057r;
            return zzkhVarA;
        }
        Object obj = zzkhVarF.f20041b.f11010a;
        int i10 = zzew.f17494a;
        boolean z10 = !obj.equals(pair.first);
        zzss zzssVar2 = z10 ? new zzss(pair.first) : zzkhVarF.f20041b;
        long jLongValue = ((Long) pair.second).longValue();
        long jG02 = zzew.g0(l());
        if (!zzcnVar2.o()) {
            zzcnVar2.n(obj, this.f19895m);
        }
        if (z10 || jLongValue < jG02) {
            zzdl.f(!zzssVar2.b());
            zzur zzurVar = z10 ? zzur.f20816d : zzkhVarF.f20047h;
            if (z10) {
                zzssVar = zzssVar2;
                zzwlVar = this.f19877b;
            } else {
                zzssVar = zzssVar2;
                zzwlVar = zzkhVarF.f20048i;
            }
            zzkh zzkhVarA2 = zzkhVarF.b(zzssVar, jLongValue, jLongValue, jLongValue, 0L, zzurVar, zzwlVar, z10 ? zzfqk.u() : zzkhVarF.f20049j).a(zzssVar);
            zzkhVarA2.f20055p = jLongValue;
            return zzkhVarA2;
        }
        if (jLongValue == jG02) {
            int iA = zzcnVar.a(zzkhVarF.f20050k.f11010a);
            if (iA != -1 && zzcnVar.d(iA, this.f19895m, false).f13166c == zzcnVar.n(zzssVar2.f11010a, this.f19895m).f13166c) {
                return zzkhVarF;
            }
            zzcnVar.n(zzssVar2.f11010a, this.f19895m);
            long jG = zzssVar2.b() ? this.f19895m.g(zzssVar2.f11011b, zzssVar2.f11012c) : this.f19895m.f13167d;
            zzkhVarB = zzkhVarF.b(zzssVar2, zzkhVarF.f20057r, zzkhVarF.f20057r, zzkhVarF.f20043d, jG - zzkhVarF.f20057r, zzkhVarF.f20047h, zzkhVarF.f20048i, zzkhVarF.f20049j).a(zzssVar2);
            zzkhVarB.f20055p = jG;
        } else {
            zzdl.f(!zzssVar2.b());
            long jMax = Math.max(0L, zzkhVarF.f20056q - (jLongValue - jG02));
            long j10 = zzkhVarF.f20055p;
            if (zzkhVarF.f20050k.equals(zzkhVarF.f20041b)) {
                j10 = jLongValue + jMax;
            }
            zzkhVarB = zzkhVarF.b(zzssVar2, jLongValue, jLongValue, jLongValue, jMax, zzkhVarF.f20047h, zzkhVarF.f20048i, zzkhVarF.f20049j);
            zzkhVarB.f20055p = j10;
        }
        return zzkhVarB;
    }

    private final zzkk m0(zzkj zzkjVar) {
        int iE0 = e0();
        zzjm zzjmVar = this.f19892j;
        return new zzkk(zzjmVar, zzkjVar, this.f19882d0.f20040a, iE0 == -1 ? 0 : iE0, this.f19902t, zzjmVar.R());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0(final int i10, final int i11) {
        if (i10 == this.Q.b() && i11 == this.Q.a()) {
            return;
        }
        this.Q = new zzeo(i10, i11);
        zzeb zzebVar = this.f19893k;
        zzebVar.d(24, new zzdy() { // from class: com.google.android.gms.internal.ads.zzhw
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                int i12 = i10;
                int i13 = i11;
                int i14 = zzjc.f19875i0;
                ((zzcd) obj).F0(i12, i13);
            }
        });
        zzebVar.c();
        o0(2, 13, new zzeo(i10, i11));
    }

    private final void o0(int i10, int i11, Object obj) {
        zzkn[] zzknVarArr = this.f19887g;
        int length = zzknVarArr.length;
        for (int i12 = 0; i12 < 2; i12++) {
            zzkn zzknVar = zzknVarArr[i12];
            if (zzknVar.zzb() == i10) {
                zzkk zzkkVarM0 = m0(zzknVar);
                zzkkVarM0.f(i11);
                zzkkVarM0.e(obj);
                zzkkVarM0.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p0() {
        o0(1, 2, Float.valueOf(this.V * this.f19906x.a()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q0(Object obj) {
        boolean z10;
        ArrayList arrayList = new ArrayList();
        zzkn[] zzknVarArr = this.f19887g;
        int length = zzknVarArr.length;
        int i10 = 0;
        while (true) {
            z10 = true;
            if (i10 >= 2) {
                break;
            }
            zzkn zzknVar = zzknVarArr[i10];
            if (zzknVar.zzb() == 2) {
                zzkk zzkkVarM0 = m0(zzknVar);
                zzkkVarM0.f(1);
                zzkkVarM0.e(obj);
                zzkkVarM0.d();
                arrayList.add(zzkkVarM0);
            }
            i10++;
        }
        Object obj2 = this.N;
        if (obj2 == null || obj2 == obj) {
            z10 = false;
        } else {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((zzkk) it.next()).i(this.B);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z10 = false;
            Object obj3 = this.N;
            Surface surface = this.O;
            if (obj3 == surface) {
                surface.release();
                this.O = null;
            }
        }
        this.N = obj;
        if (z10) {
            r0(false, zzhj.d(new zzjn(3), 1003));
        }
    }

    private final void r0(boolean z10, zzhj zzhjVar) {
        zzkh zzkhVar = this.f19882d0;
        zzkh zzkhVarA = zzkhVar.a(zzkhVar.f20041b);
        zzkhVarA.f20055p = zzkhVarA.f20057r;
        zzkhVarA.f20056q = 0L;
        zzkh zzkhVarE = zzkhVarA.e(1);
        if (zzhjVar != null) {
            zzkhVarE = zzkhVarE.d(zzhjVar);
        }
        zzkh zzkhVar2 = zzkhVarE;
        this.C++;
        this.f19892j.Z();
        t0(zzkhVar2, 0, 1, false, zzkhVar2.f20040a.o() && !this.f19882d0.f20040a.o(), 4, g0(zzkhVar2), -1, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s0(boolean z10, int i10, int i11) {
        int i12 = 0;
        boolean z11 = z10 && i10 != -1;
        if (z11 && i10 != 1) {
            i12 = 1;
        }
        zzkh zzkhVar = this.f19882d0;
        if (zzkhVar.f20051l == z11 && zzkhVar.f20052m == i12) {
            return;
        }
        this.C++;
        zzkh zzkhVarC = zzkhVar.c(z11, i12);
        this.f19892j.Y(z11, i12);
        t0(zzkhVarC, 0, i11, false, false, 5, -9223372036854775807L, -1, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void t0(final com.google.android.gms.internal.ads.zzkh r44, final int r45, final int r46, boolean r47, boolean r48, final int r49, long r50, int r52, boolean r53) {
        /*
            Method dump skipped, instruction units count: 994
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjc.t0(com.google.android.gms.internal.ads.zzkh, int, int, boolean, boolean, int, long, int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u0() {
        int iG = g();
        if (iG == 2 || iG == 3) {
            v0();
            boolean z10 = this.f19882d0.f20054o;
            E();
            E();
        }
    }

    private final void v0() {
        this.f19881d.b();
        if (Thread.currentThread() != this.f19900r.getThread()) {
            String strI = zzew.i("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), this.f19900r.getThread().getName());
            if (this.Y) {
                throw new IllegalStateException(strI);
            }
            zzee.f("ExoPlayerImpl", strI, this.Z ? null : new IllegalStateException());
            this.Z = true;
        }
    }

    private static boolean w0(zzkh zzkhVar) {
        return zzkhVar.f20044e == 3 && zzkhVar.f20051l && zzkhVar.f20052m == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final boolean B() {
        v0();
        return this.f19882d0.f20041b.b();
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final boolean E() {
        v0();
        return this.f19882d0.f20051l;
    }

    public final zzhj G() {
        v0();
        return this.f19882d0.f20045f;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final boolean N() {
        v0();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhu
    public final int R() {
        v0();
        int length = this.f19887g.length;
        return 2;
    }

    final /* synthetic */ void Z(zzjk zzjkVar) {
        long j10;
        boolean z10;
        long j11;
        int i10 = this.C - zzjkVar.f19921c;
        this.C = i10;
        boolean z11 = true;
        if (zzjkVar.f19922d) {
            this.D = zzjkVar.f19923e;
            this.E = true;
        }
        if (zzjkVar.f19924f) {
            this.F = zzjkVar.f19925g;
        }
        if (i10 == 0) {
            zzcn zzcnVar = zzjkVar.f19920b.f20040a;
            if (!this.f19882d0.f20040a.o() && zzcnVar.o()) {
                this.f19884e0 = -1;
                this.f19886f0 = 0L;
            }
            if (!zzcnVar.o()) {
                List listY = ((zzkl) zzcnVar).y();
                zzdl.f(listY.size() == this.f19896n.size());
                for (int i11 = 0; i11 < listY.size(); i11++) {
                    ((zzjb) this.f19896n.get(i11)).f19874b = (zzcn) listY.get(i11);
                }
            }
            if (this.E) {
                if (zzjkVar.f19920b.f20041b.equals(this.f19882d0.f20041b) && zzjkVar.f19920b.f20043d == this.f19882d0.f20057r) {
                    z11 = false;
                }
                if (z11) {
                    if (zzcnVar.o() || zzjkVar.f19920b.f20041b.b()) {
                        j11 = zzjkVar.f19920b.f20043d;
                    } else {
                        zzkh zzkhVar = zzjkVar.f19920b;
                        zzss zzssVar = zzkhVar.f20041b;
                        j11 = zzkhVar.f20043d;
                        i0(zzcnVar, zzssVar, j11);
                    }
                    z10 = z11;
                    j10 = j11;
                } else {
                    j10 = -9223372036854775807L;
                    z10 = z11;
                }
            } else {
                j10 = -9223372036854775807L;
                z10 = false;
            }
            this.E = false;
            t0(zzjkVar.f19920b, 1, this.F, false, z10, this.D, j10, -1, false);
        }
    }

    final /* synthetic */ void a0(final zzjk zzjkVar) {
        this.f19891i.i(new Runnable() { // from class: com.google.android.gms.internal.ads.zziq
            @Override // java.lang.Runnable
            public final void run() {
                this.f19864o.Z(zzjkVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final int b() {
        v0();
        if (B()) {
            return this.f19882d0.f20041b.f11011b;
        }
        return -1;
    }

    final /* synthetic */ void b0(zzcd zzcdVar) {
        zzcdVar.P0(this.H);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final int c() {
        v0();
        if (B()) {
            return this.f19882d0.f20041b.f11012c;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final int e() {
        v0();
        int iE0 = e0();
        if (iE0 == -1) {
            return 0;
        }
        return iE0;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final int f() {
        v0();
        if (this.f19882d0.f20040a.o()) {
            return 0;
        }
        zzkh zzkhVar = this.f19882d0;
        return zzkhVar.f20040a.a(zzkhVar.f20041b.f11010a);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final int g() {
        v0();
        return this.f19882d0.f20044e;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final int h() {
        v0();
        return this.f19882d0.f20052m;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final int i() {
        v0();
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final long j() {
        v0();
        if (B()) {
            zzkh zzkhVar = this.f19882d0;
            return zzkhVar.f20050k.equals(zzkhVar.f20041b) ? zzew.k0(this.f19882d0.f20055p) : m();
        }
        v0();
        if (this.f19882d0.f20040a.o()) {
            return this.f19886f0;
        }
        zzkh zzkhVar2 = this.f19882d0;
        long j10 = 0;
        if (zzkhVar2.f20050k.f11013d != zzkhVar2.f20041b.f11013d) {
            return zzew.k0(zzkhVar2.f20040a.e(e(), this.f20159a, 0L).f13473l);
        }
        long j11 = zzkhVar2.f20055p;
        if (this.f19882d0.f20050k.b()) {
            zzkh zzkhVar3 = this.f19882d0;
            zzkhVar3.f20040a.n(zzkhVar3.f20050k.f11010a, this.f19895m).h(this.f19882d0.f20050k.f11011b);
        } else {
            j10 = j11;
        }
        zzkh zzkhVar4 = this.f19882d0;
        i0(zzkhVar4.f20040a, zzkhVar4.f20050k, j10);
        return zzew.k0(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final long k() {
        v0();
        return zzew.k0(g0(this.f19882d0));
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final long l() {
        v0();
        if (!B()) {
            return k();
        }
        zzkh zzkhVar = this.f19882d0;
        zzkhVar.f20040a.n(zzkhVar.f20041b.f11010a, this.f19895m);
        zzkh zzkhVar2 = this.f19882d0;
        long j10 = zzkhVar2.f20042c;
        if (j10 == -9223372036854775807L) {
            long j11 = zzkhVar2.f20040a.e(e(), this.f20159a, 0L).f13472k;
            return zzew.k0(0L);
        }
        int i10 = zzew.f17494a;
        return zzew.k0(j10) + zzew.k0(0L);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final long m() {
        v0();
        if (B()) {
            zzkh zzkhVar = this.f19882d0;
            zzss zzssVar = zzkhVar.f20041b;
            zzkhVar.f20040a.n(zzssVar.f11010a, this.f19895m);
            return zzew.k0(this.f19895m.g(zzssVar.f11011b, zzssVar.f11012c));
        }
        zzcn zzcnVarR = r();
        if (zzcnVarR.o()) {
            return -9223372036854775807L;
        }
        return zzew.k0(zzcnVarR.e(e(), this.f20159a, 0L).f13473l);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final long n() {
        v0();
        return zzew.k0(this.f19882d0.f20056q);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final void o(boolean z10) {
        v0();
        int iB = this.f19906x.b(z10, g());
        s0(z10, iB, f0(z10, iB));
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final zzcy p() {
        v0();
        return this.f19882d0.f20048i.f20953d;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final void q() {
        v0();
        boolean zE = E();
        int iB = this.f19906x.b(zE, 2);
        s0(zE, iB, f0(zE, iB));
        zzkh zzkhVar = this.f19882d0;
        if (zzkhVar.f20044e != 1) {
            return;
        }
        zzkh zzkhVarD = zzkhVar.d(null);
        zzkh zzkhVarE = zzkhVarD.e(true == zzkhVarD.f20040a.o() ? 4 : 2);
        this.C++;
        this.f19892j.W();
        t0(zzkhVarE, 1, 1, false, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final zzcn r() {
        v0();
        return this.f19882d0.f20040a;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final void s(float f10) {
        v0();
        final float fA = zzew.A(f10, 0.0f, 1.0f);
        if (this.V == fA) {
            return;
        }
        this.V = fA;
        p0();
        zzeb zzebVar = this.f19893k;
        zzebVar.d(22, new zzdy() { // from class: com.google.android.gms.internal.ads.zzim
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                float f11 = fA;
                int i10 = zzjc.f19875i0;
                ((zzcd) obj).J0(f11);
            }
        });
        zzebVar.c();
    }

    @Override // com.google.android.gms.internal.ads.zzhu
    public final void t(zzsu zzsuVar) {
        v0();
        List listSingletonList = Collections.singletonList(zzsuVar);
        v0();
        v0();
        e0();
        k();
        this.C++;
        if (!this.f19896n.isEmpty()) {
            int size = this.f19896n.size();
            for (int i10 = size - 1; i10 >= 0; i10--) {
                this.f19896n.remove(i10);
            }
            this.f19890h0 = this.f19890h0.h(0, size);
        }
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < listSingletonList.size(); i11++) {
            zzke zzkeVar = new zzke((zzsu) listSingletonList.get(i11), this.f19897o);
            arrayList.add(zzkeVar);
            this.f19896n.add(i11, new zzjb(zzkeVar.f20023b, zzkeVar.f20022a.G()));
        }
        this.f19890h0 = this.f19890h0.g(0, arrayList.size());
        zzkl zzklVar = new zzkl(this.f19896n, this.f19890h0, null);
        if (!zzklVar.o() && zzklVar.c() < 0) {
            throw new zzag(zzklVar, -1, -9223372036854775807L);
        }
        int iG = zzklVar.g(false);
        zzkh zzkhVarL0 = l0(this.f19882d0, zzklVar, j0(zzklVar, iG, -9223372036854775807L));
        int i12 = zzkhVarL0.f20044e;
        if (iG != -1 && i12 != 1) {
            i12 = (zzklVar.o() || iG >= zzklVar.c()) ? 4 : 2;
        }
        zzkh zzkhVarE = zzkhVarL0.e(i12);
        this.f19892j.b0(arrayList, iG, zzew.g0(-9223372036854775807L), this.f19890h0);
        t0(zzkhVarE, 0, 1, false, (this.f19882d0.f20041b.f11010a.equals(zzkhVarE.f20041b.f11010a) || this.f19882d0.f20040a.o()) ? false : true, 4, g0(zzkhVarE), -1, false);
    }

    @Override // com.google.android.gms.internal.ads.zzhu
    public final void u(zzle zzleVar) {
        v0();
        this.f19899q.q(zzleVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhu
    public final void v(zzle zzleVar) {
        zzlb zzlbVar = this.f19899q;
        Objects.requireNonNull(zzleVar);
        zzlbVar.u(zzleVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final void w(Surface surface) {
        v0();
        q0(surface);
        int i10 = surface == null ? 0 : -1;
        n0(i10, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final void x() {
        AudioTrack audioTrack;
        zzee.d("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.0.0-beta03] [" + zzew.f17498e + "] [" + zzbh.a() + "]");
        v0();
        if (zzew.f17494a < 21 && (audioTrack = this.M) != null) {
            audioTrack.release();
            this.M = null;
        }
        this.f19907y.e();
        this.f19906x.d();
        if (!this.f19892j.a0()) {
            zzeb zzebVar = this.f19893k;
            zzebVar.d(10, new zzdy() { // from class: com.google.android.gms.internal.ads.zzhv
                @Override // com.google.android.gms.internal.ads.zzdy
                public final void a(Object obj) {
                    ((zzcd) obj).O0(zzhj.d(new zzjn(1), 1003));
                }
            });
            zzebVar.c();
        }
        this.f19893k.e();
        this.f19891i.b(null);
        this.f19901s.b(this.f19899q);
        zzkh zzkhVarE = this.f19882d0.e(1);
        this.f19882d0 = zzkhVarE;
        zzkh zzkhVarA = zzkhVarE.a(zzkhVarE.f20041b);
        this.f19882d0 = zzkhVarA;
        zzkhVarA.f20055p = zzkhVarA.f20057r;
        this.f19882d0.f20056q = 0L;
        this.f19899q.E();
        this.f19889h.a();
        Surface surface = this.O;
        if (surface != null) {
            surface.release();
            this.O = null;
        }
        this.X = zzdk.f14955b;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final void y() {
        v0();
        v0();
        this.f19906x.b(E(), 1);
        r0(false, null);
        this.X = new zzdk(zzfqk.u(), this.f19882d0.f20057r);
    }

    @Override // com.google.android.gms.internal.ads.zzm
    public final void z(int i10, long j10, int i11, boolean z10) {
        v0();
        zzdl.d(i10 >= 0);
        this.f19899q.y();
        zzcn zzcnVar = this.f19882d0.f20040a;
        if (zzcnVar.o() || i10 < zzcnVar.c()) {
            this.C++;
            if (B()) {
                zzee.e("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                zzjk zzjkVar = new zzjk(this.f19882d0);
                zzjkVar.a(1);
                this.f19888g0.f19863a.a0(zzjkVar);
                return;
            }
            int i12 = g() != 1 ? 2 : 1;
            int iE = e();
            zzkh zzkhVarL0 = l0(this.f19882d0.e(i12), zzcnVar, j0(zzcnVar, i10, j10));
            this.f19892j.X(zzcnVar, i10, zzew.g0(j10));
            t0(zzkhVarL0, 0, 1, true, true, 1, g0(zzkhVarL0), iE, false);
        }
    }
}
