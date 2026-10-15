package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzggf implements zzfxc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f19178a = Logger.getLogger(zzggf.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f19179b = {0};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzggf f19180c = new zzggf();

    zzggf() {
    }

    public static void c() throws GeneralSecurityException {
        zzfxf.p(f19180c);
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final /* bridge */ /* synthetic */ Object a(zzfxb zzfxbVar) throws GeneralSecurityException {
        Iterator it = zzfxbVar.d().iterator();
        while (it.hasNext()) {
            for (zzfwx zzfwxVar : (List) it.next()) {
                if (zzfwxVar.b() instanceof zzggb) {
                    zzggb zzggbVar = (zzggb) zzfwxVar.b();
                    zzgoj zzgojVarB = zzgoj.b(zzfwxVar.g());
                    if (!zzgojVarB.equals(zzggbVar.b())) {
                        throw new GeneralSecurityException("Mac Key with parameters " + String.valueOf(zzggbVar.a()) + " has wrong output prefix (" + zzggbVar.b().toString() + ") instead of (" + zzgojVarB.toString() + ")");
                    }
                }
            }
        }
        return new zzgge(zzfxbVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final Class zza() {
        return zzfws.class;
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final Class zzb() {
        return zzfws.class;
    }
}
