package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgde {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgde f19050b = new zzgde();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference f19051a = new AtomicReference(new zzgdx(new zzgdt(), null));

    zzgde() {
    }

    public static zzgde a() {
        return f19050b;
    }

    public final Class b(Class cls) throws GeneralSecurityException {
        return ((zzgdx) this.f19051a.get()).a(cls);
    }

    public final Object c(zzfvx zzfvxVar, Class cls) throws GeneralSecurityException {
        return ((zzgdx) this.f19051a.get()).b(zzfvxVar, cls);
    }

    public final Object d(zzfxb zzfxbVar, Class cls) throws GeneralSecurityException {
        return ((zzgdx) this.f19051a.get()).c(zzfxbVar, cls);
    }

    public final synchronized void e(zzgdr zzgdrVar) throws GeneralSecurityException {
        zzgdt zzgdtVar = new zzgdt((zzgdx) this.f19051a.get());
        zzgdtVar.a(zzgdrVar);
        this.f19051a.set(new zzgdx(zzgdtVar, null));
    }

    public final synchronized void f(zzfxc zzfxcVar) throws GeneralSecurityException {
        zzgdt zzgdtVar = new zzgdt((zzgdx) this.f19051a.get());
        zzgdtVar.b(zzfxcVar);
        this.f19051a.set(new zzgdx(zzgdtVar, null));
    }
}
