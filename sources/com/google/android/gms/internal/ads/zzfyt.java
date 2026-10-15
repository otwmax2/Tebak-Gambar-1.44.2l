package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfyt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private Integer f18876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private Integer f18877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private Integer f18878c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzfyu f18879d;

    private zzfyt() {
        this.f18876a = null;
        this.f18877b = null;
        this.f18878c = null;
        throw null;
    }

    /* synthetic */ zzfyt(zzfys zzfysVar) {
        this.f18876a = null;
        this.f18877b = null;
        this.f18878c = null;
        this.f18879d = zzfyu.f18882d;
    }

    public final zzfyt a(int i10) throws GeneralSecurityException {
        this.f18877b = 12;
        return this;
    }

    public final zzfyt b(int i10) throws GeneralSecurityException {
        if (i10 != 16 && i10 != 24 && i10 != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i10)));
        }
        this.f18876a = Integer.valueOf(i10);
        return this;
    }

    public final zzfyt c(int i10) throws GeneralSecurityException {
        this.f18878c = 16;
        return this;
    }

    public final zzfyt d(zzfyu zzfyuVar) {
        this.f18879d = zzfyuVar;
        return this;
    }

    public final zzfyw e() throws GeneralSecurityException {
        Integer num = this.f18876a;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (this.f18879d == null) {
            throw new GeneralSecurityException("Variant is not set");
        }
        if (this.f18877b == null) {
            throw new GeneralSecurityException("IV size is not set");
        }
        if (this.f18878c == null) {
            throw new GeneralSecurityException("Tag size is not set");
        }
        int iIntValue = num.intValue();
        this.f18877b.intValue();
        this.f18878c.intValue();
        return new zzfyw(iIntValue, 12, 16, this.f18879d, null);
    }
}
