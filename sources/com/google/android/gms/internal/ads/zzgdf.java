package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgdf {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgdf f19052b = new zzgdf();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference f19053a = new AtomicReference(new zzgei(new zzgec(), null));

    public static zzgdf b() {
        return f19052b;
    }

    public final zzfvx a(zzgdz zzgdzVar, zzfxg zzfxgVar) throws GeneralSecurityException {
        if (((zzgei) this.f19053a.get()).f(zzgdzVar)) {
            return ((zzgei) this.f19053a.get()).a(zzgdzVar, zzfxgVar);
        }
        try {
            return new zzgcw(zzgdzVar, zzfxgVar);
        } catch (GeneralSecurityException e10) {
            throw new zzgej("Creating a LegacyProtoKey failed", e10);
        }
    }

    public final synchronized void c(zzgcn zzgcnVar) throws GeneralSecurityException {
        zzgec zzgecVar = new zzgec((zzgei) this.f19053a.get());
        zzgecVar.a(zzgcnVar);
        this.f19053a.set(new zzgei(zzgecVar, null));
    }

    public final synchronized void d(zzgcr zzgcrVar) throws GeneralSecurityException {
        zzgec zzgecVar = new zzgec((zzgei) this.f19053a.get());
        zzgecVar.b(zzgcrVar);
        this.f19053a.set(new zzgei(zzgecVar, null));
    }

    public final synchronized void e(zzgdj zzgdjVar) throws GeneralSecurityException {
        zzgec zzgecVar = new zzgec((zzgei) this.f19053a.get());
        zzgecVar.c(zzgdjVar);
        this.f19053a.set(new zzgei(zzgecVar, null));
    }

    public final synchronized void f(zzgdn zzgdnVar) throws GeneralSecurityException {
        zzgec zzgecVar = new zzgec((zzgei) this.f19053a.get());
        zzgecVar.d(zzgdnVar);
        this.f19053a.set(new zzgei(zzgecVar, null));
    }
}
