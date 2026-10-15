package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfwm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f18790a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        Iterator it = this.f18790a.iterator();
        while (it.hasNext()) {
            ((zzfwk) it.next()).f18783a = false;
        }
    }

    public final zzfwm a(zzfwk zzfwkVar) {
        if (zzfwkVar.f18788f != null) {
            throw new IllegalStateException("Entry has already been added to a KeysetHandle.Builder");
        }
        if (zzfwkVar.f18783a) {
            d();
        }
        zzfwkVar.f18788f = this;
        this.f18790a.add(zzfwkVar);
        return this;
    }

    public final zzfwp b() throws GeneralSecurityException {
        int iA;
        int i10;
        zzgli zzgliVarK = zzgll.K();
        List list = this.f18790a;
        for (int i11 = 0; i11 < list.size() - 1; i11++) {
            if (((zzfwk) list.get(i11)).f18787e == zzfwl.f18789a && ((zzfwk) list.get(i11 + 1)).f18787e != zzfwl.f18789a) {
                throw new GeneralSecurityException("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
            }
        }
        HashSet hashSet = new HashSet();
        Integer num = null;
        for (zzfwk zzfwkVar : this.f18790a) {
            zzfwg unused = zzfwkVar.f18784b;
            if (zzfwkVar.f18787e == null) {
                throw new GeneralSecurityException("No ID was set (with withFixedId or withRandomId)");
            }
            if (zzfwkVar.f18787e == zzfwl.f18789a) {
                iA = 0;
                while (true) {
                    if (iA != 0 && !hashSet.contains(Integer.valueOf(iA))) {
                        break;
                    }
                    iA = zzgek.a();
                }
            } else {
                zzfwl unused2 = zzfwkVar.f18787e;
                iA = 0;
            }
            Integer numValueOf = Integer.valueOf(iA);
            if (hashSet.contains(numValueOf)) {
                throw new GeneralSecurityException("Id " + iA + " is used twice in the keyset");
            }
            hashSet.add(numValueOf);
            zzfwk.a(zzfwkVar);
            zzfwu zzfwuVar = zzfwkVar.f18786d;
            zzfwg zzfwgVarC = zzfwkVar.c();
            if (zzfwg.f18778b.equals(zzfwgVarC)) {
                i10 = 3;
            } else if (zzfwg.f18779c.equals(zzfwgVarC)) {
                i10 = 4;
            } else {
                if (!zzfwg.f18780d.equals(zzfwgVarC)) {
                    throw new IllegalStateException("Unknown key status");
                }
                i10 = 5;
            }
            zzgea zzgeaVarA = ((zzgcx) zzfwuVar).a();
            zzgky zzgkyVarC = zzfxf.c(zzgeaVarA.b());
            zzglj zzgljVarK = zzglk.K();
            zzgljVarK.p(iA);
            zzgljVarK.r(i10);
            zzgljVarK.o(zzgkyVarC);
            zzgljVarK.q(zzgeaVarA.b().L());
            zzgliVarK.o((zzglk) zzgljVarK.k());
            if (zzfwkVar.f18783a) {
                if (num != null) {
                    throw new GeneralSecurityException("Two primaries were set");
                }
                num = numValueOf;
            }
        }
        if (num == null) {
            throw new GeneralSecurityException("No primary was set");
        }
        zzgliVarK.p(num.intValue());
        return zzfwp.a((zzgll) zzgliVarK.k());
    }
}
