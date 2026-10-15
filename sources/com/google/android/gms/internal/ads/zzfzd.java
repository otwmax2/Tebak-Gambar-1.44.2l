package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfzd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private zzfzn f18900a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private zzgok f18901b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private Integer f18902c = null;

    private zzfzd() {
    }

    /* synthetic */ zzfzd(zzfzc zzfzcVar) {
    }

    public final zzfzd a(@Nullable Integer num) {
        this.f18902c = num;
        return this;
    }

    public final zzfzd b(zzgok zzgokVar) {
        this.f18901b = zzgokVar;
        return this;
    }

    public final zzfzd c(zzfzn zzfznVar) {
        this.f18900a = zzfznVar;
        return this;
    }

    public final zzfzf d() throws GeneralSecurityException {
        zzgok zzgokVar;
        zzgoj zzgojVarB;
        zzfzn zzfznVar = this.f18900a;
        if (zzfznVar == null || (zzgokVar = this.f18901b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzfznVar.a() != zzgokVar.a()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (zzfznVar.c() && this.f18902c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.f18900a.c() && this.f18902c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.f18900a.b() == zzfzl.f18912d) {
            zzgojVarB = zzgoj.b(new byte[0]);
        } else if (this.f18900a.b() == zzfzl.f18911c) {
            zzgojVarB = zzgoj.b(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f18902c.intValue()).array());
        } else {
            if (this.f18900a.b() != zzfzl.f18910b) {
                throw new IllegalStateException("Unknown AesGcmSivParameters.Variant: ".concat(String.valueOf(this.f18900a.b())));
            }
            zzgojVarB = zzgoj.b(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f18902c.intValue()).array());
        }
        return new zzfzf(this.f18900a, this.f18901b, zzgojVarB, this.f18902c, null);
    }
}
