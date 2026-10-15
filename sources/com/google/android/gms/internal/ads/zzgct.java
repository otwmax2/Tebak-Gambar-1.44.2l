package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f19038a;

    public zzgct(Class cls) {
        this.f19038a = cls;
    }

    public abstract zzgrw a(zzgrw zzgrwVar) throws GeneralSecurityException;

    public abstract zzgrw b(zzgpe zzgpeVar) throws zzgqy;

    public Map c() throws GeneralSecurityException {
        return Collections.emptyMap();
    }

    public abstract void d(zzgrw zzgrwVar) throws GeneralSecurityException;

    public final Class e() {
        return this.f19038a;
    }
}
