package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzamf extends zzgwf {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    ByteBuffer f9514y;

    public zzamf(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.zzgwf
    public final void c(ByteBuffer byteBuffer) {
        this.f9514y = byteBuffer;
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }
}
