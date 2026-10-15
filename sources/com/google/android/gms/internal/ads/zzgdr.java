package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgdr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f19061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class f19062b;

    /* synthetic */ zzgdr(Class cls, Class cls2, zzgdq zzgdqVar) {
        this.f19061a = cls;
        this.f19062b = cls2;
    }

    public static zzgdr b(zzgdp zzgdpVar, Class cls, Class cls2) {
        return new zzgdo(cls, cls2, zzgdpVar);
    }

    public abstract Object a(zzfvx zzfvxVar) throws GeneralSecurityException;

    public final Class c() {
        return this.f19061a;
    }

    public final Class d() {
        return this.f19062b;
    }
}
