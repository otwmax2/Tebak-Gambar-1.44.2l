package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzagu extends zzagy {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final byte[] f8974o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final byte[] f8975p = {79, 112, 117, 115, 84, 97, 103, 115};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f8976n;

    zzagu() {
    }

    public static boolean j(zzen zzenVar) {
        return k(zzenVar, f8974o);
    }

    private static boolean k(zzen zzenVar, byte[] bArr) {
        if (zzenVar.i() < 8) {
            return false;
        }
        int iK = zzenVar.k();
        byte[] bArr2 = new byte[8];
        zzenVar.b(bArr2, 0, 8);
        zzenVar.f(iK);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzagy
    protected final long a(zzen zzenVar) {
        return f(zzaas.b(zzenVar.h()));
    }

    @Override // com.google.android.gms.internal.ads.zzagy
    protected final void b(boolean z10) {
        super.b(z10);
        if (z10) {
            this.f8976n = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzagy
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected final boolean c(zzen zzenVar, long j10, zzagv zzagvVar) throws zzbu {
        if (k(zzenVar, f8974o)) {
            byte[] bArrCopyOf = Arrays.copyOf(zzenVar.h(), zzenVar.l());
            int i10 = bArrCopyOf[9] & 255;
            List listC = zzaas.c(bArrCopyOf);
            if (zzagvVar.f8977a != null) {
                return true;
            }
            zzad zzadVar = new zzad();
            zzadVar.s("audio/opus");
            zzadVar.e0(i10);
            zzadVar.t(48000);
            zzadVar.i(listC);
            zzagvVar.f8977a = zzadVar.y();
            return true;
        }
        if (!k(zzenVar, f8975p)) {
            zzdl.b(zzagvVar.f8977a);
            return false;
        }
        zzdl.b(zzagvVar.f8977a);
        if (this.f8976n) {
            return true;
        }
        this.f8976n = true;
        zzenVar.g(8);
        zzbq zzbqVarB = zzabh.b(zzfqk.t(zzabh.c(zzenVar, false, false).f8373b));
        if (zzbqVarB == null) {
            return true;
        }
        zzad zzadVarB = zzagvVar.f8977a.b();
        zzadVarB.m(zzbqVarB.w(zzagvVar.f8977a.f8729j));
        zzagvVar.f8977a = zzadVarB.y();
        return true;
    }
}
