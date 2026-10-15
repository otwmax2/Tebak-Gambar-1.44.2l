package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfwf {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f18776b = Logger.getLogger(zzfwf.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentMap f18777a;

    zzfwf() {
        this.f18777a = new ConcurrentHashMap();
    }

    private final synchronized zzfwe g(String str) throws GeneralSecurityException {
        if (!this.f18777a.containsKey(str)) {
            throw new GeneralSecurityException("No key manager found for key type ".concat(String.valueOf(str)));
        }
        return (zzfwe) this.f18777a.get(str);
    }

    private final synchronized void h(zzfwe zzfweVar, boolean z10) throws GeneralSecurityException {
        String strC = zzfweVar.zzb().c();
        zzfwe zzfweVar2 = (zzfwe) this.f18777a.get(strC);
        if (zzfweVar2 != null && !zzfweVar2.a().equals(zzfweVar.a())) {
            f18776b.logp(Level.WARNING, "com.google.crypto.tink.KeyManagerRegistry", "registerKeyManagerContainer", "Attempted overwrite of a registered key manager for key type ".concat(strC));
            throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", strC, zzfweVar2.a().getName(), zzfweVar.a().getName()));
        }
        if (z10) {
            this.f18777a.put(strC, zzfweVar);
        } else {
            this.f18777a.putIfAbsent(strC, zzfweVar);
        }
    }

    final zzfvy a(String str, Class cls) throws GeneralSecurityException {
        zzfwe zzfweVarG = g(str);
        if (zzfweVarG.b().contains(cls)) {
            return zzfweVarG.c(cls);
        }
        String name = cls.getName();
        String strValueOf = String.valueOf(zzfweVarG.a());
        Set<Class> setB = zzfweVarG.b();
        StringBuilder sb = new StringBuilder();
        boolean z10 = true;
        for (Class cls2 : setB) {
            if (!z10) {
                sb.append(", ");
            }
            sb.append(cls2.getCanonicalName());
            z10 = false;
        }
        throw new GeneralSecurityException("Primitive type " + name + " not supported by key manager of type " + strValueOf + ", supported primitives: " + sb.toString());
    }

    final zzfvy b(String str) throws GeneralSecurityException {
        return g(str).zzb();
    }

    final synchronized void c(zzgdy zzgdyVar, zzgcu zzgcuVar) throws GeneralSecurityException {
        Class clsD;
        if (!zzgas.a(1)) {
            throw new GeneralSecurityException("failed to register key manager " + String.valueOf(zzgdyVar.getClass()) + " as it is not FIPS compatible.");
        }
        if (!zzgas.a(zzgcuVar.f())) {
            throw new GeneralSecurityException("failed to register key manager " + String.valueOf(zzgcuVar.getClass()) + " as it is not FIPS compatible.");
        }
        String strD = zzgdyVar.d();
        String strD2 = zzgcuVar.d();
        if (this.f18777a.containsKey(strD) && ((zzfwe) this.f18777a.get(strD)).d() != null && (clsD = ((zzfwe) this.f18777a.get(strD)).d()) != null && !clsD.getName().equals(zzgcuVar.getClass().getName())) {
            f18776b.logp(Level.WARNING, "com.google.crypto.tink.KeyManagerRegistry", "registerAsymmetricKeyManagers", "Attempted overwrite of a registered key manager for key type " + strD + " with inconsistent public key type " + strD2);
            throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", zzgdyVar.getClass().getName(), clsD.getName(), zzgcuVar.getClass().getName()));
        }
        h(new zzfwd(zzgdyVar, zzgcuVar), true);
        h(new zzfwc(zzgcuVar), false);
    }

    final synchronized void d(zzfvy zzfvyVar) throws GeneralSecurityException {
        if (!zzgas.a(1)) {
            throw new GeneralSecurityException("Registering key managers is not supported in FIPS mode");
        }
        h(new zzfwb(zzfvyVar), false);
    }

    final synchronized void e(zzgcu zzgcuVar) throws GeneralSecurityException {
        if (!zzgas.a(zzgcuVar.f())) {
            throw new GeneralSecurityException("failed to register key manager " + String.valueOf(zzgcuVar.getClass()) + " as it is not FIPS compatible.");
        }
        h(new zzfwc(zzgcuVar), false);
    }

    final boolean f(String str) {
        return this.f18777a.containsKey(str);
    }

    zzfwf(zzfwf zzfwfVar) {
        this.f18777a = new ConcurrentHashMap(zzfwfVar.f18777a);
    }
}
