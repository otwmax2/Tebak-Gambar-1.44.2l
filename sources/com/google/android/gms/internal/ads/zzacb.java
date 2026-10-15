package com.google.android.gms.internal.ads;

import java.util.Collections;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzacb extends zzacg {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f8464e = {5512, 11025, 22050, 44100};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f8465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f8466c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8467d;

    public zzacb(zzabb zzabbVar) {
        super(zzabbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    protected final boolean a(zzen zzenVar) throws zzacf {
        if (this.f8465b) {
            zzenVar.g(1);
        } else {
            int iS = zzenVar.s();
            int i10 = iS >> 4;
            this.f8467d = i10;
            if (i10 == 2) {
                int i11 = f8464e[(iS >> 2) & 3];
                zzad zzadVar = new zzad();
                zzadVar.s("audio/mpeg");
                zzadVar.e0(1);
                zzadVar.t(i11);
                this.f8489a.e(zzadVar.y());
                this.f8466c = true;
            } else if (i10 == 7 || i10 == 8) {
                zzad zzadVar2 = new zzad();
                zzadVar2.s(i10 == 7 ? "audio/g711-alaw" : "audio/g711-mlaw");
                zzadVar2.e0(1);
                zzadVar2.t(8000);
                this.f8489a.e(zzadVar2.y());
                this.f8466c = true;
            } else if (i10 != 10) {
                throw new zzacf("Audio format not supported: " + i10);
            }
            this.f8465b = true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    protected final boolean b(zzen zzenVar, long j10) throws zzbu {
        if (this.f8467d == 2) {
            int i10 = zzenVar.i();
            this.f8489a.d(zzenVar, i10);
            this.f8489a.f(j10, 1, i10, 0, null);
            return true;
        }
        int iS = zzenVar.s();
        if (iS != 0 || this.f8466c) {
            if (this.f8467d == 10 && iS != 1) {
                return false;
            }
            int i11 = zzenVar.i();
            this.f8489a.d(zzenVar, i11);
            this.f8489a.f(j10, 1, i11, 0, null);
            return true;
        }
        int i12 = zzenVar.i();
        byte[] bArr = new byte[i12];
        zzenVar.b(bArr, 0, i12);
        zzyr zzyrVarA = zzys.a(bArr);
        zzad zzadVar = new zzad();
        zzadVar.s("audio/mp4a-latm");
        zzadVar.f0(zzyrVarA.f21130c);
        zzadVar.e0(zzyrVarA.f21129b);
        zzadVar.t(zzyrVarA.f21128a);
        zzadVar.i(Collections.singletonList(bArr));
        this.f8489a.e(zzadVar.y());
        this.f8466c = true;
        return false;
    }
}
