package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzgcn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgoj f19031a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class f19032b;

    /* synthetic */ zzgcn(zzgoj zzgojVar, Class cls, zzgcm zzgcmVar) {
        this.f19031a = zzgojVar;
        this.f19032b = cls;
    }

    public static zzgcn b(zzgcl zzgclVar, zzgoj zzgojVar, Class cls) {
        return new zzgck(zzgojVar, cls, zzgclVar);
    }

    public abstract zzfvx a(zzgeb zzgebVar, @Nullable zzfxg zzfxgVar) throws GeneralSecurityException;

    public final zzgoj c() {
        return this.f19031a;
    }

    public final Class d() {
        return this.f19032b;
    }
}
