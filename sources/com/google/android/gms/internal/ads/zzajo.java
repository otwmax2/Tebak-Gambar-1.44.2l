package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzajo implements zzajn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FileChannel f9387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f9388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f9389c;

    public zzajo(FileChannel fileChannel, long j10, long j11) {
        this.f9387a = fileChannel;
        this.f9388b = j10;
        this.f9389c = j11;
    }

    @Override // com.google.android.gms.internal.ads.zzajn
    public final void a(MessageDigest[] messageDigestArr, long j10, int i10) throws IOException {
        MappedByteBuffer map = this.f9387a.map(FileChannel.MapMode.READ_ONLY, this.f9388b + j10, i10);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajn
    public final long zza() {
        return this.f9389c;
    }
}
