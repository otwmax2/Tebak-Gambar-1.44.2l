package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfwh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgld f18782a;

    private zzfwh(zzgld zzgldVar) {
        this.f18782a = zzgldVar;
    }

    public static zzfwh e(String str, byte[] bArr, int i10) {
        zzglc zzglcVarI = zzgld.I();
        zzglcVarI.p(str);
        zzglcVarI.q(zzgpe.J(bArr));
        int i11 = i10 - 1;
        zzglcVarI.o(i11 != 0 ? i11 != 1 ? zzgme.RAW : zzgme.LEGACY : zzgme.TINK);
        return new zzfwh((zzgld) zzglcVarI.k());
    }

    final zzgld a() {
        return this.f18782a;
    }

    public final String b() {
        return this.f18782a.N();
    }

    public final byte[] c() {
        return this.f18782a.M().k();
    }

    public final int d() {
        zzgme zzgmeVarL = this.f18782a.L();
        zzgme zzgmeVar = zzgme.UNKNOWN_PREFIX;
        int iOrdinal = zzgmeVarL.ordinal();
        int i10 = 1;
        if (iOrdinal != 1) {
            i10 = 2;
            if (iOrdinal != 2) {
                i10 = 3;
                if (iOrdinal != 3) {
                    if (iOrdinal == 4) {
                        return 4;
                    }
                    throw new IllegalArgumentException("Unknown output prefix type");
                }
            }
        }
        return i10;
    }
}
