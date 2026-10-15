package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgwh extends zzgwf {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f19693y;

    protected zzgwh(String str) {
        super("mvhd");
    }

    public final int f() {
        if (!this.f19684q) {
            e();
        }
        return this.f19693y;
    }

    protected final long g(ByteBuffer byteBuffer) {
        this.f19693y = zzama.c(byteBuffer.get());
        zzama.d(byteBuffer);
        byteBuffer.get();
        return 4L;
    }
}
