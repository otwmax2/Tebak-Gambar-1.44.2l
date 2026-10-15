package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgdt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f19064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f19065b;

    public zzgdt() {
        this.f19064a = new HashMap();
        this.f19065b = new HashMap();
    }

    public final zzgdt a(zzgdr zzgdrVar) throws GeneralSecurityException {
        zzgdv zzgdvVar = new zzgdv(zzgdrVar.c(), zzgdrVar.d(), null);
        if (this.f19064a.containsKey(zzgdvVar)) {
            zzgdr zzgdrVar2 = (zzgdr) this.f19064a.get(zzgdvVar);
            if (!zzgdrVar2.equals(zzgdrVar) || !zzgdrVar.equals(zzgdrVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: ".concat(zzgdvVar.toString()));
            }
        } else {
            this.f19064a.put(zzgdvVar, zzgdrVar);
        }
        return this;
    }

    public final zzgdt b(zzfxc zzfxcVar) throws GeneralSecurityException {
        Objects.requireNonNull(zzfxcVar, "wrapper must be non-null");
        Map map = this.f19065b;
        Class clsZzb = zzfxcVar.zzb();
        if (map.containsKey(clsZzb)) {
            zzfxc zzfxcVar2 = (zzfxc) this.f19065b.get(clsZzb);
            if (!zzfxcVar2.equals(zzfxcVar) || !zzfxcVar.equals(zzfxcVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type".concat(clsZzb.toString()));
            }
        } else {
            this.f19065b.put(clsZzb, zzfxcVar);
        }
        return this;
    }

    public zzgdt(zzgdx zzgdxVar) {
        this.f19064a = new HashMap(zzgdxVar.f19068a);
        this.f19065b = new HashMap(zzgdxVar.f19069b);
    }
}
