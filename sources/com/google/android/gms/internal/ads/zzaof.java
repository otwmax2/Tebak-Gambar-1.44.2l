package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaof extends zzgqm implements zzgrx {
    private static final zzaof zzb;
    private int zzd;
    private zzgqv zze = zzgqm.u();
    private zzgpe zzf = zzgpe.f19379p;
    private int zzg = 1;
    private int zzh = 1;

    static {
        zzaof zzaofVar = new zzaof();
        zzb = zzaofVar;
        zzgqm.A(zzaof.class, zzaofVar);
    }

    private zzaof() {
    }

    public static zzaoe I() {
        return (zzaoe) zzb.h();
    }

    static /* synthetic */ void K(zzaof zzaofVar, zzgpe zzgpeVar) {
        zzgqv zzgqvVar = zzaofVar.zze;
        if (!zzgqvVar.a()) {
            zzaofVar.zze = zzgqm.v(zzgqvVar);
        }
        zzaofVar.zze.add(zzgpeVar);
    }

    static /* synthetic */ void L(zzaof zzaofVar, zzgpe zzgpeVar) {
        zzaofVar.zzd |= 1;
        zzaofVar.zzf = zzgpeVar;
    }

    static /* synthetic */ void M(zzaof zzaofVar, int i10) {
        zzaofVar.zzh = i10 - 1;
        zzaofVar.zzd |= 4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002ည\u0000\u0003ဌ\u0001\u0004ဌ\u0002", new Object[]{"zzd", "zze", "zzf", "zzg", zzanz.f9540a, "zzh", zzanx.f9538a});
        }
        if (i11 == 3) {
            return new zzaof();
        }
        zzamu zzamuVar = null;
        if (i11 == 4) {
            return new zzaoe(zzamuVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
