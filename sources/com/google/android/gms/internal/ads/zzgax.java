package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f18946a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    public static final zzgmh f18947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    public static final zzgmh f18948c;

    static {
        new zzgaw();
        f18946a = "type.googleapis.com/google.crypto.tink.AesSivKey";
        f18947b = zzgmh.J();
        f18948c = zzgmh.J();
        try {
            zzgaz.b();
            if (zzgat.b()) {
                return;
            }
            zzfxf.o(new zzgaw(), true);
        } catch (GeneralSecurityException e10) {
            throw new ExceptionInInitializerError(e10);
        }
    }
}
