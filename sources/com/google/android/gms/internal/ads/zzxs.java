package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import android.view.Surface;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzxs extends zzra {

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    private static final int[] f21040s1 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    private static boolean f21041t1;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    private static boolean f21042u1;
    private final Context P0;
    private final zzyd Q0;
    private final zzyo R0;
    private final zzxr S0;
    private final boolean T0;
    private zzxq U0;
    private boolean V0;
    private boolean W0;
    private Surface X0;
    private zzxv Y0;
    private boolean Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    private int f21043a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private boolean f21044b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    private boolean f21045c1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    private boolean f21046d1;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    private long f21047e1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private long f21048f1;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    private long f21049g1;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    private int f21050h1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private int f21051i1;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    private int f21052j1;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    private long f21053k1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private long f21054l1;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    private long f21055m1;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    private int f21056n1;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    private zzda f21057o1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private zzda f21058p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private int f21059q1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private zzxw f21060r1;

    public zzxs(Context context, zzqt zzqtVar, zzrc zzrcVar, long j10, boolean z10, Handler handler, zzyp zzypVar, int i10, float f10) {
        super(2, zzqtVar, zzrcVar, false, 30.0f);
        Context applicationContext = context.getApplicationContext();
        this.P0 = applicationContext;
        zzyd zzydVar = new zzyd(applicationContext);
        this.Q0 = zzydVar;
        this.R0 = new zzyo(handler, zzypVar);
        this.S0 = new zzxr(zzydVar, this);
        this.T0 = "NVIDIA".equals(zzew.f17496c);
        this.f21048f1 = -9223372036854775807L;
        this.f21043a1 = 1;
        this.f21057o1 = zzda.f14257e;
        this.f21059q1 = 0;
        this.f21058p1 = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int K0(com.google.android.gms.internal.ads.zzqx r10, com.google.android.gms.internal.ads.zzaf r11) {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxs.K0(com.google.android.gms.internal.ads.zzqx, com.google.android.gms.internal.ads.zzaf):int");
    }

    protected static int L0(zzqx zzqxVar, zzaf zzafVar) {
        if (zzafVar.f8732m == -1) {
            return K0(zzqxVar, zzafVar);
        }
        int size = zzafVar.f8733n.size();
        int length = 0;
        for (int i10 = 0; i10 < size; i10++) {
            length += ((byte[]) zzafVar.f8733n.get(i10)).length;
        }
        return zzafVar.f8732m + length;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0080 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:505:0x0789  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected static final boolean P0(java.lang.String r17) {
        /*
            Method dump skipped, instruction units count: 2928
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxs.P0(java.lang.String):boolean");
    }

    private static List Q0(Context context, zzrc zzrcVar, zzaf zzafVar, boolean z10, boolean z11) throws zzrj {
        String str = zzafVar.f8731l;
        if (str == null) {
            return zzfqk.u();
        }
        List listF = zzrp.f(str, z10, z11);
        String strE = zzrp.e(zzafVar);
        if (strE == null) {
            return zzfqk.s(listF);
        }
        List listF2 = zzrp.f(strE, z10, z11);
        if (zzew.f17494a >= 26 && "video/dolby-vision".equals(zzafVar.f8731l) && !listF2.isEmpty() && !zzxp.a(context)) {
            return zzfqk.s(listF2);
        }
        zzfqh zzfqhVarO = zzfqk.o();
        zzfqhVarO.i(listF);
        zzfqhVarO.i(listF2);
        return zzfqhVarO.j();
    }

    private final void R0(zzda zzdaVar) {
        if (zzdaVar.equals(zzda.f14257e) || zzdaVar.equals(this.f21058p1)) {
            return;
        }
        this.f21058p1 = zzdaVar;
        this.R0.t(zzdaVar);
    }

    private final void S0() {
        zzda zzdaVar = this.f21058p1;
        if (zzdaVar != null) {
            this.R0.t(zzdaVar);
        }
    }

    private final void T0() {
        Surface surface = this.X0;
        zzxv zzxvVar = this.Y0;
        if (surface == zzxvVar) {
            this.X0 = null;
        }
        zzxvVar.release();
        this.Y0 = null;
    }

    private static boolean U0(long j10) {
        return j10 < -30000;
    }

    private final boolean V0(zzqx zzqxVar) {
        return zzew.f17494a >= 23 && !P0(zzqxVar.f20512a) && (!zzqxVar.f20517f || zzxv.t(this.P0));
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void B0() {
        super.B0();
        this.f21052j1 = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzra, com.google.android.gms.internal.ads.zzha
    protected final void D() {
        this.f21058p1 = null;
        this.f21044b1 = false;
        int i10 = zzew.f17494a;
        this.Z0 = false;
        try {
            super.D();
        } finally {
            this.R0.c(this.I0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzra, com.google.android.gms.internal.ads.zzha
    protected final void E(boolean z10, boolean z11) throws zzhj {
        super.E(z10, z11);
        A();
        this.R0.e(this.I0);
        this.f21045c1 = z11;
        this.f21046d1 = false;
    }

    @Override // com.google.android.gms.internal.ads.zzra, com.google.android.gms.internal.ads.zzha
    protected final void F(long j10, boolean z10) throws zzhj {
        super.F(j10, z10);
        this.f21044b1 = false;
        int i10 = zzew.f17494a;
        this.Q0.f();
        this.f21053k1 = -9223372036854775807L;
        this.f21047e1 = -9223372036854775807L;
        this.f21051i1 = 0;
        this.f21048f1 = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final boolean F0(zzqx zzqxVar) {
        return this.X0 != null || V0(zzqxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzra, com.google.android.gms.internal.ads.zzha
    @TargetApi(17)
    protected final void G() {
        try {
            super.G();
            if (this.Y0 != null) {
                T0();
            }
        } catch (Throwable th) {
            if (this.Y0 != null) {
                T0();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzha
    protected final void I() {
        this.f21050h1 = 0;
        this.f21049g1 = SystemClock.elapsedRealtime();
        this.f21054l1 = SystemClock.elapsedRealtime() * 1000;
        this.f21055m1 = 0L;
        this.f21056n1 = 0;
        this.Q0.g();
    }

    @Override // com.google.android.gms.internal.ads.zzra, com.google.android.gms.internal.ads.zzkn
    public final boolean J() {
        zzxv zzxvVar;
        if (super.J() && (this.f21044b1 || (((zzxvVar = this.Y0) != null && this.X0 == zzxvVar) || t0() == null))) {
            this.f21048f1 = -9223372036854775807L;
            return true;
        }
        if (this.f21048f1 == -9223372036854775807L) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.f21048f1) {
            return true;
        }
        this.f21048f1 = -9223372036854775807L;
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzha
    protected final void K() {
        this.f21048f1 = -9223372036854775807L;
        if (this.f21050h1 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.R0.d(this.f21050h1, jElapsedRealtime - this.f21049g1);
            this.f21050h1 = 0;
            this.f21049g1 = jElapsedRealtime;
        }
        int i10 = this.f21056n1;
        if (i10 != 0) {
            this.R0.r(this.f21055m1, i10);
            this.f21055m1 = 0L;
            this.f21056n1 = 0;
        }
        this.Q0.h();
    }

    protected final void M0(zzqu zzquVar, int i10, long j10) {
        int i11 = zzew.f17494a;
        Trace.beginSection("skipVideoBuffer");
        zzquVar.n(i10, false);
        Trace.endSection();
        this.I0.f19765f++;
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final float N(float f10, zzaf zzafVar, zzaf[] zzafVarArr) {
        float fMax = -1.0f;
        for (zzaf zzafVar2 : zzafVarArr) {
            float f11 = zzafVar2.f8738s;
            if (f11 != -1.0f) {
                fMax = Math.max(fMax, f11);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f10;
    }

    protected final void N0(int i10, int i11) {
        zzhb zzhbVar = this.I0;
        zzhbVar.f19767h += i10;
        int i12 = i10 + i11;
        zzhbVar.f19766g += i12;
        this.f21050h1 += i12;
        int i13 = this.f21051i1 + i12;
        this.f21051i1 = i13;
        zzhbVar.f19768i = Math.max(i13, zzhbVar.f19768i);
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final int O(zzrc zzrcVar, zzaf zzafVar) throws zzrj {
        boolean z10;
        if (!zzbt.h(zzafVar.f8731l)) {
            return 128;
        }
        int i10 = 0;
        boolean z11 = zzafVar.f8734o != null;
        List listQ0 = Q0(this.P0, zzrcVar, zzafVar, z11, false);
        if (z11 && listQ0.isEmpty()) {
            listQ0 = Q0(this.P0, zzrcVar, zzafVar, false, false);
        }
        if (listQ0.isEmpty()) {
            return 129;
        }
        if (!zzra.G0(zzafVar)) {
            return 130;
        }
        zzqx zzqxVar = (zzqx) listQ0.get(0);
        boolean zE = zzqxVar.e(zzafVar);
        if (zE) {
            z10 = true;
        } else {
            for (int i11 = 1; i11 < listQ0.size(); i11++) {
                zzqx zzqxVar2 = (zzqx) listQ0.get(i11);
                if (zzqxVar2.e(zzafVar)) {
                    zzqxVar = zzqxVar2;
                    z10 = false;
                    zE = true;
                    break;
                }
            }
            z10 = true;
        }
        int i12 = true != zE ? 3 : 4;
        int i13 = true != zzqxVar.f(zzafVar) ? 8 : 16;
        int i14 = true != zzqxVar.f20518g ? 0 : 64;
        int i15 = true != z10 ? 0 : 128;
        if (zzew.f17494a >= 26 && "video/dolby-vision".equals(zzafVar.f8731l) && !zzxp.a(this.P0)) {
            i15 = 256;
        }
        if (zE) {
            List listQ02 = Q0(this.P0, zzrcVar, zzafVar, z11, true);
            if (!listQ02.isEmpty()) {
                zzqx zzqxVar3 = (zzqx) zzrp.g(listQ02, zzafVar).get(0);
                if (zzqxVar3.e(zzafVar) && zzqxVar3.f(zzafVar)) {
                    i10 = 32;
                }
            }
        }
        return i12 | i13 | i10 | i14 | i15;
    }

    protected final void O0(long j10) {
        zzhb zzhbVar = this.I0;
        zzhbVar.f19770k += j10;
        zzhbVar.f19771l++;
        this.f21055m1 += j10;
        this.f21056n1++;
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final zzhc P(zzqx zzqxVar, zzaf zzafVar, zzaf zzafVar2) {
        int i10;
        int i11;
        zzhc zzhcVarB = zzqxVar.b(zzafVar, zzafVar2);
        int i12 = zzhcVarB.f19776e;
        int i13 = zzafVar2.f8736q;
        zzxq zzxqVar = this.U0;
        if (i13 > zzxqVar.f21031a || zzafVar2.f8737r > zzxqVar.f21032b) {
            i12 |= 256;
        }
        if (L0(zzqxVar, zzafVar2) > this.U0.f21033c) {
            i12 |= 64;
        }
        String str = zzqxVar.f20512a;
        if (i12 != 0) {
            i11 = i12;
            i10 = 0;
        } else {
            i10 = zzhcVarB.f19775d;
            i11 = 0;
        }
        return new zzhc(str, zzafVar, zzafVar2, i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final zzhc Q(zzjo zzjoVar) throws zzhj {
        zzhc zzhcVarQ = super.Q(zzjoVar);
        this.R0.f(zzjoVar.f19944a, zzhcVarQ);
        return zzhcVarQ;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0114, code lost:
    
        if (true == r12) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0116, code lost:
    
        r13 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0118, code lost:
    
        r13 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0119, code lost:
    
        if (true == r12) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x011b, code lost:
    
        r4 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x011f, code lost:
    
        r3 = new android.graphics.Point(r13, r4);
     */
    @Override // com.google.android.gms.internal.ads.zzra
    @android.annotation.TargetApi(17)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final com.google.android.gms.internal.ads.zzqs T(com.google.android.gms.internal.ads.zzqx r20, com.google.android.gms.internal.ads.zzaf r21, android.media.MediaCrypto r22, float r23) {
        /*
            Method dump skipped, instruction units count: 594
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxs.T(com.google.android.gms.internal.ads.zzqx, com.google.android.gms.internal.ads.zzaf, android.media.MediaCrypto, float):com.google.android.gms.internal.ads.zzqs");
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final List U(zzrc zzrcVar, zzaf zzafVar, boolean z10) throws zzrj {
        return zzrp.g(Q0(this.P0, zzrcVar, zzafVar, false, false), zzafVar);
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void W(Exception exc) {
        zzee.c("MediaCodecVideoRenderer", "Video codec error", exc);
        this.R0.s(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void X(String str, zzqs zzqsVar, long j10, long j11) {
        this.R0.a(str, j10, j11);
        this.V0 = P0(str);
        zzqx zzqxVarV0 = v0();
        Objects.requireNonNull(zzqxVarV0);
        boolean z10 = false;
        if (zzew.f17494a >= 29 && "video/x-vnd.on2.vp9".equals(zzqxVarV0.f20513b)) {
            MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrH = zzqxVarV0.h();
            int length = codecProfileLevelArrH.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                if (codecProfileLevelArrH[i10].profile == 16384) {
                    z10 = true;
                    break;
                }
                i10++;
            }
        }
        this.W0 = z10;
        this.S0.a(str);
    }

    final void X0() {
        this.f21046d1 = true;
        if (this.f21044b1) {
            return;
        }
        this.f21044b1 = true;
        this.R0.q(this.X0);
        this.Z0 = true;
    }

    protected final void Y0(zzqu zzquVar, int i10, long j10) {
        R0(this.f21057o1);
        int i11 = zzew.f17494a;
        Trace.beginSection("releaseOutputBuffer");
        zzquVar.n(i10, true);
        Trace.endSection();
        this.f21054l1 = SystemClock.elapsedRealtime() * 1000;
        this.I0.f19764e++;
        this.f21051i1 = 0;
        X0();
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void Z(String str) {
        this.R0.b(str);
    }

    protected final void Z0(zzqu zzquVar, int i10, long j10, long j11) {
        R0(this.f21057o1);
        int i11 = zzew.f17494a;
        Trace.beginSection("releaseOutputBuffer");
        zzquVar.h(i10, j11);
        Trace.endSection();
        this.f21054l1 = SystemClock.elapsedRealtime() * 1000;
        this.I0.f19764e++;
        this.f21051i1 = 0;
        X0();
    }

    @Override // com.google.android.gms.internal.ads.zzra, com.google.android.gms.internal.ads.zzha, com.google.android.gms.internal.ads.zzkn
    public final void i(float f10, float f11) throws zzhj {
        super.i(f10, f11);
        this.Q0.e(f10);
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void k0(zzaf zzafVar, MediaFormat mediaFormat) {
        zzqu zzquVarT0 = t0();
        if (zzquVarT0 != null) {
            zzquVarT0.m(this.f21043a1);
        }
        Objects.requireNonNull(mediaFormat);
        int i10 = 0;
        boolean z10 = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        int integer = z10 ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger(ViewHierarchyConstants.DIMENSION_WIDTH_KEY);
        int integer2 = z10 ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY);
        float f10 = zzafVar.f8740u;
        if (zzew.f17494a >= 21) {
            int i11 = zzafVar.f8739t;
            if (i11 == 90 || i11 == 270) {
                f10 = 1.0f / f10;
                int i12 = integer2;
                integer2 = integer;
                integer = i12;
            }
        } else {
            i10 = zzafVar.f8739t;
        }
        this.f21057o1 = new zzda(integer, integer2, i10, f10);
        this.Q0.c(zzafVar.f8738s);
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void m0() {
        this.f21044b1 = false;
        int i10 = zzew.f17494a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.zzqu] */
    /* JADX WARN: Type inference failed for: r6v6, types: [com.google.android.gms.internal.ads.zzyd] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [android.view.Surface] */
    /* JADX WARN: Type inference failed for: r7v6, types: [com.google.android.gms.internal.ads.zzxv] */
    /* JADX WARN: Type inference failed for: r7v7 */
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
    @Override // com.google.android.gms.internal.ads.zzha, com.google.android.gms.internal.ads.zzkj
    public final void n(int i10, Object obj) throws zzhj {
        if (i10 != 1) {
            if (i10 == 7) {
                this.f21060r1 = (zzxw) obj;
                return;
            }
            if (i10 == 10) {
                int iIntValue = ((Integer) obj).intValue();
                if (this.f21059q1 != iIntValue) {
                    this.f21059q1 = iIntValue;
                    return;
                }
                return;
            }
            if (i10 == 13) {
                Objects.requireNonNull(obj);
                return;
            }
            if (i10 != 4) {
                if (i10 != 5) {
                    return;
                }
                this.Q0.j(((Integer) obj).intValue());
                return;
            } else {
                int iIntValue2 = ((Integer) obj).intValue();
                this.f21043a1 = iIntValue2;
                zzqu zzquVarT0 = t0();
                if (zzquVarT0 != null) {
                    zzquVarT0.m(iIntValue2);
                    return;
                }
                return;
            }
        }
        ?? H = obj instanceof Surface ? (Surface) obj : 0;
        if (H == 0) {
            zzxv zzxvVar = this.Y0;
            if (zzxvVar != null) {
                H = zzxvVar;
            } else {
                zzqx zzqxVarV0 = v0();
                if (zzqxVarV0 != null && V0(zzqxVarV0)) {
                    H = zzxv.h(this.P0, zzqxVarV0.f20517f);
                    this.Y0 = H;
                }
            }
        }
        if (this.X0 == H) {
            if (H == 0 || H == this.Y0) {
                return;
            }
            S0();
            if (this.Z0) {
                this.R0.q(this.X0);
                return;
            }
            return;
        }
        this.X0 = H;
        this.Q0.i(H);
        this.Z0 = false;
        int iF = f();
        ?? T0 = t0();
        if (T0 != 0) {
            if (zzew.f17494a < 23 || H == 0 || this.V0) {
                A0();
                x0();
            } else {
                T0.l(H);
            }
        }
        if (H == 0 || H == this.Y0) {
            this.f21058p1 = null;
            this.f21044b1 = false;
            int i11 = zzew.f17494a;
        } else {
            S0();
            this.f21044b1 = false;
            int i12 = zzew.f17494a;
            if (iF == 2) {
                this.f21048f1 = -9223372036854775807L;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void n0(zzgr zzgrVar) throws zzhj {
        this.f21052j1++;
        int i10 = zzew.f17494a;
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final boolean p0(long j10, long j11, zzqu zzquVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, zzaf zzafVar) throws zzhj {
        boolean z12;
        int iY;
        Objects.requireNonNull(zzquVar);
        if (this.f21047e1 == -9223372036854775807L) {
            this.f21047e1 = j10;
        }
        if (j12 != this.f21053k1) {
            this.Q0.d(j12);
            this.f21053k1 = j12;
        }
        long jS0 = s0();
        long j13 = j12 - jS0;
        if (z10 && !z11) {
            M0(zzquVar, i10, j13);
            return true;
        }
        boolean z13 = f() == 2;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        double dR0 = r0();
        double d10 = j12 - j10;
        Double.isNaN(d10);
        Double.isNaN(dR0);
        long j14 = (long) (d10 / dR0);
        if (z13) {
            j14 -= jElapsedRealtime - j11;
        }
        if (this.X0 == this.Y0) {
            if (!U0(j14)) {
                return false;
            }
            M0(zzquVar, i10, j13);
            O0(j14);
            return true;
        }
        long j15 = jElapsedRealtime - this.f21054l1;
        boolean z14 = this.f21046d1 ? !this.f21044b1 : z13 || this.f21045c1;
        if (this.f21048f1 == -9223372036854775807L && j10 >= jS0 && (z14 || (z13 && U0(j14) && j15 > 100000))) {
            long jNanoTime = System.nanoTime();
            if (zzew.f17494a >= 21) {
                Z0(zzquVar, i10, j13, jNanoTime);
            } else {
                Y0(zzquVar, i10, j13);
            }
            O0(j14);
            return true;
        }
        if (!z13 || j10 == this.f21047e1) {
            return false;
        }
        long jNanoTime2 = System.nanoTime();
        long jA = this.Q0.a((j14 * 1000) + jNanoTime2);
        long j16 = (jA - jNanoTime2) / 1000;
        long j17 = this.f21048f1;
        if (j16 < -500000 && !z11 && (iY = y(j10)) != 0) {
            if (j17 != -9223372036854775807L) {
                zzhb zzhbVar = this.I0;
                zzhbVar.f19763d += iY;
                zzhbVar.f19765f += this.f21052j1;
            } else {
                this.I0.f19769j++;
                N0(iY, this.f21052j1);
            }
            D0();
            return false;
        }
        if (U0(j16) && !z11) {
            if (j17 != -9223372036854775807L) {
                M0(zzquVar, i10, j13);
                z12 = true;
            } else {
                int i13 = zzew.f17494a;
                Trace.beginSection("dropVideoBuffer");
                zzquVar.n(i10, false);
                Trace.endSection();
                z12 = true;
                N0(0, 1);
            }
            O0(j16);
            return z12;
        }
        if (zzew.f17494a >= 21) {
            if (j16 >= 50000) {
                return false;
            }
            Z0(zzquVar, i10, j13, jA);
            O0(j16);
            return true;
        }
        if (j16 >= 30000) {
            return false;
        }
        if (j16 > 11000) {
            try {
                Thread.sleep(((-10000) + j16) / 1000);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return false;
            }
        }
        Y0(zzquVar, i10, j13);
        O0(j16);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzkn, com.google.android.gms.internal.ads.zzko
    public final String s() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final zzqv u0(Throwable th, zzqx zzqxVar) {
        return new zzxo(th, zzqxVar, this.X0);
    }

    @Override // com.google.android.gms.internal.ads.zzra
    @TargetApi(29)
    protected final void w0(zzgr zzgrVar) throws zzhj {
        if (this.W0) {
            ByteBuffer byteBuffer = zzgrVar.f19510f;
            Objects.requireNonNull(byteBuffer);
            if (byteBuffer.remaining() >= 7) {
                byte b10 = byteBuffer.get();
                short s10 = byteBuffer.getShort();
                short s11 = byteBuffer.getShort();
                byte b11 = byteBuffer.get();
                byte b12 = byteBuffer.get();
                byteBuffer.position(0);
                if (b10 == -75 && s10 == 60 && s11 == 1 && b11 == 4) {
                    if (b12 == 0 || b12 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        zzqu zzquVarT0 = t0();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        zzquVarT0.n0(bundle);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void y0(long j10) {
        super.y0(j10);
        this.f21052j1--;
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void z0(zzaf zzafVar) throws zzhj {
        this.S0.b(zzafVar);
    }
}
