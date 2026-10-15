package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaol {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f9547a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static MessageDigest f9548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f9549c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f9550d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final CountDownLatch f9551e = new CountDownLatch(1);

    static String a(zzans zzansVar, String str) throws GeneralSecurityException, UnsupportedEncodingException {
        byte[] bArrG;
        byte[] bArrT = zzansVar.t();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.O2)).booleanValue()) {
            Vector vectorB = b(bArrT, 255);
            if (vectorB == null || vectorB.size() == 0) {
                bArrG = g(f(4096).t(), str, true);
            } else {
                zzaoe zzaoeVarI = zzaof.I();
                int size = vectorB.size();
                for (int i10 = 0; i10 < size; i10++) {
                    zzaoeVarI.o(zzgpe.J(g((byte[]) vectorB.get(i10), str, false)));
                }
                zzaoeVarI.p(zzgpe.J(e(bArrT)));
                bArrG = ((zzaof) zzaoeVarI.k()).t();
            }
        } else {
            if (zzaqz.f9775a == null) {
                throw new GeneralSecurityException();
            }
            byte[] bArrA = zzaqz.f9775a.a(bArrT, str != null ? str.getBytes() : new byte[0]);
            zzaoe zzaoeVarI2 = zzaof.I();
            zzaoeVarI2.o(zzgpe.J(bArrA));
            zzaoeVarI2.q(3);
            bArrG = ((zzaof) zzaoeVarI2.k()).t();
        }
        return zzaoh.a(bArrG, true);
    }

    static Vector b(byte[] bArr, int i10) {
        int length;
        if (bArr == null || (length = bArr.length) <= 0) {
            return null;
        }
        int i11 = length + 254;
        Vector vector = new Vector();
        for (int i12 = 0; i12 < i11 / 255; i12++) {
            int i13 = i12 * 255;
            try {
                int length2 = bArr.length;
                if (length2 - i13 > 255) {
                    length2 = i13 + 255;
                }
                vector.add(Arrays.copyOfRange(bArr, i13, length2));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return vector;
    }

    static void d() {
        synchronized (f9550d) {
            if (!f9547a) {
                f9547a = true;
                new Thread(new zzaok(null)).start();
            }
        }
    }

    public static byte[] e(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] bArrDigest;
        MessageDigest messageDigest;
        synchronized (f9549c) {
            d();
            MessageDigest messageDigest2 = null;
            try {
                if (f9551e.await(2L, TimeUnit.SECONDS) && (messageDigest = f9548b) != null) {
                    messageDigest2 = messageDigest;
                }
            } catch (InterruptedException unused) {
            }
            if (messageDigest2 == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            messageDigest2.reset();
            messageDigest2.update(bArr);
            bArrDigest = f9548b.digest();
        }
        return bArrDigest;
    }

    static zzans f(int i10) {
        zzamv zzamvVarJ0 = zzans.j0();
        zzamvVarJ0.r(4096L);
        return (zzans) zzamvVarJ0.k();
    }

    private static byte[] g(byte[] bArr, String str, boolean z10) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        byte[] bArrArray;
        int length = bArr.length;
        int i10 = true != z10 ? 255 : 239;
        if (length > i10) {
            bArr = f(4096).t();
        }
        int length2 = bArr.length;
        if (length2 < i10) {
            byte[] bArr2 = new byte[i10 - length2];
            new SecureRandom().nextBytes(bArr2);
            bArrArray = ByteBuffer.allocate(i10 + 1).put((byte) length2).put(bArr).put(bArr2).array();
        } else {
            bArrArray = ByteBuffer.allocate(i10 + 1).put((byte) length2).put(bArr).array();
        }
        if (z10) {
            bArrArray = ByteBuffer.allocate(256).put(e(bArrArray)).put(bArrArray).array();
        }
        byte[] bArr3 = new byte[256];
        zzaom[] zzaomVarArr = new zzapl().G2;
        int length3 = zzaomVarArr.length;
        for (int i11 = 0; i11 < 12; i11++) {
            zzaomVarArr[i11].a(bArrArray, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new zzgol(str.getBytes("UTF-8")).a(bArr3);
        }
        return bArr3;
    }
}
