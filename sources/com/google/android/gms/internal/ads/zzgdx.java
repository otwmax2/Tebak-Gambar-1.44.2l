package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgdx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f19068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f19069b;

    /* synthetic */ zzgdx(zzgdt zzgdtVar, zzgdw zzgdwVar) {
        this.f19068a = new HashMap(zzgdtVar.f19064a);
        this.f19069b = new HashMap(zzgdtVar.f19065b);
    }

    public final Class a(Class cls) throws GeneralSecurityException {
        if (this.f19069b.containsKey(cls)) {
            return ((zzfxc) this.f19069b.get(cls)).zza();
        }
        throw new GeneralSecurityException("No input primitive class for " + cls.toString() + " available");
    }

    public final Object b(zzfvx zzfvxVar, Class cls) throws GeneralSecurityException {
        zzgdv zzgdvVar = new zzgdv(zzfvxVar.getClass(), cls, null);
        if (this.f19068a.containsKey(zzgdvVar)) {
            return ((zzgdr) this.f19068a.get(zzgdvVar)).a(zzfvxVar);
        }
        throw new GeneralSecurityException("No PrimitiveConstructor for " + zzgdvVar.toString() + " available");
    }

    public final Object c(zzfxb zzfxbVar, Class cls) throws GeneralSecurityException {
        if (!this.f19069b.containsKey(cls)) {
            throw new GeneralSecurityException("No wrapper found for ".concat(cls.toString()));
        }
        zzfxc zzfxcVar = (zzfxc) this.f19069b.get(cls);
        if (zzfxbVar.c().equals(zzfxcVar.zza()) && zzfxcVar.zza().equals(zzfxbVar.c())) {
            return zzfxcVar.a(zzfxbVar);
        }
        throw new GeneralSecurityException("Input primitive type of the wrapper doesn't match the type of primitives in the provided PrimitiveSet");
    }
}
