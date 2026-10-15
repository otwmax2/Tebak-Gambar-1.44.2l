package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzuy extends zzva {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzws f20827f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzfqk f20828g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzdm f20829h;

    protected zzuy(zzcp zzcpVar, int[] iArr, int i10, zzws zzwsVar, long j10, long j11, long j12, int i11, int i12, float f10, float f11, List list, zzdm zzdmVar) {
        super(zzcpVar, iArr, 0);
        this.f20827f = zzwsVar;
        this.f20828g = zzfqk.s(list);
        this.f20829h = zzdmVar;
    }

    static /* bridge */ /* synthetic */ zzfqk c(zzwd[] zzwdVarArr) {
        int i10;
        int i11;
        ArrayList arrayList = new ArrayList();
        char c10 = 0;
        int i12 = 0;
        while (true) {
            i10 = 2;
            i11 = 1;
            if (i12 >= 2) {
                break;
            }
            zzwd zzwdVar = zzwdVarArr[i12];
            if (zzwdVar == null || zzwdVar.f20940b.length <= 1) {
                arrayList.add(null);
            } else {
                zzfqh zzfqhVarO = zzfqk.o();
                zzfqhVarO.g(new zzuw(0L, 0L));
                arrayList.add(zzfqhVarO);
            }
            i12++;
        }
        long[][] jArr = new long[2][];
        for (int i13 = 0; i13 < 2; i13++) {
            zzwd zzwdVar2 = zzwdVarArr[i13];
            if (zzwdVar2 == null) {
                jArr[i13] = new long[0];
            } else {
                jArr[i13] = new long[zzwdVar2.f20940b.length];
                int i14 = 0;
                while (true) {
                    int[] iArr = zzwdVar2.f20940b;
                    if (i14 >= iArr.length) {
                        break;
                    }
                    long j10 = zzwdVar2.f20939a.b(iArr[i14]).f8727h;
                    long[] jArr2 = jArr[i13];
                    if (j10 == -1) {
                        j10 = 0;
                    }
                    jArr2[i14] = j10;
                    i14++;
                }
                Arrays.sort(jArr[i13]);
            }
        }
        int[] iArr2 = new int[2];
        long[] jArr3 = new long[2];
        for (int i15 = 0; i15 < 2; i15++) {
            long[] jArr4 = jArr[i15];
            jArr3[i15] = jArr4.length == 0 ? 0L : jArr4[0];
        }
        d(arrayList, jArr3);
        zzfqv zzfqvVarC = zzfrn.b(zzfrs.c()).b(2).c();
        int i16 = 0;
        while (i16 < i10) {
            int length = jArr[i16].length;
            if (length > i11) {
                double[] dArr = new double[length];
                int i17 = 0;
                while (true) {
                    long[] jArr5 = jArr[i16];
                    double dLog = 0.0d;
                    if (i17 >= jArr5.length) {
                        break;
                    }
                    long j11 = jArr5[i17];
                    if (j11 != -1) {
                        dLog = Math.log(j11);
                    }
                    dArr[i17] = dLog;
                    i17++;
                }
                int i18 = length - 1;
                double d10 = dArr[i18] - dArr[c10];
                int i19 = 0;
                while (i19 < i18) {
                    double d11 = dArr[i19];
                    i19++;
                    zzfqvVarC.a(Double.valueOf(d10 == 0.0d ? 1.0d : (((d11 + dArr[i19]) * 0.5d) - dArr[c10]) / d10), Integer.valueOf(i16));
                    c10 = 0;
                }
            }
            i16++;
            c10 = 0;
            i10 = 2;
            i11 = 1;
        }
        zzfqk zzfqkVarS = zzfqk.s(zzfqvVarC.x());
        for (int i20 = 0; i20 < zzfqkVarS.size(); i20++) {
            int iIntValue = ((Integer) zzfqkVarS.get(i20)).intValue();
            int i21 = iArr2[iIntValue] + 1;
            iArr2[iIntValue] = i21;
            jArr3[iIntValue] = jArr[iIntValue][i21];
            d(arrayList, jArr3);
        }
        for (int i22 = 0; i22 < 2; i22++) {
            if (arrayList.get(i22) != null) {
                long j12 = jArr3[i22];
                jArr3[i22] = j12 + j12;
            }
        }
        d(arrayList, jArr3);
        zzfqh zzfqhVarO2 = zzfqk.o();
        for (int i23 = 0; i23 < arrayList.size(); i23++) {
            zzfqh zzfqhVar = (zzfqh) arrayList.get(i23);
            zzfqhVarO2.g(zzfqhVar == null ? zzfqk.u() : zzfqhVar.j());
        }
        return zzfqhVarO2.j();
    }

    private static void d(List list, long[] jArr) {
        long j10 = 0;
        for (int i10 = 0; i10 < 2; i10++) {
            j10 += jArr[i10];
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            zzfqh zzfqhVar = (zzfqh) list.get(i11);
            if (zzfqhVar != null) {
                zzfqhVar.g(new zzuw(j10, jArr[i11]));
            }
        }
    }
}
