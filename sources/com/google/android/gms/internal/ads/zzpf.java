package com.google.android.gms.internal.ads;

import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzpf implements zzoi {
    private static final Object V = new Object();
    private static ExecutorService W;
    private static int X;
    private int A;
    private boolean B;
    private boolean C;
    private long D;
    private float E;
    private ByteBuffer F;
    private int G;
    private ByteBuffer H;
    private byte[] I;
    private int J;
    private boolean K;
    private boolean L;
    private boolean M;
    private boolean N;
    private int O;
    private zzl P;
    private zzor Q;
    private long R;
    private boolean S;
    private boolean T;
    private final zzov U;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zznq f20386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzon f20387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzpo f20388c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfqk f20389d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzfqk f20390e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzdo f20391f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzom f20392g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ArrayDeque f20393h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private zzpd f20394i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzoy f20395j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzoy f20396k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzos f20397l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private zzno f20398m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private zzof f20399n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzou f20400o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private zzou f20401p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzdb f20402q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private AudioTrack f20403r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private zzk f20404s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private zzox f20405t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private zzox f20406u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzby f20407v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f20408w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f20409x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f20410y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f20411z;

    /* synthetic */ zzpf(zzot zzotVar, zzpe zzpeVar) {
        this.f20386a = zzotVar.f20357a;
        this.U = zzotVar.f20359c;
        int i10 = zzew.f17494a;
        this.f20397l = zzotVar.f20358b;
        zzdo zzdoVar = new zzdo(zzdm.f15127a);
        this.f20391f = zzdoVar;
        zzdoVar.e();
        this.f20392g = new zzom(new zzpa(this, null));
        zzon zzonVar = new zzon();
        this.f20387b = zzonVar;
        zzpo zzpoVar = new zzpo();
        this.f20388c = zzpoVar;
        this.f20389d = zzfqk.y(new zzdi(), zzonVar, zzpoVar);
        this.f20390e = zzfqk.v(new zzpn());
        this.E = 1.0f;
        this.f20404s = zzk.f20001c;
        this.O = 0;
        this.P = new zzl(0, 0.0f);
        zzby zzbyVar = zzby.f11503d;
        this.f20406u = new zzox(zzbyVar, false, 0L, 0L, null);
        this.f20407v = zzbyVar;
        this.f20393h = new ArrayDeque();
        this.f20395j = new zzoy(100L);
        this.f20396k = new zzoy(100L);
    }

    private final boolean A() {
        return this.f20403r != null;
    }

    private static boolean B(AudioTrack audioTrack) {
        return zzew.f17494a >= 29 && audioTrack.isOffloadedPlayback();
    }

    private final boolean C() {
        if (!"audio/raw".equals(this.f20401p.f20360a.f8731l)) {
            return false;
        }
        int i10 = this.f20401p.f20360a.A;
        return true;
    }

    static /* synthetic */ void k(AudioTrack audioTrack, zzdo zzdoVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            zzdoVar.e();
            synchronized (V) {
                int i10 = X - 1;
                X = i10;
                if (i10 == 0) {
                    W.shutdown();
                    W = null;
                }
            }
        } catch (Throwable th) {
            zzdoVar.e();
            synchronized (V) {
                int i11 = X - 1;
                X = i11;
                if (i11 == 0) {
                    W.shutdown();
                    W = null;
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long m() {
        zzou zzouVar = this.f20401p;
        return zzouVar.f20362c == 0 ? this.f20408w / ((long) zzouVar.f20361b) : this.f20409x;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long n() {
        zzou zzouVar = this.f20401p;
        return zzouVar.f20362c == 0 ? this.f20410y / ((long) zzouVar.f20363d) : this.f20411z;
    }

    private final AudioTrack o(zzou zzouVar) throws zzoe {
        try {
            return zzouVar.b(false, this.f20404s, this.O);
        } catch (zzoe e10) {
            zzof zzofVar = this.f20399n;
            if (zzofVar != null) {
                zzofVar.a(e10);
            }
            throw e10;
        }
    }

    private final zzox p() {
        zzox zzoxVar = this.f20405t;
        return zzoxVar != null ? zzoxVar : !this.f20393h.isEmpty() ? (zzox) this.f20393h.getLast() : this.f20406u;
    }

    private final void q(long j10) {
        zzby zzbyVar;
        boolean z10;
        if (C()) {
            zzov zzovVar = this.U;
            zzbyVar = p().f20372a;
            zzovVar.c(zzbyVar);
        } else {
            zzbyVar = zzby.f11503d;
        }
        zzby zzbyVar2 = zzbyVar;
        if (C()) {
            zzov zzovVar2 = this.U;
            z10 = p().f20373b;
            zzovVar2.d(z10);
        } else {
            z10 = false;
        }
        this.f20393h.add(new zzox(zzbyVar2, z10, Math.max(0L, j10), this.f20401p.a(n()), null));
        x();
        zzof zzofVar = this.f20399n;
        if (zzofVar != null) {
            ((zzpk) zzofVar).f20412a.Q0.s(z10);
        }
    }

    private final void r() {
        if (this.L) {
            return;
        }
        this.L = true;
        this.f20392g.c(n());
        this.f20403r.stop();
    }

    private final void s(long j10) throws Exception {
        ByteBuffer byteBufferB;
        if (!this.f20402q.h()) {
            ByteBuffer byteBuffer = this.F;
            if (byteBuffer == null) {
                byteBuffer = zzde.f14420a;
            }
            y(byteBuffer, j10);
            return;
        }
        while (!this.f20402q.g()) {
            do {
                byteBufferB = this.f20402q.b();
                if (byteBufferB.hasRemaining()) {
                    y(byteBufferB, j10);
                } else {
                    ByteBuffer byteBuffer2 = this.F;
                    if (byteBuffer2 == null || !byteBuffer2.hasRemaining()) {
                        return;
                    } else {
                        this.f20402q.e(this.F);
                    }
                }
            } while (!byteBufferB.hasRemaining());
            return;
        }
    }

    private final void u(zzby zzbyVar, boolean z10) {
        zzox zzoxVarP = p();
        if (zzbyVar.equals(zzoxVarP.f20372a) && z10 == zzoxVarP.f20373b) {
            return;
        }
        zzox zzoxVar = new zzox(zzbyVar, z10, -9223372036854775807L, -9223372036854775807L, null);
        if (A()) {
            this.f20405t = zzoxVar;
        } else {
            this.f20406u = zzoxVar;
        }
    }

    private final void w() {
        if (A()) {
            if (zzew.f17494a >= 21) {
                this.f20403r.setVolume(this.E);
                return;
            }
            AudioTrack audioTrack = this.f20403r;
            float f10 = this.E;
            audioTrack.setStereoVolume(f10, f10);
        }
    }

    private final void x() {
        zzdb zzdbVar = this.f20401p.f20368i;
        this.f20402q = zzdbVar;
        zzdbVar.c();
    }

    private final void y(ByteBuffer byteBuffer, long j10) throws Exception {
        int iWrite;
        zzof zzofVar;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.H;
            if (byteBuffer2 != null) {
                zzdl.d(byteBuffer2 == byteBuffer);
            } else {
                this.H = byteBuffer;
                if (zzew.f17494a < 21) {
                    int iRemaining = byteBuffer.remaining();
                    byte[] bArr = this.I;
                    if (bArr == null || bArr.length < iRemaining) {
                        this.I = new byte[iRemaining];
                    }
                    int iPosition = byteBuffer.position();
                    byteBuffer.get(this.I, 0, iRemaining);
                    byteBuffer.position(iPosition);
                    this.J = 0;
                }
            }
            int iRemaining2 = byteBuffer.remaining();
            int i10 = zzew.f17494a;
            if (i10 < 21) {
                int iA = this.f20392g.a(this.f20410y);
                if (iA > 0) {
                    iWrite = this.f20403r.write(this.I, this.J, Math.min(iRemaining2, iA));
                    if (iWrite > 0) {
                        this.J += iWrite;
                        byteBuffer.position(byteBuffer.position() + iWrite);
                    }
                } else {
                    iWrite = 0;
                }
            } else {
                iWrite = this.f20403r.write(byteBuffer, iRemaining2, 1);
            }
            this.R = SystemClock.elapsedRealtime();
            if (iWrite < 0) {
                zzoh zzohVar = new zzoh(iWrite, this.f20401p.f20360a, ((i10 >= 24 && iWrite == -6) || iWrite == -32) && this.f20411z > 0);
                zzof zzofVar2 = this.f20399n;
                if (zzofVar2 != null) {
                    zzofVar2.a(zzohVar);
                }
                if (zzohVar.f20312p) {
                    throw zzohVar;
                }
                this.f20396k.b(zzohVar);
                return;
            }
            this.f20396k.a();
            if (B(this.f20403r)) {
                if (this.f20411z > 0) {
                    this.T = false;
                }
                if (this.M && (zzofVar = this.f20399n) != null && iWrite < iRemaining2 && !this.T) {
                    zzpl zzplVar = ((zzpk) zzofVar).f20412a;
                    if (zzplVar.Z0 != null) {
                        zzplVar.Z0.zza();
                    }
                }
            }
            int i11 = this.f20401p.f20362c;
            if (i11 == 0) {
                this.f20410y += (long) iWrite;
            }
            if (iWrite == iRemaining2) {
                if (i11 != 0) {
                    zzdl.f(byteBuffer == this.F);
                    this.f20411z += ((long) this.A) * ((long) this.G);
                }
                this.H = null;
            }
        }
    }

    private final boolean z() throws Exception {
        if (!this.f20402q.h()) {
            ByteBuffer byteBuffer = this.H;
            if (byteBuffer == null) {
                return true;
            }
            y(byteBuffer, Long.MIN_VALUE);
            return this.H == null;
        }
        this.f20402q.d();
        s(Long.MIN_VALUE);
        if (!this.f20402q.g()) {
            return false;
        }
        ByteBuffer byteBuffer2 = this.H;
        return byteBuffer2 == null || !byteBuffer2.hasRemaining();
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final long M0(boolean z10) {
        long jD0;
        if (!A() || this.C) {
            return Long.MIN_VALUE;
        }
        long jMin = Math.min(this.f20392g.b(z10), this.f20401p.a(n()));
        while (!this.f20393h.isEmpty() && jMin >= ((zzox) this.f20393h.getFirst()).f20375d) {
            this.f20406u = (zzox) this.f20393h.remove();
        }
        zzox zzoxVar = this.f20406u;
        long j10 = jMin - zzoxVar.f20375d;
        if (zzoxVar.f20372a.equals(zzby.f11503d)) {
            jD0 = this.f20406u.f20374c + j10;
        } else if (this.f20393h.isEmpty()) {
            jD0 = this.U.a(j10) + this.f20406u.f20374c;
        } else {
            zzox zzoxVar2 = (zzox) this.f20393h.getFirst();
            jD0 = zzoxVar2.f20374c - zzew.d0(zzoxVar2.f20375d - jMin, this.f20406u.f20372a.f11507a);
        }
        return jD0 + this.f20401p.a(this.U.b());
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final int N0(zzaf zzafVar) {
        if (!"audio/raw".equals(zzafVar.f8731l)) {
            if (!this.S) {
                int i10 = zzew.f17494a;
            }
            return this.f20386a.a(zzafVar) != null ? 2 : 0;
        }
        if (zzew.w(zzafVar.A)) {
            return zzafVar.A != 2 ? 1 : 2;
        }
        zzee.e("DefaultAudioSink", "Invalid PCM encoding: " + zzafVar.A);
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02b2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0394 A[Catch: zzoe -> 0x0398, TryCatch #2 {zzoe -> 0x0398, blocks: (B:37:0x0089, B:50:0x00d4, B:52:0x00dc, B:54:0x00e2, B:55:0x00e9, B:56:0x00fb, B:58:0x00ff, B:60:0x0103, B:61:0x0108, B:65:0x011e, B:69:0x0136, B:70:0x013b, B:46:0x009e, B:48:0x00a7, B:179:0x038c, B:181:0x0394, B:182:0x0397, B:40:0x0092, B:42:0x0097), top: B:196:0x0089, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:201:? A[Catch: zzoe -> 0x0398, SYNTHETIC, TRY_LEAVE, TryCatch #2 {zzoe -> 0x0398, blocks: (B:37:0x0089, B:50:0x00d4, B:52:0x00dc, B:54:0x00e2, B:55:0x00e9, B:56:0x00fb, B:58:0x00ff, B:60:0x0103, B:61:0x0108, B:65:0x011e, B:69:0x0136, B:70:0x013b, B:46:0x009e, B:48:0x00a7, B:179:0x038c, B:181:0x0394, B:182:0x0397, B:40:0x0092, B:42:0x0097), top: B:196:0x0089, inners: #3 }] */
    @Override // com.google.android.gms.internal.ads.zzoi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean O0(java.nio.ByteBuffer r25, long r26, int r28) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 972
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpf.O0(java.nio.ByteBuffer, long, int):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x015b  */
    @Override // com.google.android.gms.internal.ads.zzoi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void P0(com.google.android.gms.internal.ads.zzaf r19, int r20, int[] r21) throws com.google.android.gms.internal.ads.zzod {
        /*
            Method dump skipped, instruction units count: 434
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpf.P0(com.google.android.gms.internal.ads.zzaf, int, int[]):void");
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final boolean Q0(zzaf zzafVar) {
        return N0(zzafVar) != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void R0(int i10) {
        if (this.O != i10) {
            this.O = i10;
            this.N = i10 != 0;
            b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void S0(zzk zzkVar) {
        if (this.f20404s.equals(zzkVar)) {
            return;
        }
        this.f20404s = zzkVar;
        b();
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void T0(zzno zznoVar) {
        this.f20398m = zznoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void U0(boolean z10) {
        u(p().f20372a, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void V0(float f10) {
        if (this.E != f10) {
            this.E = f10;
            w();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void W0(zzof zzofVar) {
        this.f20399n = zzofVar;
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void X0(AudioDeviceInfo audioDeviceInfo) {
        zzor zzorVar = audioDeviceInfo == null ? null : new zzor(audioDeviceInfo);
        this.Q = zzorVar;
        AudioTrack audioTrack = this.f20403r;
        if (audioTrack != null) {
            zzop.a(audioTrack, zzorVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void Y0(zzl zzlVar) {
        if (this.P.equals(zzlVar)) {
            return;
        }
        int i10 = zzlVar.f20104a;
        if (this.f20403r != null) {
            int i11 = this.P.f20104a;
        }
        this.P = zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void Z0(zzby zzbyVar) {
        u(new zzby(zzew.A(zzbyVar.f11507a, 0.1f, 8.0f), zzew.A(zzbyVar.f11508b, 0.1f, 8.0f)), p().f20373b);
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final zzby a() {
        return p().f20372a;
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void b() {
        if (A()) {
            this.f20408w = 0L;
            this.f20409x = 0L;
            this.f20410y = 0L;
            this.f20411z = 0L;
            this.T = false;
            this.A = 0;
            this.f20406u = new zzox(p().f20372a, p().f20373b, 0L, 0L, null);
            this.D = 0L;
            this.f20405t = null;
            this.f20393h.clear();
            this.F = null;
            this.G = 0;
            this.H = null;
            this.L = false;
            this.K = false;
            this.f20388c.o();
            x();
            if (this.f20392g.h()) {
                this.f20403r.pause();
            }
            if (B(this.f20403r)) {
                zzpd zzpdVar = this.f20394i;
                Objects.requireNonNull(zzpdVar);
                zzpdVar.b(this.f20403r);
            }
            if (zzew.f17494a < 21 && !this.N) {
                this.O = 0;
            }
            zzou zzouVar = this.f20400o;
            if (zzouVar != null) {
                this.f20401p = zzouVar;
                this.f20400o = null;
            }
            this.f20392g.d();
            final AudioTrack audioTrack = this.f20403r;
            final zzdo zzdoVar = this.f20391f;
            zzdoVar.c();
            synchronized (V) {
                if (W == null) {
                    W = zzew.r("ExoPlayer:AudioTrackReleaseThread");
                }
                X++;
                W.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzoo
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzpf.k(audioTrack, zzdoVar);
                    }
                });
            }
            this.f20403r = null;
        }
        this.f20396k.a();
        this.f20395j.a();
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void c() {
        this.B = true;
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void e() {
        this.M = false;
        if (A() && this.f20392g.k()) {
            this.f20403r.pause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void f() {
        this.M = true;
        if (A()) {
            this.f20392g.f();
            this.f20403r.play();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void g() throws zzoh {
        if (!this.K && A() && z()) {
            r();
            this.K = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final void h() {
        b();
        zzfqk zzfqkVar = this.f20389d;
        int size = zzfqkVar.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((zzde) zzfqkVar.get(i10)).c();
        }
        zzfqk zzfqkVar2 = this.f20390e;
        int size2 = zzfqkVar2.size();
        for (int i11 = 0; i11 < size2; i11++) {
            ((zzde) zzfqkVar2.get(i11)).c();
        }
        zzdb zzdbVar = this.f20402q;
        if (zzdbVar != null) {
            zzdbVar.f();
        }
        this.M = false;
        this.S = false;
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final boolean t() {
        return !A() || (this.K && !v());
    }

    @Override // com.google.android.gms.internal.ads.zzoi
    public final boolean v() {
        return A() && this.f20392g.g(n());
    }
}
