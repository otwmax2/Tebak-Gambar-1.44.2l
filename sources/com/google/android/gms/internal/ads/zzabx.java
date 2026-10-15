package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzabx implements zzzf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaah f8446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f8447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzaac f8448c = new zzaac();

    /* synthetic */ zzabx(zzaah zzaahVar, int i10, zzabw zzabwVar) {
        this.f8446a = zzaahVar;
        this.f8447b = i10;
    }

    private final long b(zzzv zzzvVar) throws IOException {
        while (zzzvVar.b() < zzzvVar.d() - 6) {
            zzaah zzaahVar = this.f8446a;
            int i10 = this.f8447b;
            zzaac zzaacVar = this.f8448c;
            long jB = zzzvVar.b();
            byte[] bArr = new byte[2];
            zzzk zzzkVar = (zzzk) zzzvVar;
            zzzkVar.k(bArr, 0, 2, false);
            if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i10) {
                zzzvVar.h();
                zzzkVar.n((int) (jB - zzzvVar.c()), false);
            } else {
                zzen zzenVar = new zzen(16);
                System.arraycopy(bArr, 0, zzenVar.h(), 0, 2);
                zzenVar.e(zzzy.a(zzzvVar, zzenVar.h(), 2, 14));
                zzzvVar.h();
                zzzkVar.n((int) (jB - zzzvVar.c()), false);
                if (zzaad.c(zzenVar, zzaahVar, i10, zzaacVar)) {
                    break;
                }
            }
            zzzkVar.n(1, false);
        }
        if (zzzvVar.b() < zzzvVar.d() - 6) {
            return this.f8448c.f8288a;
        }
        ((zzzk) zzzvVar).n((int) (zzzvVar.d() - zzzvVar.b()), false);
        return this.f8446a.f8302j;
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final zzze a(zzzv zzzvVar, long j10) throws IOException {
        long jC = zzzvVar.c();
        long jB = b(zzzvVar);
        long jB2 = zzzvVar.b();
        ((zzzk) zzzvVar).n(Math.max(6, this.f8446a.f8295c), false);
        long jB3 = b(zzzvVar);
        return (jB > j10 || jB3 <= j10) ? jB3 <= j10 ? zzze.f(jB3, zzzvVar.b()) : zzze.d(jB, jC) : zzze.e(jB2);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final /* synthetic */ void zzb() {
    }
}
