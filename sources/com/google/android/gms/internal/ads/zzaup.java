package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzaup extends zzaug {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private MessageDigest f9988c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f9989d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f9990e;

    public zzaup(int i10) {
        int i11 = i10 >> 3;
        this.f9989d = (i10 & 7) > 0 ? i11 + 1 : i11;
        this.f9990e = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    public final byte[] b(String str) {
        synchronized (this.f9979a) {
            MessageDigest messageDigestA = a();
            this.f9988c = messageDigestA;
            if (messageDigestA == null) {
                return new byte[0];
            }
            messageDigestA.reset();
            this.f9988c.update(str.getBytes(Charset.forName("UTF-8")));
            byte[] bArrDigest = this.f9988c.digest();
            int length = bArrDigest.length;
            int i10 = this.f9989d;
            if (length > i10) {
                length = i10;
            }
            byte[] bArr = new byte[length];
            System.arraycopy(bArrDigest, 0, bArr, 0, length);
            if ((this.f9990e & 7) > 0) {
                long j10 = 0;
                for (int i11 = 0; i11 < length; i11++) {
                    if (i11 > 0) {
                        j10 <<= 8;
                    }
                    j10 += (long) (bArr[i11] & 255);
                }
                long j11 = j10 >>> (8 - (this.f9990e & 7));
                int i12 = this.f9989d;
                while (true) {
                    i12--;
                    if (i12 < 0) {
                        break;
                    }
                    bArr[i12] = (byte) (255 & j11);
                    j11 >>>= 8;
                }
            }
            return bArr;
        }
    }
}
