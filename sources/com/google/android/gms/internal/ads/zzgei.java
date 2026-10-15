package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgei {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f19089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f19090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f19091c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f19092d;

    /* synthetic */ zzgei(zzgec zzgecVar, zzgeh zzgehVar) {
        this.f19089a = new HashMap(zzgecVar.f19081a);
        this.f19090b = new HashMap(zzgecVar.f19082b);
        this.f19091c = new HashMap(zzgecVar.f19083c);
        this.f19092d = new HashMap(zzgecVar.f19084d);
    }

    public final zzfvx a(zzgeb zzgebVar, @Nullable zzfxg zzfxgVar) throws GeneralSecurityException {
        zzgee zzgeeVar = new zzgee(zzgebVar.getClass(), zzgebVar.d(), null);
        if (this.f19090b.containsKey(zzgeeVar)) {
            return ((zzgcn) this.f19090b.get(zzgeeVar)).a(zzgebVar, zzfxgVar);
        }
        throw new GeneralSecurityException("No Key Parser for requested key type " + zzgeeVar.toString() + " available");
    }

    public final boolean f(zzgeb zzgebVar) {
        return this.f19090b.containsKey(new zzgee(zzgebVar.getClass(), zzgebVar.d(), null));
    }
}
