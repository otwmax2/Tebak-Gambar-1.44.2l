package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgeu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private Integer f19103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private Integer f19104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzgev f19105c;

    private zzgeu() {
        this.f19103a = null;
        this.f19104b = null;
        throw null;
    }

    /* synthetic */ zzgeu(zzget zzgetVar) {
        this.f19103a = null;
        this.f19104b = null;
        this.f19105c = zzgev.f19109e;
    }

    public final zzgeu a(int i10) throws GeneralSecurityException {
        if (i10 != 16 && i10 != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 128-bit and 256-bit AES keys are supported", Integer.valueOf(i10 * 8)));
        }
        this.f19103a = Integer.valueOf(i10);
        return this;
    }

    public final zzgeu b(int i10) throws GeneralSecurityException {
        if (i10 >= 10 && i10 <= 16) {
            this.f19104b = Integer.valueOf(i10);
            return this;
        }
        throw new GeneralSecurityException("Invalid tag size for AesCmacParameters: " + i10);
    }

    public final zzgeu c(zzgev zzgevVar) {
        this.f19105c = zzgevVar;
        return this;
    }

    public final zzgex d() throws GeneralSecurityException {
        Integer num = this.f19103a;
        if (num == null) {
            throw new GeneralSecurityException("key size not set");
        }
        if (this.f19104b == null) {
            throw new GeneralSecurityException("tag size not set");
        }
        if (this.f19105c != null) {
            return new zzgex(num.intValue(), this.f19104b.intValue(), this.f19105c, null);
        }
        throw new GeneralSecurityException("variant not set");
    }
}
