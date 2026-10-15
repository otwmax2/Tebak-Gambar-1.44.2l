package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzahz implements zzahn {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzabb f9191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9192c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9194e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9195f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzen f9190a = new zzen(10);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f9193d = -9223372036854775807L;

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void a() {
        int i10;
        zzdl.b(this.f9191b);
        if (this.f9192c && (i10 = this.f9194e) != 0 && this.f9195f == i10) {
            long j10 = this.f9193d;
            if (j10 != -9223372036854775807L) {
                this.f9191b.f(j10, 1, i10, 0, null);
            }
            this.f9192c = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void b() {
        this.f9192c = false;
        this.f9193d = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void c(zzen zzenVar) {
        zzdl.b(this.f9191b);
        if (this.f9192c) {
            int i10 = zzenVar.i();
            int i11 = this.f9195f;
            if (i11 < 10) {
                int iMin = Math.min(i10, 10 - i11);
                System.arraycopy(zzenVar.h(), zzenVar.k(), this.f9190a.h(), this.f9195f, iMin);
                if (this.f9195f + iMin == 10) {
                    this.f9190a.f(0);
                    if (this.f9190a.s() != 73 || this.f9190a.s() != 68 || this.f9190a.s() != 51) {
                        zzee.e("Id3Reader", "Discarding invalid ID3 tag");
                        this.f9192c = false;
                        return;
                    } else {
                        this.f9190a.g(3);
                        this.f9194e = this.f9190a.r() + 10;
                    }
                }
            }
            int iMin2 = Math.min(i10, this.f9194e - this.f9195f);
            this.f9191b.d(zzenVar, iMin2);
            this.f9195f += iMin2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void d(zzzx zzzxVar, zzaiz zzaizVar) {
        zzaizVar.c();
        zzabb zzabbVarQ = zzzxVar.q(zzaizVar.a(), 5);
        this.f9191b = zzabbVarQ;
        zzad zzadVar = new zzad();
        zzadVar.h(zzaizVar.b());
        zzadVar.s("application/id3");
        zzabbVarQ.e(zzadVar.y());
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void e(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.f9192c = true;
        if (j10 != -9223372036854775807L) {
            this.f9193d = j10;
        }
        this.f9194e = 0;
        this.f9195f = 0;
    }
}
