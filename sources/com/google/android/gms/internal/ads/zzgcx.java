package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgcx extends zzfwu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgea f19045a;

    public zzgcx(zzgea zzgeaVar) {
        this.f19045a = zzgeaVar;
    }

    public final zzgea a() {
        return this.f19045a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgcx)) {
            return false;
        }
        zzgea zzgeaVar = ((zzgcx) obj).f19045a;
        return this.f19045a.b().L().equals(zzgeaVar.b().L()) && this.f19045a.b().N().equals(zzgeaVar.b().N()) && this.f19045a.b().M().equals(zzgeaVar.b().M());
    }

    public final int hashCode() {
        zzgea zzgeaVar = this.f19045a;
        return Arrays.hashCode(new Object[]{zzgeaVar.b(), zzgeaVar.d()});
    }

    public final String toString() {
        Object[] objArr = new Object[2];
        objArr[0] = this.f19045a.b().N();
        zzgme zzgmeVarL = this.f19045a.b().L();
        zzgme zzgmeVar = zzgme.UNKNOWN_PREFIX;
        int iOrdinal = zzgmeVarL.ordinal();
        objArr[1] = iOrdinal != 1 ? iOrdinal != 2 ? iOrdinal != 3 ? iOrdinal != 4 ? "UNKNOWN" : "CRUNCHY" : "RAW" : "LEGACY" : "TINK";
        return String.format("(typeUrl=%s, outputPrefixType=%s)", objArr);
    }
}
