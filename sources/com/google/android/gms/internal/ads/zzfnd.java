package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfnd extends zzfnc {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final char f18471o;

    zzfnd(char c10) {
        this.f18471o = c10;
    }

    @Override // com.google.android.gms.internal.ads.zzfng
    public final boolean b(char c10) {
        return c10 == this.f18471o;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("CharMatcher.is('");
        int i10 = this.f18471o;
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        for (int i11 = 0; i11 < 4; i11++) {
            cArr[5 - i11] = "0123456789ABCDEF".charAt(i10 & 15);
            i10 >>= 4;
        }
        sb.append(String.copyValueOf(cArr));
        sb.append("')");
        return sb.toString();
    }
}
