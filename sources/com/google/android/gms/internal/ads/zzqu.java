package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzqu {
    ByteBuffer G(int i10);

    MediaFormat a();

    void g();

    void h(int i10, long j10);

    void i(int i10, int i11, int i12, long j10, int i13);

    void j();

    void k(int i10, int i11, zzgo zzgoVar, long j10, int i12);

    void l(Surface surface);

    void m(int i10);

    void n(int i10, boolean z10);

    void n0(Bundle bundle);

    int o(MediaCodec.BufferInfo bufferInfo);

    boolean p();

    ByteBuffer w(int i10);

    int zza();
}
