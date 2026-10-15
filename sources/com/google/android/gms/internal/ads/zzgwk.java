package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzgwk extends Closeable {
    void D(long j10) throws IOException;

    ByteBuffer E3(long j10, long j11) throws IOException;

    long a() throws IOException;

    int q3(ByteBuffer byteBuffer) throws IOException;

    long zzb() throws IOException;
}
