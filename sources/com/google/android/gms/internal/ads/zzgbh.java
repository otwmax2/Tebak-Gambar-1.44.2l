package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgbh implements zzfxc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f18965a = Logger.getLogger(zzgbh.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgbh f18966b = new zzgbh();

    zzgbh() {
    }

    public static void b() throws GeneralSecurityException {
        zzfxf.p(f18966b);
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final /* synthetic */ Object a(zzfxb zzfxbVar) throws GeneralSecurityException {
        return new zzgbg(zzfxbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final Class zza() {
        return zzfvv.class;
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final Class zzb() {
        return zzfvv.class;
    }
}
