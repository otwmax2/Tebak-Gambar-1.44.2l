package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzif;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzkw extends zzif<zzkw, zza> implements zzjp {
    private static final zzkw zze;
    private static volatile zzjx<zzkw> zzf;
    private long zzc;
    private int zzd;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public static final class zza extends zzif.zza<zzkw, zza> implements zzjp {
        private zza() {
            super(zzkw.zze);
        }

        /* synthetic */ zza(zzkv zzkvVar) {
            this();
        }
    }

    static {
        zzkw zzkwVar = new zzkw();
        zze = zzkwVar;
        zzif.l(zzkw.class, zzkwVar);
    }

    private zzkw() {
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzif
    protected final Object i(int i10, Object obj, Object obj2) {
        zzkv zzkvVar = null;
        switch (zzkv.f22869a[i10 - 1]) {
            case 1:
                return new zzkw();
            case 2:
                return new zza(zzkvVar);
            case 3:
                return zzif.j(zze, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004", new Object[]{"zzc", "zzd"});
            case 4:
                return zze;
            case 5:
                zzjx<zzkw> zzcVar = zzf;
                if (zzcVar == null) {
                    synchronized (zzkw.class) {
                        zzcVar = zzf;
                        if (zzcVar == null) {
                            zzcVar = new zzif.zzc<>(zze);
                            zzf = zzcVar;
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
