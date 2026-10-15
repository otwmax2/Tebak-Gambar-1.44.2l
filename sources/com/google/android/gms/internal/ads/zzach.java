package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzach extends zzacg {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f8490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzen f8491c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f8493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8494f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f8495g;

    public zzach(zzabb zzabbVar) {
        super(zzabbVar);
        this.f8490b = new zzen(zzaar.f8340a);
        this.f8491c = new zzen(4);
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    protected final boolean a(zzen zzenVar) throws zzacf {
        int iS = zzenVar.s();
        int i10 = iS >> 4;
        int i11 = iS & 15;
        if (i11 == 7) {
            this.f8495g = i10;
            return i10 != 5;
        }
        throw new zzacf("Video format not supported: " + i11);
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    protected final boolean b(zzen zzenVar, long j10) throws zzbu {
        int iS = zzenVar.s();
        long jN = zzenVar.n();
        if (iS == 0) {
            if (!this.f8493e) {
                zzen zzenVar2 = new zzen(new byte[zzenVar.i()]);
                zzenVar.b(zzenVar2.h(), 0, zzenVar.i());
                zzyz zzyzVarA = zzyz.a(zzenVar2);
                this.f8492d = zzyzVarA.f21153b;
                zzad zzadVar = new zzad();
                zzadVar.s("video/avc");
                zzadVar.f0(zzyzVarA.f21157f);
                zzadVar.x(zzyzVarA.f21154c);
                zzadVar.f(zzyzVarA.f21155d);
                zzadVar.p(zzyzVarA.f21156e);
                zzadVar.i(zzyzVarA.f21152a);
                this.f8489a.e(zzadVar.y());
                this.f8493e = true;
                return false;
            }
        } else if (iS == 1 && this.f8493e) {
            int i10 = this.f8495g == 1 ? 1 : 0;
            if (!this.f8494f && i10 == 0) {
                return false;
            }
            byte[] bArrH = this.f8491c.h();
            bArrH[0] = 0;
            bArrH[1] = 0;
            bArrH[2] = 0;
            int i11 = 4 - this.f8492d;
            int i12 = 0;
            while (zzenVar.i() > 0) {
                zzenVar.b(this.f8491c.h(), i11, this.f8492d);
                this.f8491c.f(0);
                int iV = this.f8491c.v();
                this.f8490b.f(0);
                this.f8489a.d(this.f8490b, 4);
                this.f8489a.d(zzenVar, iV);
                i12 = i12 + 4 + iV;
            }
            this.f8489a.f(j10 + (jN * 1000), i10, i12, 0, null);
            this.f8494f = true;
            return true;
        }
        return false;
    }
}
