package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzafw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzabb f8819a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public zzagj f8822d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public zzafs f8823e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8824f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8825g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8826h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8827i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f8830l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzagi f8820b = new zzagi();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzen f8821c = new zzen();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzen f8828j = new zzen(1);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzen f8829k = new zzen();

    public zzafw(zzabb zzabbVar, zzagj zzagjVar, zzafs zzafsVar) {
        this.f8819a = zzabbVar;
        this.f8822d = zzagjVar;
        this.f8823e = zzafsVar;
        h(zzagjVar, zzafsVar);
    }

    public final int a() {
        int i10 = !this.f8830l ? this.f8822d.f8936g[this.f8824f] : this.f8820b.f8922j[this.f8824f] ? 1 : 0;
        return f() != null ? i10 | 1073741824 : i10;
    }

    public final int b() {
        return !this.f8830l ? this.f8822d.f8933d[this.f8824f] : this.f8820b.f8920h[this.f8824f];
    }

    public final int c(int i10, int i11) {
        zzen zzenVar;
        zzagh zzaghVarF = f();
        if (zzaghVarF == null) {
            return 0;
        }
        int i12 = zzaghVarF.f8911d;
        if (i12 != 0) {
            zzenVar = this.f8820b.f8926n;
        } else {
            byte[] bArr = (byte[]) zzew.h(zzaghVarF.f8912e);
            zzen zzenVar2 = this.f8829k;
            int length = bArr.length;
            zzenVar2.d(bArr, length);
            zzenVar = this.f8829k;
            i12 = length;
        }
        boolean zB = this.f8820b.b(this.f8824f);
        boolean z10 = zB || i11 != 0;
        zzen zzenVar3 = this.f8828j;
        zzenVar3.h()[0] = (byte) ((true != z10 ? 0 : 128) | i12);
        zzenVar3.f(0);
        this.f8819a.a(this.f8828j, 1, 1);
        this.f8819a.a(zzenVar, i12, 1);
        if (!z10) {
            return i12 + 1;
        }
        if (!zB) {
            this.f8821c.c(8);
            zzen zzenVar4 = this.f8821c;
            byte[] bArrH = zzenVar4.h();
            bArrH[0] = 0;
            bArrH[1] = 1;
            bArrH[2] = 0;
            bArrH[3] = (byte) i11;
            bArrH[4] = (byte) ((i10 >> 24) & 255);
            bArrH[5] = (byte) ((i10 >> 16) & 255);
            bArrH[6] = (byte) ((i10 >> 8) & 255);
            bArrH[7] = (byte) (i10 & 255);
            this.f8819a.a(zzenVar4, 8, 1);
            return i12 + 9;
        }
        zzen zzenVar5 = this.f8820b.f8926n;
        int iW = zzenVar5.w();
        zzenVar5.g(-2);
        int i13 = (iW * 6) + 2;
        if (i11 != 0) {
            this.f8821c.c(i13);
            byte[] bArrH2 = this.f8821c.h();
            zzenVar5.b(bArrH2, 0, i13);
            int i14 = (((bArrH2[2] & 255) << 8) | (bArrH2[3] & 255)) + i11;
            bArrH2[2] = (byte) ((i14 >> 8) & 255);
            bArrH2[3] = (byte) (i14 & 255);
            zzenVar5 = this.f8821c;
        }
        this.f8819a.a(zzenVar5, i13, 1);
        return i12 + 1 + i13;
    }

    public final long d() {
        return !this.f8830l ? this.f8822d.f8932c[this.f8824f] : this.f8820b.f8918f[this.f8826h];
    }

    public final long e() {
        if (!this.f8830l) {
            return this.f8822d.f8935f[this.f8824f];
        }
        zzagi zzagiVar = this.f8820b;
        return zzagiVar.f8921i[this.f8824f];
    }

    public final zzagh f() {
        if (!this.f8830l) {
            return null;
        }
        zzagi zzagiVar = this.f8820b;
        zzafs zzafsVar = zzagiVar.f8913a;
        int i10 = zzew.f17494a;
        int i11 = zzafsVar.f8810a;
        zzagh zzaghVarA = zzagiVar.f8925m;
        if (zzaghVarA == null) {
            zzaghVarA = this.f8822d.f8930a.a(i11);
        }
        if (zzaghVarA == null || !zzaghVarA.f8908a) {
            return null;
        }
        return zzaghVarA;
    }

    public final void h(zzagj zzagjVar, zzafs zzafsVar) {
        this.f8822d = zzagjVar;
        this.f8823e = zzafsVar;
        this.f8819a.e(zzagjVar.f8930a.f8902f);
        i();
    }

    public final void i() {
        zzagi zzagiVar = this.f8820b;
        zzagiVar.f8916d = 0;
        zzagiVar.f8928p = 0L;
        zzagiVar.f8929q = false;
        zzagiVar.f8923k = false;
        zzagiVar.f8927o = false;
        zzagiVar.f8925m = null;
        this.f8824f = 0;
        this.f8826h = 0;
        this.f8825g = 0;
        this.f8827i = 0;
        this.f8830l = false;
    }

    public final boolean k() {
        this.f8824f++;
        if (!this.f8830l) {
            return false;
        }
        int i10 = this.f8825g + 1;
        this.f8825g = i10;
        int[] iArr = this.f8820b.f8919g;
        int i11 = this.f8826h;
        if (i10 != iArr[i11]) {
            return true;
        }
        this.f8826h = i11 + 1;
        this.f8825g = 0;
        return false;
    }
}
