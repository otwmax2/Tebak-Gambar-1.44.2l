package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfex extends zzgqm implements zzgrx {
    private static final zzfex zzb;
    private zzgqv zzd = zzgqm.u();

    static {
        zzfex zzfexVar = new zzfex();
        zzb = zzfexVar;
        zzgqm.A(zzfex.class, zzfexVar);
    }

    private zzfex() {
    }

    public static zzfeu J() {
        return (zzfeu) zzb.h();
    }

    static /* synthetic */ void M(zzfex zzfexVar, zzfew zzfewVar) {
        zzfewVar.getClass();
        zzgqv zzgqvVar = zzfexVar.zzd;
        if (!zzgqvVar.a()) {
            zzfexVar.zzd = zzgqm.v(zzgqvVar);
        }
        zzfexVar.zzd.add(zzfewVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", zzfew.class});
        }
        if (i11 == 3) {
            return new zzfex();
        }
        zzfet zzfetVar = null;
        if (i11 == 4) {
            return new zzfeu(zzfetVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd.size();
    }
}
