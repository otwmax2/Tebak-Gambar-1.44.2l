package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfxv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private zzfyf f18838a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private zzgok f18839b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private Integer f18840c = null;

    private zzfxv() {
    }

    /* synthetic */ zzfxv(zzfxu zzfxuVar) {
    }

    public final zzfxv a(@Nullable Integer num) {
        this.f18840c = num;
        return this;
    }

    public final zzfxv b(zzgok zzgokVar) {
        this.f18839b = zzgokVar;
        return this;
    }

    public final zzfxv c(zzfyf zzfyfVar) {
        this.f18838a = zzfyfVar;
        return this;
    }

    public final zzfxx d() throws GeneralSecurityException {
        zzgok zzgokVar;
        zzgoj zzgojVarB;
        zzfyf zzfyfVar = this.f18838a;
        if (zzfyfVar == null || (zzgokVar = this.f18839b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzfyfVar.a() != zzgokVar.a()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (zzfyfVar.c() && this.f18840c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.f18838a.c() && this.f18840c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.f18838a.b() == zzfyd.f18852d) {
            zzgojVarB = zzgoj.b(new byte[0]);
        } else if (this.f18838a.b() == zzfyd.f18851c) {
            zzgojVarB = zzgoj.b(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f18840c.intValue()).array());
        } else {
            if (this.f18838a.b() != zzfyd.f18850b) {
                throw new IllegalStateException("Unknown AesEaxParameters.Variant: ".concat(String.valueOf(this.f18838a.b())));
            }
            zzgojVarB = zzgoj.b(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f18840c.intValue()).array());
        }
        return new zzfxx(this.f18838a, this.f18839b, zzgojVarB, this.f18840c, null);
    }
}
