package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzggh implements zzgfd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgeo f19181a;

    public zzggh(zzgeo zzgeoVar) throws GeneralSecurityException {
        if (!zzgas.a(1)) {
            throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
        }
        this.f19181a = zzgeoVar;
    }
}
