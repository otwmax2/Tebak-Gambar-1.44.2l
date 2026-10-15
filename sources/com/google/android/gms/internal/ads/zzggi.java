package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzggi implements zzgfd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgfk f19182a;

    public zzggi(zzgfk zzgfkVar) throws GeneralSecurityException {
        if (!zzgas.a(2)) {
            throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
        this.f19182a = zzgfkVar;
    }
}
