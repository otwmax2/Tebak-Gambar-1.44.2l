package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcce implements zzgwk {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ByteBuffer f11812o;

    zzcce(ByteBuffer byteBuffer) {
        this.f11812o = byteBuffer.duplicate();
    }

    @Override // com.google.android.gms.internal.ads.zzgwk
    public final void D(long j10) throws IOException {
        this.f11812o.position((int) j10);
    }

    @Override // com.google.android.gms.internal.ads.zzgwk
    public final ByteBuffer E3(long j10, long j11) throws IOException {
        int iPosition = this.f11812o.position();
        this.f11812o.position((int) j10);
        ByteBuffer byteBufferSlice = this.f11812o.slice();
        byteBufferSlice.limit((int) j11);
        this.f11812o.position(iPosition);
        return byteBufferSlice;
    }

    @Override // com.google.android.gms.internal.ads.zzgwk
    public final long a() throws IOException {
        return this.f11812o.limit();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.zzgwk
    public final int q3(ByteBuffer byteBuffer) throws IOException {
        if (this.f11812o.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), this.f11812o.remaining());
        byte[] bArr = new byte[iMin];
        this.f11812o.get(bArr);
        byteBuffer.put(bArr);
        return iMin;
    }

    @Override // com.google.android.gms.internal.ads.zzgwk
    public final long zzb() throws IOException {
        return this.f11812o.position();
    }
}
