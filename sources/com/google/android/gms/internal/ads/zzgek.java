package com.google.android.gms.internal.ads;

import android.os.Build;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgek {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f19093a = Charset.forName("UTF-8");

    public static int a() {
        SecureRandom secureRandom = new SecureRandom();
        byte[] bArr = new byte[4];
        int i10 = 0;
        while (i10 == 0) {
            secureRandom.nextBytes(bArr);
            i10 = ((bArr[0] & 127) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        }
        return i10;
    }

    public static final zzgoj b(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt < '!' || cCharAt > '~') {
                throw new zzgej("Not a printable ASCII character: " + cCharAt);
            }
            bArr[i10] = (byte) cCharAt;
        }
        return zzgoj.b(bArr);
    }

    @Nullable
    public static Integer c() {
        return Integer.valueOf(Build.VERSION.SDK_INT);
    }
}
