package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfyk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzgoj f18862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgdn f18863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzgdj f18864c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzgcr f18865d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final zzgcn f18866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f18867f = 0;

    static {
        zzgoj zzgojVarB = zzgek.b("type.googleapis.com/google.crypto.tink.AesEaxKey");
        f18862a = zzgojVarB;
        f18863b = zzgdn.a(new zzgdl() { // from class: com.google.android.gms.internal.ads.zzfyg
        }, zzfyf.class, zzgea.class);
        f18864c = zzgdj.a(new zzgdh() { // from class: com.google.android.gms.internal.ads.zzfyh
        }, zzgojVarB, zzgea.class);
        f18865d = zzgcr.a(new zzgcp() { // from class: com.google.android.gms.internal.ads.zzfyi
        }, zzfxx.class, zzgdz.class);
        f18866e = zzgcn.b(new zzgcl() { // from class: com.google.android.gms.internal.ads.zzfyj
            @Override // com.google.android.gms.internal.ads.zzgcl
            public final zzfvx a(zzgeb zzgebVar, zzfxg zzfxgVar) throws GeneralSecurityException {
                zzfyd zzfydVar;
                int i10 = zzfyk.f18867f;
                if (!((zzgdz) zzgebVar).g().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesEaxParameters.parseParameters");
                }
                try {
                    zzghu zzghuVarL = zzghu.L(((zzgdz) zzgebVar).e(), zzgpy.a());
                    if (zzghuVarL.I() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    zzfyc zzfycVar = new zzfyc(null);
                    zzfycVar.b(zzghuVarL.N().o());
                    zzfycVar.a(zzghuVarL.M().I());
                    zzfycVar.c(16);
                    zzgme zzgmeVarC = ((zzgdz) zzgebVar).c();
                    zzgme zzgmeVar = zzgme.UNKNOWN_PREFIX;
                    int iOrdinal = zzgmeVarC.ordinal();
                    if (iOrdinal == 1) {
                        zzfydVar = zzfyd.f18850b;
                    } else if (iOrdinal == 2) {
                        zzfydVar = zzfyd.f18851c;
                    } else if (iOrdinal == 3) {
                        zzfydVar = zzfyd.f18852d;
                    } else {
                        if (iOrdinal != 4) {
                            throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgmeVarC.zza());
                        }
                        zzfydVar = zzfyd.f18851c;
                    }
                    zzfycVar.d(zzfydVar);
                    zzfyf zzfyfVarE = zzfycVar.e();
                    zzfxv zzfxvVar = new zzfxv(null);
                    zzfxvVar.c(zzfyfVarE);
                    zzfxvVar.b(zzgok.b(zzghuVarL.N().k(), zzfxgVar));
                    zzfxvVar.a(((zzgdz) zzgebVar).f());
                    return zzfxvVar.d();
                } catch (zzgqy unused) {
                    throw new GeneralSecurityException("Parsing AesEaxcKey failed");
                }
            }
        }, zzgojVarB, zzgdz.class);
    }

    public static void a() throws GeneralSecurityException {
        zzgdf zzgdfVarB = zzgdf.b();
        zzgdfVarB.f(f18863b);
        zzgdfVarB.e(f18864c);
        zzgdfVarB.d(f18865d);
        zzgdfVarB.c(f18866e);
    }
}
