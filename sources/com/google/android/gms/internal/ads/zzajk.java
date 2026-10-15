package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzajk {
    public static Pair a(zzzv zzzvVar) throws IOException {
        zzzvVar.h();
        zzajj zzajjVarD = d(1684108385, zzzvVar, new zzen(8));
        ((zzzk) zzzvVar).o(8, false);
        return Pair.create(Long.valueOf(zzzvVar.c()), Long.valueOf(zzajjVarD.f9380b));
    }

    public static zzaji b(zzzv zzzvVar) throws IOException {
        byte[] bArr;
        zzen zzenVar = new zzen(16);
        zzajj zzajjVarD = d(1718449184, zzzvVar, zzenVar);
        zzdl.f(zzajjVarD.f9380b >= 16);
        zzzk zzzkVar = (zzzk) zzzvVar;
        zzzkVar.k(zzenVar.h(), 0, 16, false);
        zzenVar.f(0);
        int iQ = zzenVar.q();
        int iQ2 = zzenVar.q();
        int iP = zzenVar.p();
        int iP2 = zzenVar.p();
        int iQ3 = zzenVar.q();
        int iQ4 = zzenVar.q();
        int i10 = ((int) zzajjVarD.f9380b) - 16;
        if (i10 > 0) {
            bArr = new byte[i10];
            zzzkVar.k(bArr, 0, i10, false);
        } else {
            bArr = zzew.f17499f;
        }
        byte[] bArr2 = bArr;
        ((zzzk) zzzvVar).o((int) (zzzvVar.b() - zzzvVar.c()), false);
        return new zzaji(iQ, iQ2, iP, iP2, iQ3, iQ4, bArr2);
    }

    public static boolean c(zzzv zzzvVar) throws IOException {
        zzen zzenVar = new zzen(8);
        int i10 = zzajj.a(zzzvVar, zzenVar).f9379a;
        if (i10 != 1380533830 && i10 != 1380333108) {
            return false;
        }
        ((zzzk) zzzvVar).k(zzenVar.h(), 0, 4, false);
        zzenVar.f(0);
        int iM = zzenVar.m();
        if (iM == 1463899717) {
            return true;
        }
        zzee.b("WavHeaderReader", "Unsupported form type: " + iM);
        return false;
    }

    private static zzajj d(int i10, zzzv zzzvVar, zzen zzenVar) throws IOException {
        zzajj zzajjVarA = zzajj.a(zzzvVar, zzenVar);
        while (true) {
            int i11 = zzajjVarA.f9379a;
            if (i11 == i10) {
                return zzajjVarA;
            }
            zzee.e("WavHeaderReader", "Ignoring unknown WAV chunk: " + i11);
            long j10 = zzajjVarA.f9380b + 8;
            if (j10 > 2147483647L) {
                throw zzbu.c("Chunk is too large (~2GB+) to skip; id: " + zzajjVarA.f9379a);
            }
            ((zzzk) zzzvVar).o((int) j10, false);
            zzajjVarA = zzajj.a(zzzvVar, zzenVar);
        }
    }
}
