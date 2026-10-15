package j7;

import i7.g;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import k7.c;
import l7.b;

/* JADX INFO: compiled from: AztecWriter.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements g {
    private static b b(String str, i7.a aVar, int i10, int i11, Charset charset, int i12, int i13) {
        if (aVar == i7.a.AZTEC) {
            return c(c.d(str.getBytes(charset), i12, i13), i10, i11);
        }
        throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(aVar)));
    }

    private static b c(k7.a aVar, int i10, int i11) {
        b bVarA = aVar.a();
        if (bVarA == null) {
            throw new IllegalStateException();
        }
        int iH = bVarA.h();
        int iG = bVarA.g();
        int iMax = Math.max(i10, iH);
        int iMax2 = Math.max(i11, iG);
        int iMin = Math.min(iMax / iH, iMax2 / iG);
        int i12 = (iMax - (iH * iMin)) / 2;
        int i13 = (iMax2 - (iG * iMin)) / 2;
        b bVar = new b(iMax, iMax2);
        int i14 = 0;
        while (i14 < iG) {
            int i15 = i12;
            int i16 = 0;
            while (i16 < iH) {
                if (bVarA.f(i16, i14)) {
                    bVar.j(i15, i13, iMin, iMin);
                }
                i16++;
                i15 += iMin;
            }
            i14++;
            i13 += iMin;
        }
        return bVar;
    }

    @Override // i7.g
    public b a(String str, i7.a aVar, int i10, int i11, Map<i7.c, ?> map) {
        Charset charset;
        int i12;
        int i13;
        Charset charsetForName = StandardCharsets.ISO_8859_1;
        if (map != null) {
            i7.c cVar = i7.c.CHARACTER_SET;
            if (map.containsKey(cVar)) {
                charsetForName = Charset.forName(map.get(cVar).toString());
            }
            i7.c cVar2 = i7.c.ERROR_CORRECTION;
            int i14 = map.containsKey(cVar2) ? Integer.parseInt(map.get(cVar2).toString()) : 33;
            i7.c cVar3 = i7.c.AZTEC_LAYERS;
            if (map.containsKey(cVar3)) {
                charset = charsetForName;
                i12 = i14;
                i13 = Integer.parseInt(map.get(cVar3).toString());
                return b(str, aVar, i10, i11, charset, i12, i13);
            }
            charset = charsetForName;
            i12 = i14;
        } else {
            charset = charsetForName;
            i12 = 33;
        }
        i13 = 0;
        return b(str, aVar, i10, i11, charset, i12, i13);
    }
}
