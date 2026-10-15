package com.google.android.gms.internal.ads;

import android.util.Base64;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzabh {
    public static int a(int i10) {
        int i11 = 0;
        while (i10 > 0) {
            i10 >>>= 1;
            i11++;
        }
        return i11;
    }

    public static zzbq b(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = (String) list.get(i10);
            String[] strArrJ = zzew.J(str, "=");
            if (strArrJ.length != 2) {
                zzee.e("VorbisUtil", "Failed to parse Vorbis comment: ".concat(String.valueOf(str)));
            } else if (strArrJ[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(zzacu.h(new zzen(Base64.decode(strArrJ[1], 0))));
                } catch (RuntimeException e10) {
                    zzee.f("VorbisUtil", "Failed to parse vorbis picture", e10);
                }
            } else {
                arrayList.add(new zzaek(strArrJ[0], strArrJ[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzbq(arrayList);
    }

    public static zzabe c(zzen zzenVar, boolean z10, boolean z11) throws zzbu {
        if (z10) {
            d(3, zzenVar, false);
        }
        String strF = zzenVar.F((int) zzenVar.y(), zzfnh.f18476c);
        int length = strF.length();
        long jY = zzenVar.y();
        String[] strArr = new String[(int) jY];
        int length2 = length + 15;
        for (int i10 = 0; i10 < jY; i10++) {
            String strF2 = zzenVar.F((int) zzenVar.y(), zzfnh.f18476c);
            strArr[i10] = strF2;
            length2 = length2 + 4 + strF2.length();
        }
        if (z11 && (zzenVar.s() & 1) == 0) {
            throw zzbu.a("framing bit expected to be set", null);
        }
        return new zzabe(strF, strArr, length2 + 1);
    }

    public static boolean d(int i10, zzen zzenVar, boolean z10) throws zzbu {
        if (zzenVar.i() < 7) {
            if (z10) {
                return false;
            }
            throw zzbu.a("too short header: " + zzenVar.i(), null);
        }
        if (zzenVar.s() != i10) {
            if (z10) {
                return false;
            }
            throw zzbu.a("expected header type ".concat(String.valueOf(Integer.toHexString(i10))), null);
        }
        if (zzenVar.s() == 118 && zzenVar.s() == 111 && zzenVar.s() == 114 && zzenVar.s() == 98 && zzenVar.s() == 105 && zzenVar.s() == 115) {
            return true;
        }
        if (z10) {
            return false;
        }
        throw zzbu.a("expected characters 'vorbis'", null);
    }
}
