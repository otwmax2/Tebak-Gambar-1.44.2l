package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class zzgmh extends zzgqm implements zzgrx {
    private static final zzgmh zzb;
    private String zzd = BuildConfig.FLAVOR;
    private zzgqv zze = zzgqm.u();

    static {
        zzgmh zzgmhVar = new zzgmh();
        zzb = zzgmhVar;
        zzgqm.A(zzgmh.class, zzgmhVar);
    }

    private zzgmh() {
    }

    public static zzgmh J() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzd", "zze", zzglg.class});
        }
        if (i11 == 3) {
            return new zzgmh();
        }
        zzgmf zzgmfVar = null;
        if (i11 == 4) {
            return new zzgmg(zzgmfVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final List K() {
        return this.zze;
    }
}
