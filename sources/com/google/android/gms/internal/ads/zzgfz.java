package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgfz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzgoj f19159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgdn f19160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzgdj f19161c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzgcr f19162d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final zzgcn f19163e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f19164f = 0;

    static {
        zzgoj zzgojVarB = zzgek.b("type.googleapis.com/google.crypto.tink.HmacKey");
        f19159a = zzgojVarB;
        f19160b = zzgdn.a(new zzgdl() { // from class: com.google.android.gms.internal.ads.zzgfv
        }, zzgfu.class, zzgea.class);
        f19161c = zzgdj.a(new zzgdh() { // from class: com.google.android.gms.internal.ads.zzgfw
        }, zzgojVarB, zzgea.class);
        f19162d = zzgcr.a(new zzgcp() { // from class: com.google.android.gms.internal.ads.zzgfx
        }, zzgfk.class, zzgdz.class);
        f19163e = zzgcn.b(new zzgcl() { // from class: com.google.android.gms.internal.ads.zzgfy
            @Override // com.google.android.gms.internal.ads.zzgcl
            public final zzfvx a(zzgeb zzgebVar, zzfxg zzfxgVar) throws GeneralSecurityException {
                zzgfr zzgfrVar;
                zzgfs zzgfsVar;
                int i10 = zzgfz.f19164f;
                if (!((zzgdz) zzgebVar).g().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseKey");
                }
                try {
                    zzgjz zzgjzVarM = zzgjz.M(((zzgdz) zzgebVar).e(), zzgpy.a());
                    if (zzgjzVarM.I() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    zzgfq zzgfqVar = new zzgfq(null);
                    zzgfqVar.b(zzgjzVarM.O().o());
                    zzgfqVar.c(zzgjzVarM.N().I());
                    int iN = zzgjzVarM.N().N();
                    zzgme zzgmeVar = zzgme.UNKNOWN_PREFIX;
                    int i11 = iN - 2;
                    if (i11 == 1) {
                        zzgfrVar = zzgfr.f19140b;
                    } else if (i11 == 2) {
                        zzgfrVar = zzgfr.f19143e;
                    } else if (i11 == 3) {
                        zzgfrVar = zzgfr.f19142d;
                    } else if (i11 == 4) {
                        zzgfrVar = zzgfr.f19144f;
                    } else {
                        if (i11 != 5) {
                            throw new GeneralSecurityException("Unable to parse HashType: " + zzgjw.a(iN));
                        }
                        zzgfrVar = zzgfr.f19141c;
                    }
                    zzgfqVar.a(zzgfrVar);
                    zzgme zzgmeVarC = ((zzgdz) zzgebVar).c();
                    int iOrdinal = zzgmeVarC.ordinal();
                    if (iOrdinal == 1) {
                        zzgfsVar = zzgfs.f19146b;
                    } else if (iOrdinal == 2) {
                        zzgfsVar = zzgfs.f19148d;
                    } else if (iOrdinal == 3) {
                        zzgfsVar = zzgfs.f19149e;
                    } else {
                        if (iOrdinal != 4) {
                            throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgmeVarC.zza());
                        }
                        zzgfsVar = zzgfs.f19147c;
                    }
                    zzgfqVar.d(zzgfsVar);
                    zzgfu zzgfuVarE = zzgfqVar.e();
                    zzgfi zzgfiVar = new zzgfi(null);
                    zzgfiVar.c(zzgfuVarE);
                    zzgfiVar.b(zzgok.b(zzgjzVarM.O().k(), zzfxgVar));
                    zzgfiVar.a(((zzgdz) zzgebVar).f());
                    return zzgfiVar.d();
                } catch (zzgqy | IllegalArgumentException unused) {
                    throw new GeneralSecurityException("Parsing HmacKey failed");
                }
            }
        }, zzgojVarB, zzgdz.class);
    }

    public static void a() throws GeneralSecurityException {
        zzgdf zzgdfVarB = zzgdf.b();
        zzgdfVarB.f(f19160b);
        zzgdfVarB.e(f19161c);
        zzgdfVarB.d(f19162d);
        zzgdfVarB.c(f19163e);
    }
}
