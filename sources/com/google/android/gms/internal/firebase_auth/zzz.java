package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzif;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzz extends zzif<zzz, zza> implements zzjp {
    private static final zzz zzac;
    private static volatile zzjx<zzz> zzad;
    private zzio<zzr> zzaa;
    private zzkw zzab;
    private int zzc;
    private String zzd = BuildConfig.FLAVOR;
    private String zze = BuildConfig.FLAVOR;
    private String zzf = BuildConfig.FLAVOR;
    private zzio<String> zzg = zzif.o();
    private String zzh = BuildConfig.FLAVOR;
    private String zzi = BuildConfig.FLAVOR;
    private String zzj = BuildConfig.FLAVOR;
    private String zzk = BuildConfig.FLAVOR;
    private zzgv zzl;
    private zzgv zzm;
    private int zzn;
    private boolean zzo;
    private long zzp;
    private zzio<zzu> zzq;
    private long zzr;
    private boolean zzs;
    private long zzt;
    private long zzu;
    private String zzv;
    private boolean zzw;
    private String zzx;
    private String zzy;
    private String zzz;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public static final class zza extends zzif.zza<zzz, zza> implements zzjp {
        private zza() {
            super(zzz.zzac);
        }

        /* synthetic */ zza(zzy zzyVar) {
            this();
        }
    }

    static {
        zzz zzzVar = new zzz();
        zzac = zzzVar;
        zzif.l(zzz.class, zzzVar);
    }

    private zzz() {
        zzgv zzgvVar = zzgv.f22647p;
        this.zzl = zzgvVar;
        this.zzm = zzgvVar;
        this.zzq = zzif.o();
        this.zzv = BuildConfig.FLAVOR;
        this.zzx = BuildConfig.FLAVOR;
        this.zzy = BuildConfig.FLAVOR;
        this.zzz = BuildConfig.FLAVOR;
        this.zzaa = zzif.o();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzif
    protected final Object i(int i10, Object obj, Object obj2) {
        zzy zzyVar = null;
        switch (zzy.f22949a[i10 - 1]) {
            case 1:
                return new zzz();
            case 2:
                return new zza(zzyVar);
            case 3:
                return zzif.j(zzac, "\u0001\u0019\u0000\u0001\u0001\u001c\u0019\u0000\u0003\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004\u001a\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဈ\u0005\bဈ\u0006\tည\u0007\nည\b\u000bင\t\fဇ\n\rဂ\u000b\u000e\u001b\u000fဂ\f\u0010ဇ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဈ\u0013\u0019ဈ\u0014\u001a\u001b\u001cဉ\u0015", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", zzu.class, "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzaa", zzr.class, "zzab"});
            case 4:
                return zzac;
            case 5:
                zzjx<zzz> zzcVar = zzad;
                if (zzcVar == null) {
                    synchronized (zzz.class) {
                        zzcVar = zzad;
                        if (zzcVar == null) {
                            zzcVar = new zzif.zzc<>(zzac);
                            zzad = zzcVar;
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
