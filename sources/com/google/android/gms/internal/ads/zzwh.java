package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzwh extends zzwk {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzwg f20947c;

    @Override // com.google.android.gms.internal.ads.zzwk
    public final zzwl d(zzko[] zzkoVarArr, zzur zzurVar, zzss zzssVar, zzcn zzcnVar) throws zzhj {
        boolean z10;
        int[] iArr;
        int[] iArr2 = new int[3];
        zzcp[][] zzcpVarArr = new zzcp[3][];
        int[][][] iArr3 = new int[3][][];
        for (int i10 = 0; i10 < 3; i10++) {
            int i11 = zzurVar.f20819a;
            zzcpVarArr[i10] = new zzcp[i11];
            iArr3[i10] = new int[i11][];
        }
        int i12 = 2;
        int[] iArr4 = new int[2];
        for (int i13 = 0; i13 < 2; i13++) {
            iArr4[i13] = zzkoVarArr[i13].b();
        }
        int i14 = 0;
        while (i14 < zzurVar.f20819a) {
            zzcp zzcpVarB = zzurVar.b(i14);
            int i15 = zzcpVarB.f13692c;
            int i16 = 0;
            int i17 = 2;
            int i18 = 0;
            boolean z11 = true;
            while (i16 < i12) {
                zzko zzkoVar = zzkoVarArr[i16];
                int iMax = 0;
                for (int i19 = 0; i19 <= 0; i19++) {
                    iMax = Math.max(iMax, zzkoVar.j(zzcpVarB.b(i19)) & 7);
                }
                boolean z12 = iArr2[i16] == 0;
                if (iMax > i18) {
                    z11 = z12;
                    i17 = i16;
                    i18 = iMax;
                } else if (iMax == i18 && i15 == 5 && !z11 && z12) {
                    i17 = i16;
                    i18 = iMax;
                    z11 = true;
                }
                i16++;
                i12 = 2;
            }
            if (i17 == i12) {
                iArr = new int[1];
            } else {
                zzko zzkoVar2 = zzkoVarArr[i17];
                int[] iArr5 = new int[1];
                for (int i20 = 0; i20 <= 0; i20++) {
                    iArr5[i20] = zzkoVar2.j(zzcpVarB.b(i20));
                }
                iArr = iArr5;
            }
            int i21 = iArr2[i17];
            zzcpVarArr[i17][i21] = zzcpVarB;
            iArr3[i17][i21] = iArr;
            iArr2[i17] = i21 + 1;
            i14++;
            i12 = 2;
        }
        zzur[] zzurVarArr = new zzur[i12];
        String[] strArr = new String[i12];
        int[] iArr6 = new int[i12];
        int i22 = 0;
        while (i22 < i12) {
            int i23 = iArr2[i22];
            zzurVarArr[i22] = new zzur((zzcp[]) zzew.G(zzcpVarArr[i22], i23));
            iArr3[i22] = (int[][]) zzew.G(iArr3[i22], i23);
            strArr[i22] = zzkoVarArr[i22].s();
            iArr6[i22] = zzkoVarArr[i22].zzb();
            i22++;
            i12 = 2;
        }
        zzwg zzwgVar = new zzwg(strArr, iArr6, zzurVarArr, iArr4, iArr3, new zzur((zzcp[]) zzew.G(zzcpVarArr[2], iArr2[2])));
        Pair pairI = i(zzwgVar, iArr3, iArr4, zzssVar, zzcnVar);
        zzwi[] zzwiVarArr = (zzwi[]) pairI.second;
        List[] listArr = new List[zzwiVarArr.length];
        for (int i24 = 0; i24 < zzwiVarArr.length; i24++) {
            zzwi zzwiVar = zzwiVarArr[i24];
            listArr[i24] = zzwiVar != null ? zzfqk.v(zzwiVar) : zzfqk.u();
        }
        zzfqh zzfqhVar = new zzfqh();
        for (int i25 = 0; i25 < 2; i25++) {
            zzur zzurVarD = zzwgVar.d(i25);
            List list = listArr[i25];
            for (int i26 = 0; i26 < zzurVarD.f20819a; i26++) {
                zzcp zzcpVarB2 = zzurVarD.b(i26);
                boolean z13 = zzwgVar.a(i25, i26, false) != 0;
                int i27 = zzcpVarB2.f13690a;
                int[] iArr7 = new int[1];
                boolean[] zArr = new boolean[1];
                for (int i28 = 0; i28 <= 0; i28++) {
                    iArr7[i28] = zzwgVar.b(i25, i26, i28) & 7;
                    int i29 = 0;
                    while (true) {
                        if (i29 >= list.size()) {
                            z10 = false;
                            break;
                        }
                        zzwi zzwiVar2 = (zzwi) list.get(i29);
                        if (zzwiVar2.b().equals(zzcpVarB2) && zzwiVar2.z(i28) != -1) {
                            z10 = true;
                            break;
                        }
                        i29++;
                    }
                    zArr[i28] = z10;
                }
                zzfqhVar.g(new zzcx(zzcpVarB2, z13, iArr7, zArr));
            }
        }
        zzur zzurVarE = zzwgVar.e();
        for (int i30 = 0; i30 < zzurVarE.f20819a; i30++) {
            zzcp zzcpVarB3 = zzurVarE.b(i30);
            int i31 = zzcpVarB3.f13690a;
            int[] iArr8 = new int[1];
            Arrays.fill(iArr8, 0);
            zzfqhVar.g(new zzcx(zzcpVarB3, false, iArr8, new boolean[1]));
        }
        return new zzwl((zzkp[]) pairI.first, (zzwe[]) pairI.second, new zzcy(zzfqhVar.j()), zzwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void e(Object obj) {
        this.f20947c = (zzwg) obj;
    }

    protected abstract Pair i(zzwg zzwgVar, int[][][] iArr, int[] iArr2, zzss zzssVar, zzcn zzcnVar) throws zzhj;
}
