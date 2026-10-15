package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzif;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzr extends zzif<zzr, zza> implements zzjp {
    private static final zzr zzk;
    private static volatile zzjx<zzr> zzl;
    private int zzc;
    private Object zze;
    private Object zzg;
    private zzkw zzj;
    private int zzd = 0;
    private int zzf = 0;
    private String zzh = BuildConfig.FLAVOR;
    private String zzi = BuildConfig.FLAVOR;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public static final class zza extends zzif.zza<zzr, zza> implements zzjp {
        private zza() {
            super(zzr.zzk);
        }

        /* synthetic */ zza(zzs zzsVar) {
            this();
        }
    }

    static {
        zzr zzrVar = new zzr();
        zzk = zzrVar;
        zzif.l(zzr.class, zzrVar);
    }

    private zzr() {
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzif
    protected final Object i(int i10, Object obj, Object obj2) {
        zzs zzsVar = null;
        switch (zzs.f22936a[i10 - 1]) {
            case 1:
                return new zzr();
            case 2:
                return new zza(zzsVar);
            case 3:
                return zzif.j(zzk, "\u0001\u0005\u0002\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ျ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003\u0005ျ\u0001", new Object[]{"zze", "zzd", "zzg", "zzf", "zzc", "zzh", "zzi", "zzj"});
            case 4:
                return zzk;
            case 5:
                zzjx<zzr> zzcVar = zzl;
                if (zzcVar == null) {
                    synchronized (zzr.class) {
                        zzcVar = zzl;
                        if (zzcVar == null) {
                            zzcVar = new zzif.zzc<>(zzk);
                            zzl = zzcVar;
                        }
                        break;
                    }
                }
                return zzcVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
