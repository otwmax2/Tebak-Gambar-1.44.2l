package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgcu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f19039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f19040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Class f19041c;

    @SafeVarargs
    protected zzgcu(Class cls, zzgds... zzgdsVarArr) {
        this.f19039a = cls;
        HashMap map = new HashMap();
        for (int i10 = 0; i10 <= 0; i10++) {
            zzgds zzgdsVar = zzgdsVarArr[i10];
            if (map.containsKey(zzgdsVar.b())) {
                throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive ".concat(String.valueOf(zzgdsVar.b().getCanonicalName())));
            }
            map.put(zzgdsVar.b(), zzgdsVar);
        }
        this.f19041c = zzgdsVarArr[0].b();
        this.f19040b = Collections.unmodifiableMap(map);
    }

    public zzgct a() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }

    public abstract zzgkx b();

    public abstract zzgrw c(zzgpe zzgpeVar) throws zzgqy;

    public abstract String d();

    public abstract void e(zzgrw zzgrwVar) throws GeneralSecurityException;

    public int f() {
        return 1;
    }

    public final Class g() {
        return this.f19041c;
    }

    public final Class h() {
        return this.f19039a;
    }

    public final Object i(zzgrw zzgrwVar, Class cls) throws GeneralSecurityException {
        zzgds zzgdsVar = (zzgds) this.f19040b.get(cls);
        if (zzgdsVar != null) {
            return zzgdsVar.a(zzgrwVar);
        }
        throw new IllegalArgumentException("Requested primitive class " + cls.getCanonicalName() + " not supported.");
    }

    public final Set j() {
        return this.f19040b.keySet();
    }
}
