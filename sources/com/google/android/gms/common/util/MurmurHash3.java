package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class MurmurHash3 {
    private MurmurHash3() {
    }

    @KeepForSdk
    public static int a(byte[] bArr, int i10, int i11, int i12) {
        int i13 = (i11 & (-4)) + i10;
        while (i10 < i13) {
            int i14 = ((bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | (bArr[i10 + 3] << 24)) * (-862048943);
            int i15 = i12 ^ (((i14 << 15) | (i14 >>> 17)) * 461845907);
            i12 = (((i15 >>> 19) | (i15 << 13)) * 5) - 430675100;
            i10 += 4;
        }
        int i16 = i11 & 3;
        if (i16 == 1) {
            int i17 = ((bArr[i13] & 255) | i) * (-862048943);
            i12 ^= ((i17 >>> 17) | (i17 << 15)) * 461845907;
        } else {
            if (i16 != 2) {
                i = i16 == 3 ? (bArr[i13 + 2] & 255) << 16 : 0;
            }
            i |= (bArr[i13 + 1] & 255) << 8;
            int i172 = ((bArr[i13] & 255) | i) * (-862048943);
            i12 ^= ((i172 >>> 17) | (i172 << 15)) * 461845907;
        }
        int i18 = i12 ^ i11;
        int i19 = (i18 ^ (i18 >>> 16)) * (-2048144789);
        int i20 = (i19 ^ (i19 >>> 13)) * (-1028477387);
        return i20 ^ (i20 >>> 16);
    }
}
