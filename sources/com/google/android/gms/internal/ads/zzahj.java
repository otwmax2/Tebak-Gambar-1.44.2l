package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzahj implements zzahn {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final byte[] f9048v = {73, 68, 51};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f9049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzem f9050b = new zzem(new byte[7], 7);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzen f9051c = new zzen(Arrays.copyOf(f9048v, 10));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f9052d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f9053e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzabb f9054f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzabb f9055g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f9056h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f9057i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f9058j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f9059k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f9060l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f9061m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f9062n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f9063o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f9064p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f9065q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f9066r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f9067s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private zzabb f9068t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f9069u;

    public zzahj(boolean z10, String str) {
        h();
        this.f9061m = -1;
        this.f9062n = -1;
        this.f9065q = -9223372036854775807L;
        this.f9067s = -9223372036854775807L;
        this.f9049a = z10;
        this.f9052d = str;
    }

    public static boolean f(int i10) {
        return (i10 & 65526) == 65520;
    }

    private final void g() {
        this.f9060l = false;
        h();
    }

    private final void h() {
        this.f9056h = 0;
        this.f9057i = 0;
        this.f9058j = 256;
    }

    private final void i() {
        this.f9056h = 3;
        this.f9057i = 0;
    }

    private final void j(zzabb zzabbVar, long j10, int i10, int i11) {
        this.f9056h = 4;
        this.f9057i = i10;
        this.f9068t = zzabbVar;
        this.f9069u = j10;
        this.f9066r = i11;
    }

    private final boolean k(zzen zzenVar, byte[] bArr, int i10) {
        int iMin = Math.min(zzenVar.i(), i10 - this.f9057i);
        zzenVar.b(bArr, this.f9057i, iMin);
        int i11 = this.f9057i + iMin;
        this.f9057i = i11;
        return i11 == i10;
    }

    private static final boolean l(byte b10, byte b11) {
        return f((b11 & 255) | 65280);
    }

    private static final boolean m(zzen zzenVar, byte[] bArr, int i10) {
        if (zzenVar.i() < i10) {
            return false;
        }
        zzenVar.b(bArr, 0, i10);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void b() {
        this.f9067s = -9223372036854775807L;
        g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0263, code lost:
    
        r16.f9056h = 1;
        r16.f9057i = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0269, code lost:
    
        i();
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x026c, code lost:
    
        r17.f(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0250, code lost:
    
        r16.f9063o = (r11 & 8) >> 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0258, code lost:
    
        if (1 == ((r11 & 1) ^ 1)) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x025a, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x025c, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x025d, code lost:
    
        r16.f9059k = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0261, code lost:
    
        if (r16.f9060l != false) goto L101;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0250 A[EDGE_INSN: B:144:0x0250->B:94:0x0250 BREAK  A[LOOP:1: B:48:0x019e->B:121:0x02b9], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0208  */
    @Override // com.google.android.gms.internal.ads.zzahn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(com.google.android.gms.internal.ads.zzen r17) throws com.google.android.gms.internal.ads.zzbu {
        /*
            Method dump skipped, instruction units count: 706
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahj.c(com.google.android.gms.internal.ads.zzen):void");
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void d(zzzx zzzxVar, zzaiz zzaizVar) {
        zzaizVar.c();
        this.f9053e = zzaizVar.b();
        zzabb zzabbVarQ = zzzxVar.q(zzaizVar.a(), 1);
        this.f9054f = zzabbVarQ;
        this.f9068t = zzabbVarQ;
        if (!this.f9049a) {
            this.f9055g = new zzzt();
            return;
        }
        zzaizVar.c();
        zzabb zzabbVarQ2 = zzzxVar.q(zzaizVar.a(), 5);
        this.f9055g = zzabbVarQ2;
        zzad zzadVar = new zzad();
        zzadVar.h(zzaizVar.b());
        zzadVar.s("application/id3");
        zzabbVarQ2.e(zzadVar.y());
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f9067s = j10;
        }
    }
}
