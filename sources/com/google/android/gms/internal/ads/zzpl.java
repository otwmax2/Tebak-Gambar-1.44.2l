package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzpl extends zzra implements zzjq {
    private final Context P0;
    private final zzob Q0;
    private final zzoi R0;
    private int S0;
    private boolean T0;
    private zzaf U0;
    private long V0;
    private boolean W0;
    private boolean X0;
    private boolean Y0;
    private zzkm Z0;

    public zzpl(Context context, zzqt zzqtVar, zzrc zzrcVar, boolean z10, Handler handler, zzoc zzocVar, zzoi zzoiVar) {
        super(1, zzqtVar, zzrcVar, false, 44100.0f);
        this.P0 = context.getApplicationContext();
        this.R0 = zzoiVar;
        this.Q0 = new zzob(handler, zzocVar);
        zzoiVar.W0(new zzpk(this, null));
    }

    private final void J0() {
        long jM0 = this.R0.M0(Y());
        if (jM0 != Long.MIN_VALUE) {
            if (!this.X0) {
                jM0 = Math.max(this.V0, jM0);
            }
            this.V0 = jM0;
            this.X0 = false;
        }
    }

    private final int M0(zzqx zzqxVar, zzaf zzafVar) {
        int i10;
        if (!"OMX.google.raw.decoder".equals(zzqxVar.f20512a) || (i10 = zzew.f17494a) >= 24 || (i10 == 23 && zzew.y(this.P0))) {
            return zzafVar.f8732m;
        }
        return -1;
    }

    private static List N0(zzrc zzrcVar, zzaf zzafVar, boolean z10, zzoi zzoiVar) throws zzrj {
        zzqx zzqxVarD;
        String str = zzafVar.f8731l;
        if (str == null) {
            return zzfqk.u();
        }
        if (zzoiVar.Q0(zzafVar) && (zzqxVarD = zzrp.d()) != null) {
            return zzfqk.v(zzqxVarD);
        }
        List listF = zzrp.f(str, false, false);
        String strE = zzrp.e(zzafVar);
        if (strE == null) {
            return zzfqk.s(listF);
        }
        List listF2 = zzrp.f(strE, false, false);
        zzfqh zzfqhVarO = zzfqk.o();
        zzfqhVarO.i(listF);
        zzfqhVarO.i(listF2);
        return zzfqhVarO.j();
    }

    @Override // com.google.android.gms.internal.ads.zzra, com.google.android.gms.internal.ads.zzha
    protected final void D() {
        this.Y0 = true;
        try {
            this.R0.b();
            try {
                super.D();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.D();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzra, com.google.android.gms.internal.ads.zzha
    protected final void E(boolean z10, boolean z11) throws zzhj {
        super.E(z10, z11);
        this.Q0.f(this.I0);
        A();
        this.R0.T0(C());
    }

    @Override // com.google.android.gms.internal.ads.zzra, com.google.android.gms.internal.ads.zzha
    protected final void F(long j10, boolean z10) throws zzhj {
        super.F(j10, z10);
        this.R0.b();
        this.V0 = j10;
        this.W0 = true;
        this.X0 = true;
    }

    @Override // com.google.android.gms.internal.ads.zzra, com.google.android.gms.internal.ads.zzha
    protected final void G() {
        try {
            super.G();
            if (this.Y0) {
                this.Y0 = false;
                this.R0.h();
            }
        } catch (Throwable th) {
            if (this.Y0) {
                this.Y0 = false;
                this.R0.h();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzha
    protected final void I() {
        this.R0.f();
    }

    @Override // com.google.android.gms.internal.ads.zzra, com.google.android.gms.internal.ads.zzkn
    public final boolean J() {
        return this.R0.v() || super.J();
    }

    @Override // com.google.android.gms.internal.ads.zzha
    protected final void K() {
        J0();
        this.R0.e();
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final float N(float f10, zzaf zzafVar, zzaf[] zzafVarArr) {
        int iMax = -1;
        for (zzaf zzafVar2 : zzafVarArr) {
            int i10 = zzafVar2.f8745z;
            if (i10 != -1) {
                iMax = Math.max(iMax, i10);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return iMax * f10;
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final int O(zzrc zzrcVar, zzaf zzafVar) throws zzrj {
        boolean z10;
        if (!zzbt.g(zzafVar.f8731l)) {
            return 128;
        }
        int i10 = zzew.f17494a >= 21 ? 32 : 0;
        int i11 = zzafVar.E;
        boolean zG0 = zzra.G0(zzafVar);
        if (zG0 && this.R0.Q0(zzafVar) && (i11 == 0 || zzrp.d() != null)) {
            return i10 | 140;
        }
        if (("audio/raw".equals(zzafVar.f8731l) && !this.R0.Q0(zzafVar)) || !this.R0.Q0(zzew.f(2, zzafVar.f8744y, zzafVar.f8745z))) {
            return 129;
        }
        List listN0 = N0(zzrcVar, zzafVar, false, this.R0);
        if (listN0.isEmpty()) {
            return 129;
        }
        if (!zG0) {
            return 130;
        }
        zzqx zzqxVar = (zzqx) listN0.get(0);
        boolean zE = zzqxVar.e(zzafVar);
        if (zE) {
            z10 = true;
        } else {
            for (int i12 = 1; i12 < listN0.size(); i12++) {
                zzqx zzqxVar2 = (zzqx) listN0.get(i12);
                if (zzqxVar2.e(zzafVar)) {
                    zzqxVar = zzqxVar2;
                    z10 = false;
                    zE = true;
                    break;
                }
            }
            z10 = true;
        }
        int i13 = true != zE ? 3 : 4;
        int i14 = 8;
        if (zE && zzqxVar.f(zzafVar)) {
            i14 = 16;
        }
        return i13 | i14 | i10 | (true != zzqxVar.f20518g ? 0 : 64) | (true != z10 ? 0 : 128);
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final zzhc P(zzqx zzqxVar, zzaf zzafVar, zzaf zzafVar2) {
        int i10;
        int i11;
        zzhc zzhcVarB = zzqxVar.b(zzafVar, zzafVar2);
        int i12 = zzhcVarB.f19776e;
        if (M0(zzqxVar, zzafVar2) > this.S0) {
            i12 |= 64;
        }
        String str = zzqxVar.f20512a;
        if (i12 != 0) {
            i11 = i12;
            i10 = 0;
        } else {
            i10 = zzhcVarB.f19775d;
            i11 = 0;
        }
        return new zzhc(str, zzafVar, zzafVar2, i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final zzhc Q(zzjo zzjoVar) throws zzhj {
        zzhc zzhcVarQ = super.Q(zzjoVar);
        this.Q0.g(zzjoVar.f19944a, zzhcVarQ);
        return zzhcVarQ;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00aa  */
    @Override // com.google.android.gms.internal.ads.zzra
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final com.google.android.gms.internal.ads.zzqs T(com.google.android.gms.internal.ads.zzqx r8, com.google.android.gms.internal.ads.zzaf r9, android.media.MediaCrypto r10, float r11) {
        /*
            Method dump skipped, instruction units count: 259
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpl.T(com.google.android.gms.internal.ads.zzqx, com.google.android.gms.internal.ads.zzaf, android.media.MediaCrypto, float):com.google.android.gms.internal.ads.zzqs");
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final List U(zzrc zzrcVar, zzaf zzafVar, boolean z10) throws zzrj {
        return zzrp.g(N0(zzrcVar, zzafVar, false, this.R0), zzafVar);
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void W(Exception exc) {
        zzee.c("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.Q0.a(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void X(String str, zzqs zzqsVar, long j10, long j11) {
        this.Q0.c(str, j10, j11);
    }

    @Override // com.google.android.gms.internal.ads.zzra, com.google.android.gms.internal.ads.zzkn
    public final boolean Y() {
        return super.Y() && this.R0.t();
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void Z(String str) {
        this.Q0.d(str);
    }

    @Override // com.google.android.gms.internal.ads.zzjq
    public final zzby a() {
        return this.R0.a();
    }

    @Override // com.google.android.gms.internal.ads.zzjq
    public final void e(zzby zzbyVar) {
        this.R0.Z0(zzbyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzha, com.google.android.gms.internal.ads.zzkn
    public final zzjq g() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void k0(zzaf zzafVar, MediaFormat mediaFormat) throws zzhj {
        int i10;
        zzaf zzafVar2 = this.U0;
        int[] iArr = null;
        if (zzafVar2 != null) {
            zzafVar = zzafVar2;
        } else if (t0() != null) {
            int iY = "audio/raw".equals(zzafVar.f8731l) ? zzafVar.A : (zzew.f17494a < 24 || !mediaFormat.containsKey("pcm-encoding")) ? mediaFormat.containsKey("v-bits-per-sample") ? zzew.Y(mediaFormat.getInteger("v-bits-per-sample")) : 2 : mediaFormat.getInteger("pcm-encoding");
            zzad zzadVar = new zzad();
            zzadVar.s("audio/raw");
            zzadVar.n(iY);
            zzadVar.c(zzafVar.B);
            zzadVar.d(zzafVar.C);
            zzadVar.e0(mediaFormat.getInteger("channel-count"));
            zzadVar.t(mediaFormat.getInteger("sample-rate"));
            zzaf zzafVarY = zzadVar.y();
            if (this.T0 && zzafVarY.f8744y == 6 && (i10 = zzafVar.f8744y) < 6) {
                iArr = new int[i10];
                for (int i11 = 0; i11 < zzafVar.f8744y; i11++) {
                    iArr[i11] = i11;
                }
            }
            zzafVar = zzafVarY;
        }
        try {
            this.R0.P0(zzafVar, 0, iArr);
        } catch (zzod e10) {
            throw x(e10, e10.f20307o, false, 5001);
        }
    }

    protected final void l0() {
        this.X0 = true;
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void m0() {
        this.R0.c();
    }

    @Override // com.google.android.gms.internal.ads.zzha, com.google.android.gms.internal.ads.zzkj
    public final void n(int i10, Object obj) throws zzhj {
        if (i10 == 2) {
            this.R0.V0(((Float) obj).floatValue());
            return;
        }
        if (i10 == 3) {
            this.R0.S0((zzk) obj);
            return;
        }
        if (i10 == 6) {
            this.R0.Y0((zzl) obj);
            return;
        }
        switch (i10) {
            case 9:
                this.R0.U0(((Boolean) obj).booleanValue());
                break;
            case 10:
                this.R0.R0(((Integer) obj).intValue());
                break;
            case 11:
                this.Z0 = (zzkm) obj;
                break;
            case 12:
                if (zzew.f17494a >= 23) {
                    zzpi.a(this.R0, obj);
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void n0(zzgr zzgrVar) {
        if (!this.W0 || zzgrVar.f()) {
            return;
        }
        if (Math.abs(zzgrVar.f19509e - this.V0) > 500000) {
            this.V0 = zzgrVar.f19509e;
        }
        this.W0 = false;
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final void o0() throws zzhj {
        try {
            this.R0.g();
        } catch (zzoh e10) {
            throw x(e10, e10.f20313q, e10.f20312p, 5002);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final boolean p0(long j10, long j11, zzqu zzquVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, zzaf zzafVar) throws zzhj {
        Objects.requireNonNull(byteBuffer);
        if (this.U0 != null && (i11 & 2) != 0) {
            Objects.requireNonNull(zzquVar);
            zzquVar.n(i10, false);
            return true;
        }
        if (z10) {
            if (zzquVar != null) {
                zzquVar.n(i10, false);
            }
            this.I0.f19765f += i12;
            this.R0.c();
            return true;
        }
        try {
            if (!this.R0.O0(byteBuffer, j12, i12)) {
                return false;
            }
            if (zzquVar != null) {
                zzquVar.n(i10, false);
            }
            this.I0.f19764e += i12;
            return true;
        } catch (zzoe e10) {
            throw x(e10, e10.f20310q, e10.f20309p, 5001);
        } catch (zzoh e11) {
            throw x(e11, zzafVar, e11.f20312p, 5002);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzra
    protected final boolean q0(zzaf zzafVar) {
        return this.R0.Q0(zzafVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkn, com.google.android.gms.internal.ads.zzko
    public final String s() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzjq
    public final long zza() {
        if (f() == 2) {
            J0();
        }
        return this.V0;
    }
}
