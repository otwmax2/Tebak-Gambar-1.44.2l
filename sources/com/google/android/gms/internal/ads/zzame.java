package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Date;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzame extends zzgwh {
    private Date A;
    private long B;
    private long C;
    private double D;
    private float E;
    private zzgwr F;
    private long G;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Date f9513z;

    public zzame() {
        super("mvhd");
        this.D = 1.0d;
        this.E = 1.0f;
        this.F = zzgwr.f19709j;
    }

    @Override // com.google.android.gms.internal.ads.zzgwf
    public final void c(ByteBuffer byteBuffer) {
        g(byteBuffer);
        if (f() == 1) {
            this.f9513z = zzgwm.a(zzama.f(byteBuffer));
            this.A = zzgwm.a(zzama.f(byteBuffer));
            this.B = zzama.e(byteBuffer);
            this.C = zzama.f(byteBuffer);
        } else {
            this.f9513z = zzgwm.a(zzama.e(byteBuffer));
            this.A = zzgwm.a(zzama.e(byteBuffer));
            this.B = zzama.e(byteBuffer);
            this.C = zzama.e(byteBuffer);
        }
        this.D = zzama.b(byteBuffer);
        byteBuffer.get(new byte[2]);
        this.E = ((short) ((r1[1] & 255) | ((short) (65280 & (r1[0] << 8))))) / 256.0f;
        zzama.d(byteBuffer);
        zzama.e(byteBuffer);
        zzama.e(byteBuffer);
        this.F = new zzgwr(zzama.b(byteBuffer), zzama.b(byteBuffer), zzama.b(byteBuffer), zzama.b(byteBuffer), zzama.a(byteBuffer), zzama.a(byteBuffer), zzama.a(byteBuffer), zzama.b(byteBuffer), zzama.b(byteBuffer));
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.G = zzama.e(byteBuffer);
    }

    public final long h() {
        return this.C;
    }

    public final long i() {
        return this.B;
    }

    public final String toString() {
        return "MovieHeaderBox[creationTime=" + this.f9513z + ";modificationTime=" + this.A + ";timescale=" + this.B + ";duration=" + this.C + ";rate=" + this.D + ";volume=" + this.E + ";matrix=" + this.F + ";nextTrackId=" + this.G + "]";
    }
}
