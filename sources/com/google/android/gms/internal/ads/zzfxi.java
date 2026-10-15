package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfxi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f18826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f18827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    public static final zzgmh f18828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Deprecated
    public static final zzgmh f18829d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Deprecated
    public static final zzgmh f18830e;

    static {
        new zzfxq();
        f18826a = "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
        new zzfyr();
        f18827b = "type.googleapis.com/google.crypto.tink.AesGcmKey";
        new zzfzi();
        new zzfya();
        new zzfzy();
        new zzgac();
        new zzfzv();
        new zzgaf();
        zzgmh zzgmhVarJ = zzgmh.J();
        f18828c = zzgmhVarJ;
        f18829d = zzgmhVarJ;
        f18830e = zzgmhVarJ;
        try {
            a();
        } catch (GeneralSecurityException e10) {
            throw new ExceptionInInitializerError(e10);
        }
    }

    public static void a() throws GeneralSecurityException {
        zzfxn.c();
        zzgga.a();
        zzfxf.o(new zzfxq(), true);
        zzfxf.o(new zzfyr(), true);
        zzfzb.a();
        if (zzgat.b()) {
            return;
        }
        zzfxf.o(new zzfya(), true);
        zzfyk.a();
        zzfzi.k(true);
        zzfxf.o(new zzfzv(), true);
        zzfxf.o(new zzfzy(), true);
        zzfxf.o(new zzgac(), true);
        zzfxf.o(new zzgaf(), true);
    }
}
