package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzkk;
import com.vungle.mediation.BuildConfig;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfb extends zzkk<zzfb, zza> implements zzls {
    private static volatile zzmb<zzfb> zzhk;
    private static final zzfb zzhp;
    private int zzhd;
    private byte zzhi = 2;
    private int zzhe = 1;
    private String zzhm = BuildConfig.FLAVOR;
    private long zzhn = -1;
    private long zzhg = -1;
    private int zzho = -1;

    public static final class zza extends zzkk.zza<zzfb, zza> implements zzls {
        private zza() {
            super(zzfb.zzhp);
        }

        public final zza o(String str) {
            l();
            ((zzfb) this.f22173p).y(str);
            return this;
        }

        public final zza p(long j10) {
            l();
            ((zzfb) this.f22173p).z(j10);
            return this;
        }

        public final zza q(long j10) {
            l();
            ((zzfb) this.f22173p).q(j10);
            return this;
        }

        public final zza r(int i10) {
            l();
            ((zzfb) this.f22173p).A(1);
            return this;
        }

        public final zza s(int i10) {
            l();
            ((zzfb) this.f22173p).B(i10);
            return this;
        }

        /* synthetic */ zza(zzfc zzfcVar) {
            this();
        }
    }

    static {
        zzfb zzfbVar = new zzfb();
        zzhp = zzfbVar;
        zzkk.l(zzfb.class, zzfbVar);
    }

    private zzfb() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(int i10) {
        this.zzhd |= 1;
        this.zzhe = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B(int i10) {
        this.zzhd |= 16;
        this.zzho = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(long j10) {
        this.zzhd |= 8;
        this.zzhg = j10;
    }

    public static zza u() {
        return zzhp.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(String str) {
        Objects.requireNonNull(str);
        this.zzhd |= 2;
        this.zzhm = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z(long j10) {
        this.zzhd |= 4;
        this.zzhn = j10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14, types: [com.google.android.gms.internal.drive.zzkk$zzb, com.google.android.gms.internal.drive.zzmb<com.google.android.gms.internal.drive.zzfb>] */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20 */
    @Override // com.google.android.gms.internal.drive.zzkk
    protected final Object i(int i10, Object obj, Object obj2) {
        ?? r32;
        zzfc zzfcVar = null;
        switch (zzfc.f21962a[i10 - 1]) {
            case 1:
                return new zzfb();
            case 2:
                return new zza(zzfcVar);
            case 3:
                return zzkk.j(zzhp, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0004\u0001Ԅ\u0000\u0002Ԉ\u0001\u0003Ԑ\u0002\u0004Ԑ\u0003\u0005\u0004\u0004", new Object[]{"zzhd", "zzhe", "zzhm", "zzhn", "zzhg", "zzho"});
            case 4:
                return zzhp;
            case 5:
                zzmb<zzfb> zzmbVar = zzhk;
                Object obj3 = zzmbVar;
                if (zzmbVar == null) {
                    synchronized (zzfb.class) {
                        zzmb<zzfb> zzmbVar2 = zzhk;
                        r32 = zzmbVar2;
                        if (zzmbVar2 == null) {
                            ?? zzbVar = new zzkk.zzb(zzhp);
                            zzhk = zzbVar;
                            r32 = zzbVar;
                        }
                        break;
                    }
                    obj3 = r32;
                }
                return obj3;
            case 6:
                return Byte.valueOf(this.zzhi);
            case 7:
                this.zzhi = (byte) (obj == null ? 0 : 1);
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
