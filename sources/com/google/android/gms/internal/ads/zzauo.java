package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import com.vungle.mediation.BuildConfig;
import java.util.PriorityQueue;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzauo {
    @VisibleForTesting
    static long a(long j10, int i10) {
        if (i10 == 1) {
            return j10;
        }
        return ((i10 & 1) == 0 ? a((j10 * j10) % 1073807359, i10 >> 1) : j10 * (a((j10 * j10) % 1073807359, i10 >> 1) % 1073807359)) % 1073807359;
    }

    @VisibleForTesting
    static String b(String[] strArr, int i10, int i11) {
        int i12 = i11 + i10;
        if (strArr.length < i12) {
            zzbza.d("Unable to construct shingle");
            return BuildConfig.FLAVOR;
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i13 = i12 - 1;
            if (i10 >= i13) {
                sb.append(strArr[i13]);
                return sb.toString();
            }
            sb.append(strArr[i10]);
            sb.append(' ');
            i10++;
        }
    }

    public static void c(String[] strArr, int i10, int i11, PriorityQueue priorityQueue) {
        int length = strArr.length;
        int i12 = 6;
        if (length < 6) {
            d(i10, e(strArr, 0, length), b(strArr, 0, length), length, priorityQueue);
            return;
        }
        long jE = e(strArr, 0, 6);
        d(i10, jE, b(strArr, 0, 6), 6, priorityQueue);
        int i13 = 1;
        while (true) {
            int length2 = strArr.length;
            if (i13 >= length2 - 5) {
                return;
            }
            long jA = zzauk.a(strArr[i13 - 1]);
            long jA2 = zzauk.a(strArr[i13 + 5]);
            String strB = b(strArr, i13, i12);
            jE = ((((((jE + 1073807359) - ((a(16785407L, 5) * ((jA + 2147483647L) % 1073807359)) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((jA2 + 2147483647L) % 1073807359)) % 1073807359;
            d(i10, jE, strB, length2, priorityQueue);
            i13++;
            i12 = 6;
        }
    }

    @VisibleForTesting
    static void d(int i10, long j10, String str, int i11, PriorityQueue priorityQueue) {
        zzaun zzaunVar = new zzaun(j10, str, i11);
        if ((priorityQueue.size() != i10 || (((zzaun) priorityQueue.peek()).f9987c <= zzaunVar.f9987c && ((zzaun) priorityQueue.peek()).f9985a <= zzaunVar.f9985a)) && !priorityQueue.contains(zzaunVar)) {
            priorityQueue.add(zzaunVar);
            if (priorityQueue.size() > i10) {
                priorityQueue.poll();
            }
        }
    }

    private static long e(String[] strArr, int i10, int i11) {
        long jA = (((long) zzauk.a(strArr[0])) + 2147483647L) % 1073807359;
        for (int i12 = 1; i12 < i11; i12++) {
            jA = (((jA * 16785407) % 1073807359) + ((((long) zzauk.a(strArr[i12])) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return jA;
    }
}
