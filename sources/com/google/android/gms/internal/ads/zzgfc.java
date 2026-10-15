package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgfc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzgoj f19118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgdn f19119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzgdj f19120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzgcr f19121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final zzgcn f19122e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f19123f = 0;

    static {
        zzgoj zzgojVarB = zzgek.b("type.googleapis.com/google.crypto.tink.AesCmacKey");
        f19118a = zzgojVarB;
        f19119b = zzgdn.a(new zzgdl() { // from class: com.google.android.gms.internal.ads.zzgey
        }, zzgex.class, zzgea.class);
        f19120c = zzgdj.a(new zzgdh() { // from class: com.google.android.gms.internal.ads.zzgez
        }, zzgojVarB, zzgea.class);
        f19121d = zzgcr.a(new zzgcp() { // from class: com.google.android.gms.internal.ads.zzgfa
        }, zzgeo.class, zzgdz.class);
        f19122e = zzgcn.b(new zzgcl() { // from class: com.google.android.gms.internal.ads.zzgfb
            @Override // com.google.android.gms.internal.ads.zzgcl
            public final zzfvx a(zzgeb zzgebVar, zzfxg zzfxgVar) throws GeneralSecurityException {
                zzgev zzgevVar;
                int i10 = zzgfc.f19123f;
                if (!((zzgdz) zzgebVar).g().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesCmacParameters.parseParameters");
                }
                try {
                    zzggw zzggwVarL = zzggw.L(((zzgdz) zzgebVar).e(), zzgpy.a());
                    if (zzggwVarL.I() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    zzgeu zzgeuVar = new zzgeu(null);
                    zzgeuVar.a(zzggwVarL.N().o());
                    zzgeuVar.b(zzggwVarL.M().I());
                    zzgme zzgmeVarC = ((zzgdz) zzgebVar).c();
                    zzgme zzgmeVar = zzgme.UNKNOWN_PREFIX;
                    int iOrdinal = zzgmeVarC.ordinal();
                    if (iOrdinal == 1) {
                        zzgevVar = zzgev.f19106b;
                    } else if (iOrdinal == 2) {
                        zzgevVar = zzgev.f19108d;
                    } else if (iOrdinal == 3) {
                        zzgevVar = zzgev.f19109e;
                    } else {
                        if (iOrdinal != 4) {
                            throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgmeVarC.zza());
                        }
                        zzgevVar = zzgev.f19107c;
                    }
                    zzgeuVar.c(zzgevVar);
                    zzgex zzgexVarD = zzgeuVar.d();
                    zzgem zzgemVar = new zzgem(null);
                    zzgemVar.c(zzgexVarD);
                    zzgemVar.a(zzgok.b(zzggwVarL.N().k(), zzfxgVar));
                    zzgemVar.b(((zzgdz) zzgebVar).f());
                    return zzgemVar.d();
                } catch (zzgqy | IllegalArgumentException unused) {
                    throw new GeneralSecurityException("Parsing AesCmacKey failed");
                }
            }
        }, zzgojVarB, zzgdz.class);
    }

    public static void a() throws GeneralSecurityException {
        zzgdf zzgdfVarB = zzgdf.b();
        zzgdfVarB.f(f19119b);
        zzgdfVarB.e(f19120c);
        zzgdfVarB.d(f19121d);
        zzgdfVarB.c(f19122e);
    }
}
