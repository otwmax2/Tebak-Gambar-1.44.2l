package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzajm implements zzajn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ByteBuffer f9386a;

    public zzajm(ByteBuffer byteBuffer) {
        this.f9386a = byteBuffer.slice();
    }

    @Override // com.google.android.gms.internal.ads.zzajn
    public final void a(MessageDigest[] messageDigestArr, long j10, int i10) throws IOException {
        ByteBuffer byteBufferSlice;
        synchronized (this.f9386a) {
            int i11 = (int) j10;
            this.f9386a.position(i11);
            this.f9386a.limit(i11 + i10);
            byteBufferSlice = this.f9386a.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            byteBufferSlice.position(0);
            messageDigest.update(byteBufferSlice);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajn
    public final long zza() {
        return this.f9386a.capacity();
    }
}
