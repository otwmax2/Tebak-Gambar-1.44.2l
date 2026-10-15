package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfzk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private Integer f18908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzfzl f18909b;

    private zzfzk() {
        this.f18908a = null;
        throw null;
    }

    /* synthetic */ zzfzk(zzfzj zzfzjVar) {
        this.f18908a = null;
        this.f18909b = zzfzl.f18912d;
    }

    public final zzfzk a(int i10) throws GeneralSecurityException {
        if (i10 != 16 && i10 != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(i10)));
        }
        this.f18908a = Integer.valueOf(i10);
        return this;
    }

    public final zzfzk b(zzfzl zzfzlVar) {
        this.f18909b = zzfzlVar;
        return this;
    }

    public final zzfzn c() throws GeneralSecurityException {
        Integer num = this.f18908a;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (this.f18909b != null) {
            return new zzfzn(num.intValue(), this.f18909b, null);
        }
        throw new GeneralSecurityException("Variant is not set");
    }
}
