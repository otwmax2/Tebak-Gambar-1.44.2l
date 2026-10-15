package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzif;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzl extends zzif<zzl, zza> implements zzjp {
    private static final zzl zzf;
    private static volatile zzjx<zzl> zzg;
    private int zzc;
    private String zzd = BuildConfig.FLAVOR;
    private String zze = BuildConfig.FLAVOR;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public static final class zza extends zzif.zza<zzl, zza> implements zzjp {
        private zza() {
            super(zzl.zzf);
        }

        /* synthetic */ zza(zzn zznVar) {
            this();
        }
    }

    static {
        zzl zzlVar = new zzl();
        zzf = zzlVar;
        zzif.l(zzl.class, zzlVar);
    }

    private zzl() {
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzif
    protected final Object i(int i10, Object obj, Object obj2) {
        zzn zznVar = null;
        switch (zzn.f22934a[i10 - 1]) {
            case 1:
                return new zzl();
            case 2:
                return new zza(zznVar);
            case 3:
                return zzif.j(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 4:
                return zzf;
            case 5:
                zzjx<zzl> zzcVar = zzg;
                if (zzcVar == null) {
                    synchronized (zzl.class) {
                        zzcVar = zzg;
                        if (zzcVar == null) {
                            zzcVar = new zzif.zzc<>(zzf);
                            zzg = zzcVar;
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
