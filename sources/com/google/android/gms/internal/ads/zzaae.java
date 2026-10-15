package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaae {
    public static zzbq a(zzzv zzzvVar, boolean z10) throws Throwable {
        zzbq zzbqVarA = new zzaal().a(zzzvVar, z10 ? null : zzado.f8599a);
        if (zzbqVarA == null || zzbqVarA.h() == 0) {
            return null;
        }
        return zzbqVarA;
    }

    public static zzaag b(zzen zzenVar) {
        zzenVar.g(1);
        int iU = zzenVar.u();
        long jK = zzenVar.k();
        long j10 = iU;
        int i10 = iU / 18;
        long[] jArrCopyOf = new long[i10];
        long[] jArrCopyOf2 = new long[i10];
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                break;
            }
            long jZ = zzenVar.z();
            if (jZ == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i11);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i11);
                break;
            }
            jArrCopyOf[i11] = jZ;
            jArrCopyOf2[i11] = zzenVar.z();
            zzenVar.g(2);
            i11++;
        }
        zzenVar.g((int) ((jK + j10) - ((long) zzenVar.k())));
        return new zzaag(jArrCopyOf, jArrCopyOf2);
    }
}
