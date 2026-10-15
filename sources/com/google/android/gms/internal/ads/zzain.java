package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzain implements zzaja {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaim f9277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f9278b = new zzen(32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f9279c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9280d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9281e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9282f;

    public zzain(zzaim zzaimVar) {
        this.f9277a = zzaimVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaja
    public final void a() {
        this.f9282f = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaja
    public final void b(zzeu zzeuVar, zzzx zzzxVar, zzaiz zzaizVar) {
        this.f9277a.b(zzeuVar, zzzxVar, zzaizVar);
        this.f9282f = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaja
    public final void c(zzen zzenVar, int i10) {
        int i11 = i10 & 1;
        int iK = i11 != 0 ? zzenVar.k() + zzenVar.s() : -1;
        if (this.f9282f) {
            if (i11 == 0) {
                return;
            }
            this.f9282f = false;
            zzenVar.f(iK);
            this.f9280d = 0;
        }
        while (zzenVar.i() > 0) {
            int i12 = this.f9280d;
            if (i12 < 3) {
                if (i12 == 0) {
                    int iS = zzenVar.s();
                    zzenVar.f(zzenVar.k() - 1);
                    if (iS == 255) {
                        this.f9282f = true;
                        return;
                    }
                }
                int iMin = Math.min(zzenVar.i(), 3 - this.f9280d);
                zzenVar.b(this.f9278b.h(), this.f9280d, iMin);
                int i13 = this.f9280d + iMin;
                this.f9280d = i13;
                if (i13 == 3) {
                    this.f9278b.f(0);
                    this.f9278b.e(3);
                    this.f9278b.g(1);
                    int iS2 = this.f9278b.s();
                    int iS3 = this.f9278b.s();
                    this.f9281e = (iS2 & 128) != 0;
                    this.f9279c = (((iS2 & 15) << 8) | iS3) + 3;
                    int iJ = this.f9278b.j();
                    int i14 = this.f9279c;
                    if (iJ < i14) {
                        int iJ2 = this.f9278b.j();
                        this.f9278b.H(Math.min(4098, Math.max(i14, iJ2 + iJ2)));
                    }
                }
            } else {
                int iMin2 = Math.min(zzenVar.i(), this.f9279c - i12);
                zzenVar.b(this.f9278b.h(), this.f9280d, iMin2);
                int i15 = this.f9280d + iMin2;
                this.f9280d = i15;
                int i16 = this.f9279c;
                if (i15 != i16) {
                    continue;
                } else {
                    if (!this.f9281e) {
                        this.f9278b.e(i16);
                    } else {
                        if (zzew.R(this.f9278b.h(), 0, i16, -1) != 0) {
                            this.f9282f = true;
                            return;
                        }
                        this.f9278b.e(this.f9279c - 4);
                    }
                    this.f9278b.f(0);
                    this.f9277a.c(this.f9278b);
                    this.f9280d = 0;
                }
            }
        }
    }
}
