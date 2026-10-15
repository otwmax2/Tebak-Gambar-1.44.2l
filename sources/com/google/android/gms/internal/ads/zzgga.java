package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgga {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Deprecated
    public static final zzgmh f19172a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    public static final zzgmh f19173b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    public static final zzgmh f19174c;

    static {
        new zzgfo();
        zzgmh zzgmhVarJ = zzgmh.J();
        f19172a = zzgmhVarJ;
        f19173b = zzgmhVarJ;
        f19174c = zzgmhVarJ;
        try {
            a();
        } catch (GeneralSecurityException e10) {
            throw new ExceptionInInitializerError(e10);
        }
    }

    public static void a() throws GeneralSecurityException {
        zzggf.c();
        zzgfg.b();
        zzgfo.l(true);
        if (zzgat.b()) {
            return;
        }
        zzges.m(true);
    }
}
