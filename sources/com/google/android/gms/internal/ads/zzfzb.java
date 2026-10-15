package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfzb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzgoj f18894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgdn f18895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzgdj f18896c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzgcr f18897d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final zzgcn f18898e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f18899f = 0;

    static {
        zzgoj zzgojVarB = zzgek.b("type.googleapis.com/google.crypto.tink.AesGcmKey");
        f18894a = zzgojVarB;
        f18895b = zzgdn.a(new zzgdl() { // from class: com.google.android.gms.internal.ads.zzfyx
        }, zzfyw.class, zzgea.class);
        f18896c = zzgdj.a(new zzgdh() { // from class: com.google.android.gms.internal.ads.zzfyy
        }, zzgojVarB, zzgea.class);
        f18897d = zzgcr.a(new zzgcp() { // from class: com.google.android.gms.internal.ads.zzfyz
        }, zzfyo.class, zzgdz.class);
        f18898e = zzgcn.b(new zzgcl() { // from class: com.google.android.gms.internal.ads.zzfza
            @Override // com.google.android.gms.internal.ads.zzgcl
            public final zzfvx a(zzgeb zzgebVar, zzfxg zzfxgVar) throws GeneralSecurityException {
                zzfyu zzfyuVar;
                int i10 = zzfzb.f18899f;
                if (!((zzgdz) zzgebVar).g().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesGcmParameters.parseParameters");
                }
                try {
                    zzgid zzgidVarL = zzgid.L(((zzgdz) zzgebVar).e(), zzgpy.a());
                    if (zzgidVarL.I() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    zzfyt zzfytVar = new zzfyt(null);
                    zzfytVar.b(zzgidVarL.M().o());
                    zzfytVar.a(12);
                    zzfytVar.c(16);
                    zzgme zzgmeVarC = ((zzgdz) zzgebVar).c();
                    zzgme zzgmeVar = zzgme.UNKNOWN_PREFIX;
                    int iOrdinal = zzgmeVarC.ordinal();
                    if (iOrdinal == 1) {
                        zzfyuVar = zzfyu.f18880b;
                    } else if (iOrdinal == 2) {
                        zzfyuVar = zzfyu.f18881c;
                    } else if (iOrdinal == 3) {
                        zzfyuVar = zzfyu.f18882d;
                    } else {
                        if (iOrdinal != 4) {
                            throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgmeVarC.zza());
                        }
                        zzfyuVar = zzfyu.f18881c;
                    }
                    zzfytVar.d(zzfyuVar);
                    zzfyw zzfywVarE = zzfytVar.e();
                    zzfym zzfymVar = new zzfym(null);
                    zzfymVar.c(zzfywVarE);
                    zzfymVar.b(zzgok.b(zzgidVarL.M().k(), zzfxgVar));
                    zzfymVar.a(((zzgdz) zzgebVar).f());
                    return zzfymVar.d();
                } catch (zzgqy unused) {
                    throw new GeneralSecurityException("Parsing AesGcmKey failed");
                }
            }
        }, zzgojVarB, zzgdz.class);
    }

    public static void a() throws GeneralSecurityException {
        zzgdf zzgdfVarB = zzgdf.b();
        zzgdfVarB.f(f18895b);
        zzgdfVarB.e(f18896c);
        zzgdfVarB.d(f18897d);
        zzgdfVarB.c(f18898e);
    }
}
