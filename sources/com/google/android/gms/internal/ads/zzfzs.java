package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfzs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzgoj f18920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgdn f18921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzgdj f18922c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzgcr f18923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final zzgcn f18924e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f18925f = 0;

    static {
        zzgoj zzgojVarB = zzgek.b("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        f18920a = zzgojVarB;
        f18921b = zzgdn.a(new zzgdl() { // from class: com.google.android.gms.internal.ads.zzfzo
        }, zzfzn.class, zzgea.class);
        f18922c = zzgdj.a(new zzgdh() { // from class: com.google.android.gms.internal.ads.zzfzp
        }, zzgojVarB, zzgea.class);
        f18923d = zzgcr.a(new zzgcp() { // from class: com.google.android.gms.internal.ads.zzfzq
        }, zzfzf.class, zzgdz.class);
        f18924e = zzgcn.b(new zzgcl() { // from class: com.google.android.gms.internal.ads.zzfzr
            @Override // com.google.android.gms.internal.ads.zzgcl
            public final zzfvx a(zzgeb zzgebVar, zzfxg zzfxgVar) throws GeneralSecurityException {
                zzfzl zzfzlVar;
                int i10 = zzfzs.f18925f;
                if (!((zzgdz) zzgebVar).g().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivParameters.parseParameters");
                }
                try {
                    zzgij zzgijVarL = zzgij.L(((zzgdz) zzgebVar).e(), zzgpy.a());
                    if (zzgijVarL.I() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    zzfzk zzfzkVar = new zzfzk(null);
                    zzfzkVar.a(zzgijVarL.M().o());
                    zzgme zzgmeVarC = ((zzgdz) zzgebVar).c();
                    zzgme zzgmeVar = zzgme.UNKNOWN_PREFIX;
                    int iOrdinal = zzgmeVarC.ordinal();
                    if (iOrdinal == 1) {
                        zzfzlVar = zzfzl.f18910b;
                    } else if (iOrdinal == 2) {
                        zzfzlVar = zzfzl.f18911c;
                    } else if (iOrdinal == 3) {
                        zzfzlVar = zzfzl.f18912d;
                    } else {
                        if (iOrdinal != 4) {
                            throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgmeVarC.zza());
                        }
                        zzfzlVar = zzfzl.f18911c;
                    }
                    zzfzkVar.b(zzfzlVar);
                    zzfzn zzfznVarC = zzfzkVar.c();
                    zzfzd zzfzdVar = new zzfzd(null);
                    zzfzdVar.c(zzfznVarC);
                    zzfzdVar.b(zzgok.b(zzgijVarL.M().k(), zzfxgVar));
                    zzfzdVar.a(((zzgdz) zzgebVar).f());
                    return zzfzdVar.d();
                } catch (zzgqy unused) {
                    throw new GeneralSecurityException("Parsing AesGcmSivKey failed");
                }
            }
        }, zzgojVarB, zzgdz.class);
    }

    public static void a() throws GeneralSecurityException {
        zzgdf zzgdfVarB = zzgdf.b();
        zzgdfVarB.f(f18921b);
        zzgdfVarB.e(f18922c);
        zzgdfVarB.d(f18923d);
        zzgdfVarB.c(f18924e);
    }
}
