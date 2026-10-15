package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private zzgex f19094a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private zzgok f19095b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private Integer f19096c = null;

    private zzgem() {
    }

    /* synthetic */ zzgem(zzgel zzgelVar) {
    }

    public final zzgem a(zzgok zzgokVar) throws GeneralSecurityException {
        this.f19095b = zzgokVar;
        return this;
    }

    public final zzgem b(@Nullable Integer num) {
        this.f19096c = num;
        return this;
    }

    public final zzgem c(zzgex zzgexVar) {
        this.f19094a = zzgexVar;
        return this;
    }

    public final zzgeo d() throws GeneralSecurityException {
        zzgok zzgokVar;
        zzgoj zzgojVarB;
        zzgex zzgexVar = this.f19094a;
        if (zzgexVar == null || (zzgokVar = this.f19095b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzgexVar.a() != zzgokVar.a()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (zzgexVar.d() && this.f19096c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.f19094a.d() && this.f19096c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.f19094a.c() == zzgev.f19109e) {
            zzgojVarB = zzgoj.b(new byte[0]);
        } else if (this.f19094a.c() == zzgev.f19108d || this.f19094a.c() == zzgev.f19107c) {
            zzgojVarB = zzgoj.b(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f19096c.intValue()).array());
        } else {
            if (this.f19094a.c() != zzgev.f19106b) {
                throw new IllegalStateException("Unknown AesCmacParametersParameters.Variant: ".concat(String.valueOf(this.f19094a.c())));
            }
            zzgojVarB = zzgoj.b(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f19096c.intValue()).array());
        }
        return new zzgeo(this.f19094a, this.f19095b, zzgojVarB, this.f19096c, null);
    }
}
