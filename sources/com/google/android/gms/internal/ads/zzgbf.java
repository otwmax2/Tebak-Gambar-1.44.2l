package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgbf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Deprecated
    public static final zzgmh f18960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    public static final zzgmh f18961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    public static final zzgmh f18962c;

    static {
        new zzgbe();
        new zzgbc();
        f18960a = zzgmh.J();
        f18961b = zzgmh.J();
        f18962c = zzgmh.J();
        try {
            zzgbh.b();
            zzgbj.b();
            zzfxi.a();
            if (zzgat.b()) {
                return;
            }
            zzfxf.m(new zzgbc(), new zzgbe(), true);
            zzfxf.m(new zzgbz(), new zzgcb(), true);
        } catch (GeneralSecurityException e10) {
            throw new ExceptionInInitializerError(e10);
        }
    }
}
