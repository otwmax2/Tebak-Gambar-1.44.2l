package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfxn implements zzfxc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f18834a = Logger.getLogger(zzfxn.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzfxn f18835b = new zzfxn();

    zzfxn() {
    }

    public static void c() throws GeneralSecurityException {
        zzfxf.p(f18835b);
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final /* synthetic */ Object a(zzfxb zzfxbVar) throws GeneralSecurityException {
        return new zzfxm(zzfxbVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final Class zza() {
        return zzfvo.class;
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final Class zzb() {
        return zzfvo.class;
    }
}
