package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfyc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private Integer f18846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private Integer f18847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private Integer f18848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzfyd f18849d;

    private zzfyc() {
        this.f18846a = null;
        this.f18847b = null;
        this.f18848c = null;
        throw null;
    }

    /* synthetic */ zzfyc(zzfyb zzfybVar) {
        this.f18846a = null;
        this.f18847b = null;
        this.f18848c = null;
        this.f18849d = zzfyd.f18852d;
    }

    public final zzfyc a(int i10) throws GeneralSecurityException {
        if (i10 != 12 && i10 != 16) {
            throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; acceptable values have 12 or 16 bytes", Integer.valueOf(i10)));
        }
        this.f18847b = Integer.valueOf(i10);
        return this;
    }

    public final zzfyc b(int i10) throws GeneralSecurityException {
        if (i10 != 16 && i10 != 24 && i10 != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i10)));
        }
        this.f18846a = Integer.valueOf(i10);
        return this;
    }

    public final zzfyc c(int i10) throws GeneralSecurityException {
        this.f18848c = 16;
        return this;
    }

    public final zzfyc d(zzfyd zzfydVar) {
        this.f18849d = zzfydVar;
        return this;
    }

    public final zzfyf e() throws GeneralSecurityException {
        Integer num = this.f18846a;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (this.f18847b == null) {
            throw new GeneralSecurityException("IV size is not set");
        }
        if (this.f18849d == null) {
            throw new GeneralSecurityException("Variant is not set");
        }
        if (this.f18848c == null) {
            throw new GeneralSecurityException("Tag size is not set");
        }
        int iIntValue = num.intValue();
        int iIntValue2 = this.f18847b.intValue();
        this.f18848c.intValue();
        return new zzfyf(iIntValue, iIntValue2, 16, this.f18849d, null);
    }
}
