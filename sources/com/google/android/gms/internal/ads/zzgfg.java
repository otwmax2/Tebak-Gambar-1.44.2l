package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgfg implements zzfxc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzgfg f19125a = new zzgfg();

    private zzgfg() {
    }

    static void b() throws GeneralSecurityException {
        zzfxf.p(f19125a);
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final /* bridge */ /* synthetic */ Object a(zzfxb zzfxbVar) throws GeneralSecurityException {
        if (zzfxbVar.a() == null) {
            throw new GeneralSecurityException("no primary in primitive set");
        }
        Iterator it = zzfxbVar.d().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((List) it.next()).iterator();
            while (it2.hasNext()) {
            }
        }
        return new zzgff(zzfxbVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final Class zza() {
        return zzgfd.class;
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final Class zzb() {
        return zzgfd.class;
    }
}
