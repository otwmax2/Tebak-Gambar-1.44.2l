package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgnx {
    public static String a(byte[] bArr) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b10 : bArr) {
            int i10 = b10 & 255;
            sb.append("0123456789abcdef".charAt(i10 >> 4));
            sb.append("0123456789abcdef".charAt(i10 & 15));
        }
        return sb.toString();
    }
}
