package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class zzfwa implements zzfvy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgcu f18770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class f18771b;

    public zzfwa(zzgcu zzgcuVar, Class cls) {
        if (!zzgcuVar.j().contains(cls) && !Void.class.equals(cls)) {
            throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", zzgcuVar.toString(), cls.getName()));
        }
        this.f18770a = zzgcuVar;
        this.f18771b = cls;
    }

    private final zzfvz g() {
        return new zzfvz(this.f18770a.a());
    }

    private final Object h(zzgrw zzgrwVar) throws GeneralSecurityException {
        if (Void.class.equals(this.f18771b)) {
            throw new GeneralSecurityException("Cannot create a primitive for Void");
        }
        this.f18770a.e(zzgrwVar);
        return this.f18770a.i(zzgrwVar, this.f18771b);
    }

    @Override // com.google.android.gms.internal.ads.zzfvy
    public final Class a() {
        return this.f18771b;
    }

    @Override // com.google.android.gms.internal.ads.zzfvy
    public final zzgky b(zzgpe zzgpeVar) throws GeneralSecurityException {
        try {
            zzgrw zzgrwVarA = g().a(zzgpeVar);
            zzgkv zzgkvVarI = zzgky.I();
            zzgkvVarI.p(this.f18770a.d());
            zzgkvVarI.q(zzgrwVarA.d());
            zzgkvVarI.o(this.f18770a.b());
            return (zzgky) zzgkvVarI.k();
        } catch (zzgqy e10) {
            throw new GeneralSecurityException("Unexpected proto", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfvy
    public final String c() {
        return this.f18770a.d();
    }

    @Override // com.google.android.gms.internal.ads.zzfvy
    public final Object d(zzgrw zzgrwVar) throws GeneralSecurityException {
        String name = this.f18770a.h().getName();
        if (this.f18770a.h().isInstance(zzgrwVar)) {
            return h(zzgrwVar);
        }
        throw new GeneralSecurityException("Expected proto of type ".concat(name));
    }

    @Override // com.google.android.gms.internal.ads.zzfvy
    public final Object e(zzgpe zzgpeVar) throws GeneralSecurityException {
        try {
            return h(this.f18770a.c(zzgpeVar));
        } catch (zzgqy e10) {
            throw new GeneralSecurityException("Failures parsing proto of type ".concat(this.f18770a.h().getName()), e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfvy
    public final zzgrw f(zzgpe zzgpeVar) throws GeneralSecurityException {
        try {
            return g().a(zzgpeVar);
        } catch (zzgqy e10) {
            throw new GeneralSecurityException("Failures parsing proto of type ".concat(this.f18770a.a().e().getName()), e10);
        }
    }
}
