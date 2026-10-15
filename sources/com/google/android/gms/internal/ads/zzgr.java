package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class zzgr extends zzgl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzgo f19506b = new zzgo();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ByteBuffer f19507c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f19508d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f19509e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ByteBuffer f19510f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f19511g;

    static {
        zzbh.b("media3.decoder");
    }

    public zzgr(int i10, int i11) {
        this.f19511g = i10;
    }

    private final ByteBuffer l(int i10) {
        int i11 = this.f19511g;
        if (i11 == 1) {
            return ByteBuffer.allocate(i10);
        }
        if (i11 == 2) {
            return ByteBuffer.allocateDirect(i10);
        }
        ByteBuffer byteBuffer = this.f19507c;
        throw new zzgq(byteBuffer == null ? 0 : byteBuffer.capacity(), i10);
    }

    @Override // com.google.android.gms.internal.ads.zzgl
    public void b() {
        super.b();
        ByteBuffer byteBuffer = this.f19507c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f19510f;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f19508d = false;
    }

    @EnsuresNonNull({"data"})
    public final void i(int i10) {
        ByteBuffer byteBuffer = this.f19507c;
        if (byteBuffer == null) {
            this.f19507c = l(i10);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i11 = i10 + iPosition;
        if (iCapacity >= i11) {
            this.f19507c = byteBuffer;
            return;
        }
        ByteBuffer byteBufferL = l(i11);
        byteBufferL.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferL.put(byteBuffer);
        }
        this.f19507c = byteBufferL;
    }

    public final void j() {
        ByteBuffer byteBuffer = this.f19507c;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f19510f;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean k() {
        return d(1073741824);
    }
}
