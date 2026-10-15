package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzago extends zzagy {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private zzaah f8955n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzagn f8956o;

    zzago() {
    }

    private static boolean j(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // com.google.android.gms.internal.ads.zzagy
    protected final long a(zzen zzenVar) {
        if (!j(zzenVar.h())) {
            return -1L;
        }
        int i10 = (zzenVar.h()[2] & 255) >> 4;
        if (i10 == 6) {
            zzenVar.g(4);
            zzenVar.C();
        } else if (i10 == 7) {
            i10 = 7;
            zzenVar.g(4);
            zzenVar.C();
        }
        int iA = zzaad.a(zzenVar, i10);
        zzenVar.f(0);
        return iA;
    }

    @Override // com.google.android.gms.internal.ads.zzagy
    protected final void b(boolean z10) {
        super.b(z10);
        if (z10) {
            this.f8955n = null;
            this.f8956o = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzagy
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected final boolean c(zzen zzenVar, long j10, zzagv zzagvVar) {
        byte[] bArrH = zzenVar.h();
        zzaah zzaahVar = this.f8955n;
        if (zzaahVar == null) {
            zzaah zzaahVar2 = new zzaah(bArrH, 17);
            this.f8955n = zzaahVar2;
            zzagvVar.f8977a = zzaahVar2.c(Arrays.copyOfRange(bArrH, 9, zzenVar.l()), null);
            return true;
        }
        if ((bArrH[0] & 127) == 3) {
            zzaag zzaagVarB = zzaae.b(zzenVar);
            zzaah zzaahVarF = zzaahVar.f(zzaagVarB);
            this.f8955n = zzaahVarF;
            this.f8956o = new zzagn(zzaahVarF, zzaagVarB);
            return true;
        }
        if (!j(bArrH)) {
            return true;
        }
        zzagn zzagnVar = this.f8956o;
        if (zzagnVar != null) {
            zzagnVar.d(j10);
            zzagvVar.f8978b = this.f8956o;
        }
        Objects.requireNonNull(zzagvVar.f8977a);
        return false;
    }
}
