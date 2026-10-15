package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzzy {
    public static int a(zzzv zzzvVar, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        while (i12 < i11) {
            int i13 = zzzvVar.i(bArr, i10 + i12, i11 - i12);
            if (i13 == -1) {
                break;
            }
            i12 += i13;
        }
        return i12;
    }

    @Pure
    public static void b(boolean z10, String str) throws zzbu {
        if (!z10) {
            throw zzbu.a(str, null);
        }
    }

    public static boolean c(zzzv zzzvVar, byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        try {
            return zzzvVar.k(bArr, 0, i11, z10);
        } catch (EOFException e10) {
            if (z10) {
                return false;
            }
            throw e10;
        }
    }

    public static boolean d(zzzv zzzvVar, byte[] bArr, int i10, int i11) throws IOException {
        try {
            ((zzzk) zzzvVar).g(bArr, i10, i11, false);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean e(zzzv zzzvVar, int i10) throws IOException {
        try {
            ((zzzk) zzzvVar).o(i10, false);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
