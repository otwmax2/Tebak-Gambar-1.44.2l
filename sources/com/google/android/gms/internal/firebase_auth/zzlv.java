package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzif;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzlv {

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public static final class zza extends zzif<zza, C0106zza> implements zzjp {
        private static final zza zzl;
        private static volatile zzjx<zza> zzm;
        private String zzc = BuildConfig.FLAVOR;
        private String zzd = BuildConfig.FLAVOR;
        private String zze = BuildConfig.FLAVOR;
        private String zzf = BuildConfig.FLAVOR;
        private zzio<String> zzg = zzif.o();
        private String zzh = BuildConfig.FLAVOR;
        private String zzi = BuildConfig.FLAVOR;
        private String zzj = BuildConfig.FLAVOR;
        private String zzk = BuildConfig.FLAVOR;

        /* JADX INFO: renamed from: com.google.android.gms.internal.firebase_auth.zzlv$zza$zza, reason: collision with other inner class name */
        /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
        public static final class C0106zza extends zzif.zza<zza, C0106zza> implements zzjp {
            private C0106zza() {
                super(zza.zzl);
            }

            /* synthetic */ C0106zza(zzlu zzluVar) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zzl = zzaVar;
            zzif.l(zza.class, zzaVar);
        }

        private zza() {
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzif
        protected final Object i(int i10, Object obj, Object obj2) {
            zzlu zzluVar = null;
            switch (zzlu.f22933a[i10 - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0106zza(zzluVar);
                case 3:
                    return zzif.j(zzl, "\u0000\t\u0000\u0000\u0001\u000b\t\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0006Ȉ\u0007Ț\bȈ\tȈ\nȈ\u000bȈ", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
                case 4:
                    return zzl;
                case 5:
                    zzjx<zza> zzcVar = zzm;
                    if (zzcVar == null) {
                        synchronized (zza.class) {
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

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public static final class zzb extends zzif<zzb, zza> implements zzjp {
        private static final zzb zzk;
        private static volatile zzjx<zzb> zzl;
        private long zzd;
        private long zzi;
        private String zzc = BuildConfig.FLAVOR;
        private String zze = BuildConfig.FLAVOR;
        private String zzf = BuildConfig.FLAVOR;
        private String zzg = BuildConfig.FLAVOR;
        private String zzh = BuildConfig.FLAVOR;
        private String zzj = BuildConfig.FLAVOR;

        /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
        public static final class zza extends zzif.zza<zzb, zza> implements zzjp {
            private zza() {
                super(zzb.zzk);
            }

            /* synthetic */ zza(zzlu zzluVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzk = zzbVar;
            zzif.l(zzb.class, zzbVar);
        }

        private zzb() {
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzif
        protected final Object i(int i10, Object obj, Object obj2) {
            zzlu zzluVar = null;
            switch (zzlu.f22933a[i10 - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzluVar);
                case 3:
                    return zzif.j(zzk, "\u0000\b\u0000\u0000\u0001\b\b\u0000\u0000\u0000\u0001Ȉ\u0002\u0002\u0003Ȉ\u0004Ȉ\u0005Ȉ\u0006Ȉ\u0007\u0002\bȈ", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
                case 4:
                    return zzk;
                case 5:
                    zzjx<zzb> zzcVar = zzl;
                    if (zzcVar == null) {
                        synchronized (zzb.class) {
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
}
