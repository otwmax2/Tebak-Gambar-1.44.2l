package com.google.android.play.core.assetpacks;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class n0 {
    static int a(byte[] bArr, int i10) {
        return ((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255);
    }

    static long b(byte[] bArr, int i10) {
        return ((long) ((a(bArr, i10 + 2) << 16) | a(bArr, i10))) & 4294967295L;
    }
}
