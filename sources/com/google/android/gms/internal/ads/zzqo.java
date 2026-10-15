package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzqo extends zzgr {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f20493h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f20494i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f20495j;

    public zzqo() {
        super(2, 0);
        this.f20495j = 32;
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzgl
    public final void b() {
        super.b();
        this.f20494i = 0;
    }

    public final int m() {
        return this.f20494i;
    }

    public final long n() {
        return this.f20493h;
    }

    public final void o(int i10) {
        this.f20495j = i10;
    }

    public final boolean p(zzgr zzgrVar) {
        ByteBuffer byteBuffer;
        zzdl.d(!zzgrVar.d(1073741824));
        zzdl.d(!zzgrVar.d(268435456));
        zzdl.d(!zzgrVar.d(4));
        if (q()) {
            if (this.f20494i >= this.f20495j || zzgrVar.d(Integer.MIN_VALUE) != d(Integer.MIN_VALUE)) {
                return false;
            }
            ByteBuffer byteBuffer2 = zzgrVar.f19507c;
            if (byteBuffer2 != null && (byteBuffer = this.f19507c) != null && byteBuffer.position() + byteBuffer2.remaining() > 3072000) {
                return false;
            }
        }
        int i10 = this.f20494i;
        this.f20494i = i10 + 1;
        if (i10 == 0) {
            this.f19509e = zzgrVar.f19509e;
            if (zzgrVar.d(1)) {
                c(1);
            }
        }
        if (zzgrVar.d(Integer.MIN_VALUE)) {
            c(Integer.MIN_VALUE);
        }
        ByteBuffer byteBuffer3 = zzgrVar.f19507c;
        if (byteBuffer3 != null) {
            i(byteBuffer3.remaining());
            this.f19507c.put(byteBuffer3);
        }
        this.f20493h = zzgrVar.f19509e;
        return true;
    }

    public final boolean q() {
        return this.f20494i > 0;
    }
}
