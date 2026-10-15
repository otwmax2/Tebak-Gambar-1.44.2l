package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzccf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f11813a;

    public final long a(ByteBuffer byteBuffer) {
        zzame zzameVar;
        zzamd zzamdVar;
        long j10 = this.f11813a;
        if (j10 > 0) {
            return j10;
        }
        try {
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            byteBufferDuplicate.flip();
            Iterator it = new zzalz(new zzcce(byteBufferDuplicate), zzcch.f11814c).f().iterator();
            while (true) {
                zzameVar = null;
                if (!it.hasNext()) {
                    zzamdVar = null;
                    break;
                }
                zzamb zzambVar = (zzamb) it.next();
                if (zzambVar instanceof zzamd) {
                    zzamdVar = (zzamd) zzambVar;
                    break;
                }
            }
            Iterator it2 = zzamdVar.f().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                zzamb zzambVar2 = (zzamb) it2.next();
                if (zzambVar2 instanceof zzame) {
                    zzameVar = (zzame) zzambVar2;
                    break;
                }
            }
            long jH = (zzameVar.h() * 1000) / zzameVar.i();
            this.f11813a = jH;
            return jH;
        } catch (IOException | RuntimeException unused) {
            return 0L;
        }
    }
}
