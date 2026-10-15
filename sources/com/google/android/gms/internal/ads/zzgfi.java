package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgfi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private zzgfu f19126a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private zzgok f19127b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private Integer f19128c = null;

    private zzgfi() {
    }

    /* synthetic */ zzgfi(zzgfh zzgfhVar) {
    }

    public final zzgfi a(@Nullable Integer num) {
        this.f19128c = num;
        return this;
    }

    public final zzgfi b(zzgok zzgokVar) {
        this.f19127b = zzgokVar;
        return this;
    }

    public final zzgfi c(zzgfu zzgfuVar) {
        this.f19126a = zzgfuVar;
        return this;
    }

    public final zzgfk d() throws GeneralSecurityException {
        zzgok zzgokVar;
        zzgoj zzgojVarB;
        zzgfu zzgfuVar = this.f19126a;
        if (zzgfuVar == null || (zzgokVar = this.f19127b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzgfuVar.a() != zzgokVar.a()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (zzgfuVar.d() && this.f19128c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.f19126a.d() && this.f19128c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.f19126a.c() == zzgfs.f19149e) {
            zzgojVarB = zzgoj.b(new byte[0]);
        } else if (this.f19126a.c() == zzgfs.f19148d || this.f19126a.c() == zzgfs.f19147c) {
            zzgojVarB = zzgoj.b(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f19128c.intValue()).array());
        } else {
            if (this.f19126a.c() != zzgfs.f19146b) {
                throw new IllegalStateException("Unknown HmacParameters.Variant: ".concat(String.valueOf(this.f19126a.c())));
            }
            zzgojVarB = zzgoj.b(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f19128c.intValue()).array());
        }
        return new zzgfk(this.f19126a, this.f19127b, zzgojVarB, this.f19128c, null);
    }
}
