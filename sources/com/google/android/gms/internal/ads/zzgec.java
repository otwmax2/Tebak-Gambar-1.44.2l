package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f19081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f19082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f19083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f19084d;

    public zzgec() {
        this.f19081a = new HashMap();
        this.f19082b = new HashMap();
        this.f19083c = new HashMap();
        this.f19084d = new HashMap();
    }

    public final zzgec a(zzgcn zzgcnVar) throws GeneralSecurityException {
        zzgee zzgeeVar = new zzgee(zzgcnVar.d(), zzgcnVar.c(), null);
        if (this.f19082b.containsKey(zzgeeVar)) {
            zzgcn zzgcnVar2 = (zzgcn) this.f19082b.get(zzgeeVar);
            if (!zzgcnVar2.equals(zzgcnVar) || !zzgcnVar.equals(zzgcnVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(zzgeeVar.toString()));
            }
        } else {
            this.f19082b.put(zzgeeVar, zzgcnVar);
        }
        return this;
    }

    public final zzgec b(zzgcr zzgcrVar) throws GeneralSecurityException {
        zzgeg zzgegVar = new zzgeg(zzgcrVar.b(), zzgcrVar.c(), null);
        if (this.f19081a.containsKey(zzgegVar)) {
            zzgcr zzgcrVar2 = (zzgcr) this.f19081a.get(zzgegVar);
            if (!zzgcrVar2.equals(zzgcrVar) || !zzgcrVar.equals(zzgcrVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(zzgegVar.toString()));
            }
        } else {
            this.f19081a.put(zzgegVar, zzgcrVar);
        }
        return this;
    }

    public final zzgec c(zzgdj zzgdjVar) throws GeneralSecurityException {
        zzgee zzgeeVar = new zzgee(zzgdjVar.c(), zzgdjVar.b(), null);
        if (this.f19084d.containsKey(zzgeeVar)) {
            zzgdj zzgdjVar2 = (zzgdj) this.f19084d.get(zzgeeVar);
            if (!zzgdjVar2.equals(zzgdjVar) || !zzgdjVar.equals(zzgdjVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(zzgeeVar.toString()));
            }
        } else {
            this.f19084d.put(zzgeeVar, zzgdjVar);
        }
        return this;
    }

    public final zzgec d(zzgdn zzgdnVar) throws GeneralSecurityException {
        zzgeg zzgegVar = new zzgeg(zzgdnVar.b(), zzgdnVar.c(), null);
        if (this.f19083c.containsKey(zzgegVar)) {
            zzgdn zzgdnVar2 = (zzgdn) this.f19083c.get(zzgegVar);
            if (!zzgdnVar2.equals(zzgdnVar) || !zzgdnVar.equals(zzgdnVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(zzgegVar.toString()));
            }
        } else {
            this.f19083c.put(zzgegVar, zzgdnVar);
        }
        return this;
    }

    public zzgec(zzgei zzgeiVar) {
        this.f19081a = new HashMap(zzgeiVar.f19089a);
        this.f19082b = new HashMap(zzgeiVar.f19090b);
        this.f19083c = new HashMap(zzgeiVar.f19091c);
        this.f19084d = new HashMap(zzgeiVar.f19092d);
    }
}
