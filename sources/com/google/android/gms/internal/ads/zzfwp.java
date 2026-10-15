package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfwp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgll f18793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f18794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzggl f18795c = zzggl.f19184b;

    private zzfwp(zzgll zzgllVar, List list) {
        this.f18793a = zzgllVar;
        this.f18794b = list;
    }

    static final zzfwp a(zzgll zzgllVar) throws GeneralSecurityException {
        if (zzgllVar == null || zzgllVar.I() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new zzfwp(zzgllVar, g(zzgllVar));
    }

    public static final zzfwp b(zzfwh zzfwhVar) throws GeneralSecurityException {
        zzgcx zzgcxVar = new zzgcx(zzgea.a(zzfwhVar.a()));
        zzfwm zzfwmVar = new zzfwm();
        zzfwk zzfwkVar = new zzfwk(zzgcxVar, null);
        zzfwkVar.d();
        zzfwkVar.e();
        zzfwmVar.a(zzfwkVar);
        return zzfwmVar.b();
    }

    private static zzgdz e(zzglk zzglkVar) {
        try {
            return zzgdz.a(zzglkVar.J().N(), zzglkVar.J().M(), zzglkVar.J().J(), zzglkVar.M(), zzglkVar.M() == zzgme.RAW ? null : Integer.valueOf(zzglkVar.I()));
        } catch (GeneralSecurityException e10) {
            throw new zzgej("Creating a protokey serialization failed", e10);
        }
    }

    @Nullable
    private static Object f(zzglk zzglkVar, Class cls) throws GeneralSecurityException {
        try {
            return zzfxf.g(zzglkVar.J(), cls);
        } catch (GeneralSecurityException e10) {
            if (e10.getMessage().contains("No key manager found for key type ") || e10.getMessage().contains(" not supported by key manager of type ")) {
                return null;
            }
            throw e10;
        }
    }

    private static List g(zzgll zzgllVar) {
        zzfvx zzfvxVarA;
        int iR;
        zzfwg zzfwgVar;
        ArrayList arrayList = new ArrayList(zzgllVar.I());
        for (zzglk zzglkVar : zzgllVar.P()) {
            int I = zzglkVar.I();
            try {
                zzfvxVarA = zzgdf.b().a(e(zzglkVar), zzfxg.a());
                iR = zzglkVar.R() - 2;
            } catch (GeneralSecurityException unused) {
                arrayList.add(null);
            }
            if (iR == 1) {
                zzfwgVar = zzfwg.f18778b;
            } else if (iR == 2) {
                zzfwgVar = zzfwg.f18779c;
            } else {
                if (iR != 3) {
                    throw new GeneralSecurityException("Unknown key status");
                }
                zzfwgVar = zzfwg.f18780d;
            }
            arrayList.add(new zzfwo(zzfvxVarA, zzfwgVar, I, I == zzgllVar.J(), null));
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Nullable
    private static final Object h(zzfvx zzfvxVar, Class cls) throws GeneralSecurityException {
        try {
            return zzfxf.f(zzfvxVar, cls);
        } catch (GeneralSecurityException unused) {
            return null;
        }
    }

    final zzgll c() {
        return this.f18793a;
    }

    public final Object d(Class cls) throws GeneralSecurityException {
        Class clsE = zzfxf.e(cls);
        if (clsE == null) {
            throw new GeneralSecurityException("No wrapper found for ".concat(cls.getName()));
        }
        zzfxh.b(this.f18793a);
        zzfww zzfwwVar = new zzfww(clsE, null);
        zzfwwVar.c(this.f18795c);
        for (int i10 = 0; i10 < this.f18793a.I(); i10++) {
            zzglk zzglkVarL = this.f18793a.L(i10);
            if (zzglkVarL.R() == 3) {
                Object objF = f(zzglkVarL, clsE);
                Object objH = this.f18794b.get(i10) != null ? h(((zzfwo) this.f18794b.get(i10)).a(), clsE) : null;
                if (zzglkVarL.I() == this.f18793a.J()) {
                    zzfwwVar.b(objH, objF, zzglkVarL);
                } else {
                    zzfwwVar.a(objH, objF, zzglkVarL);
                }
            }
        }
        return zzfxf.k(zzfwwVar.d(), cls);
    }

    public final String toString() {
        return zzfxh.a(this.f18793a).toString();
    }
}
