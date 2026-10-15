package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfym {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private zzfyw f18868a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private zzgok f18869b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private Integer f18870c = null;

    private zzfym() {
    }

    /* synthetic */ zzfym(zzfyl zzfylVar) {
    }

    public final zzfym a(@Nullable Integer num) {
        this.f18870c = num;
        return this;
    }

    public final zzfym b(zzgok zzgokVar) {
        this.f18869b = zzgokVar;
        return this;
    }

    public final zzfym c(zzfyw zzfywVar) {
        this.f18868a = zzfywVar;
        return this;
    }

    public final zzfyo d() throws GeneralSecurityException {
        zzgok zzgokVar;
        zzgoj zzgojVarB;
        zzfyw zzfywVar = this.f18868a;
        if (zzfywVar == null || (zzgokVar = this.f18869b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzfywVar.a() != zzgokVar.a()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (zzfywVar.c() && this.f18870c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.f18868a.c() && this.f18870c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.f18868a.b() == zzfyu.f18882d) {
            zzgojVarB = zzgoj.b(new byte[0]);
        } else if (this.f18868a.b() == zzfyu.f18881c) {
            zzgojVarB = zzgoj.b(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f18870c.intValue()).array());
        } else {
            if (this.f18868a.b() != zzfyu.f18880b) {
                throw new IllegalStateException("Unknown AesGcmParameters.Variant: ".concat(String.valueOf(this.f18868a.b())));
            }
            zzgojVarB = zzgoj.b(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f18870c.intValue()).array());
        }
        return new zzfyo(this.f18868a, this.f18869b, zzgojVarB, this.f18870c, null);
    }
}
