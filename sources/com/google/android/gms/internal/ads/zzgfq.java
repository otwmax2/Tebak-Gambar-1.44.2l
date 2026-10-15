package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgfq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private Integer f19136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private Integer f19137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzgfr f19138c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzgfs f19139d;

    private zzgfq() {
        this.f19136a = null;
        this.f19137b = null;
        this.f19138c = null;
        throw null;
    }

    /* synthetic */ zzgfq(zzgfp zzgfpVar) {
        this.f19136a = null;
        this.f19137b = null;
        this.f19138c = null;
        this.f19139d = zzgfs.f19149e;
    }

    public final zzgfq a(zzgfr zzgfrVar) {
        this.f19138c = zzgfrVar;
        return this;
    }

    public final zzgfq b(int i10) throws GeneralSecurityException {
        this.f19136a = Integer.valueOf(i10);
        return this;
    }

    public final zzgfq c(int i10) throws GeneralSecurityException {
        this.f19137b = Integer.valueOf(i10);
        return this;
    }

    public final zzgfq d(zzgfs zzgfsVar) {
        this.f19139d = zzgfsVar;
        return this;
    }

    public final zzgfu e() throws GeneralSecurityException {
        Integer num = this.f19136a;
        if (num == null) {
            throw new GeneralSecurityException("key size is not set");
        }
        if (this.f19137b == null) {
            throw new GeneralSecurityException("tag size is not set");
        }
        if (this.f19138c == null) {
            throw new GeneralSecurityException("hash type is not set");
        }
        if (this.f19139d == null) {
            throw new GeneralSecurityException("variant is not set");
        }
        if (num.intValue() < 16) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 16 bytes", this.f19136a));
        }
        int iIntValue = this.f19137b.intValue();
        zzgfr zzgfrVar = this.f19138c;
        if (iIntValue < 10) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", Integer.valueOf(iIntValue)));
        }
        if (zzgfrVar == zzgfr.f19140b) {
            if (iIntValue > 20) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", Integer.valueOf(iIntValue)));
            }
        } else if (zzgfrVar == zzgfr.f19141c) {
            if (iIntValue > 28) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", Integer.valueOf(iIntValue)));
            }
        } else if (zzgfrVar == zzgfr.f19142d) {
            if (iIntValue > 32) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", Integer.valueOf(iIntValue)));
            }
        } else if (zzgfrVar == zzgfr.f19143e) {
            if (iIntValue > 48) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", Integer.valueOf(iIntValue)));
            }
        } else {
            if (zzgfrVar != zzgfr.f19144f) {
                throw new GeneralSecurityException("unknown hash type; must be SHA256, SHA384 or SHA512");
            }
            if (iIntValue > 64) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", Integer.valueOf(iIntValue)));
            }
        }
        return new zzgfu(this.f19136a.intValue(), this.f19137b.intValue(), this.f19139d, this.f19138c, null);
    }
}
