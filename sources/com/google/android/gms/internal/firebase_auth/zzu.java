package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzif;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzu extends zzif<zzu, zza> implements zzjp {
    private static final zzu zzl;
    private static volatile zzjx<zzu> zzm;
    private int zzc;
    private String zzd = BuildConfig.FLAVOR;
    private String zze = BuildConfig.FLAVOR;
    private String zzf = BuildConfig.FLAVOR;
    private String zzg = BuildConfig.FLAVOR;
    private String zzh = BuildConfig.FLAVOR;
    private String zzi = BuildConfig.FLAVOR;
    private String zzj = BuildConfig.FLAVOR;
    private String zzk = BuildConfig.FLAVOR;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public static final class zza extends zzif.zza<zzu, zza> implements zzjp {
        private zza() {
            super(zzu.zzl);
        }

        /* synthetic */ zza(zzt zztVar) {
            this();
        }
    }

    static {
        zzu zzuVar = new zzu();
        zzl = zzuVar;
        zzif.l(zzu.class, zzuVar);
    }

    private zzu() {
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzif
    protected final Object i(int i10, Object obj, Object obj2) {
        zzt zztVar = null;
        switch (zzt.f22937a[i10 - 1]) {
            case 1:
                return new zzu();
            case 2:
                return new zza(zztVar);
            case 3:
                return zzif.j(zzl, "\u0001\b\u0000\u0001\u0001\t\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\tဈ\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
            case 4:
                return zzl;
            case 5:
                zzjx<zzu> zzcVar = zzm;
                if (zzcVar == null) {
                    synchronized (zzu.class) {
                        zzcVar = zzm;
                        if (zzcVar == null) {
                            zzcVar = new zzif.zzc<>(zzl);
                            zzm = zzcVar;
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
