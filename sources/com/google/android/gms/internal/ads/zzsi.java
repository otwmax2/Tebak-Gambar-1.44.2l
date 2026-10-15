package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzsi implements zzfg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfg f20609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f20610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzsh f20611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f20612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f20613e;

    public zzsi(zzfg zzfgVar, int i10, zzsh zzshVar) {
        zzdl.d(i10 > 0);
        this.f20609a = zzfgVar;
        this.f20610b = i10;
        this.f20611c = zzshVar;
        this.f20612d = new byte[1];
        this.f20613e = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        return this.f20609a.a();
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Map b() {
        return this.f20609a.b();
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void d() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f20613e;
        if (i12 == 0) {
            int i13 = 0;
            if (this.f20609a.e(this.f20612d, 0, 1) != -1) {
                int i14 = (this.f20612d[0] & 255) << 4;
                if (i14 != 0) {
                    byte[] bArr2 = new byte[i14];
                    int i15 = i14;
                    while (i15 > 0) {
                        int iE = this.f20609a.e(bArr2, i13, i15);
                        if (iE != -1) {
                            i13 += iE;
                            i15 -= iE;
                        }
                    }
                    while (i14 > 0) {
                        int i16 = i14 - 1;
                        if (bArr2[i16] != 0) {
                            break;
                        }
                        i14 = i16;
                    }
                    if (i14 > 0) {
                        this.f20611c.c(new zzen(bArr2, i14));
                    }
                }
                i12 = this.f20610b;
                this.f20613e = i12;
            }
            return -1;
        }
        int iE2 = this.f20609a.e(bArr, i10, Math.min(i12, i11));
        if (iE2 != -1) {
            this.f20613e -= iE2;
        }
        return iE2;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void f(zzgi zzgiVar) {
        Objects.requireNonNull(zzgiVar);
        this.f20609a.f(zzgiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final long j(zzfl zzflVar) {
        throw new UnsupportedOperationException();
    }
}
