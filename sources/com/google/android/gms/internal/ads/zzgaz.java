package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgaz implements zzfxc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f18952a = Logger.getLogger(zzgaz.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgaz f18953b = new zzgaz();

    zzgaz() {
    }

    public static void b() throws GeneralSecurityException {
        zzfxf.p(f18953b);
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final /* synthetic */ Object a(zzfxb zzfxbVar) throws GeneralSecurityException {
        return new zzgay(zzfxbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final Class zza() {
        return zzfvu.class;
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final Class zzb() {
        return zzfvu.class;
    }
}
