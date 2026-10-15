package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.logging.Level;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgge implements zzfws {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfxb f19175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzggm f19176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzggm f19177c;

    /* synthetic */ zzgge(zzfxb zzfxbVar, zzggd zzggdVar) {
        zzggm zzggmVarA;
        this.f19175a = zzfxbVar;
        if (zzfxbVar.f()) {
            zzggn zzggnVarB = zzgdd.a().b();
            zzggs zzggsVarA = zzgda.a(zzfxbVar);
            this.f19176b = zzggnVarB.a(zzggsVarA, "mac", "compute");
            zzggmVarA = zzggnVarB.a(zzggsVarA, "mac", "verify");
        } else {
            zzggmVarA = zzgda.f19046a;
            this.f19176b = zzggmVarA;
        }
        this.f19177c = zzggmVarA;
    }

    @Override // com.google.android.gms.internal.ads.zzfws
    public final void a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        if (length <= 5) {
            throw new GeneralSecurityException("tag too short");
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, 5);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 5, length);
        for (zzfwx zzfwxVar : this.f19175a.e(bArrCopyOf)) {
            try {
                ((zzfws) zzfwxVar.e()).a(bArrCopyOfRange, zzfwxVar.c().equals(zzgme.LEGACY) ? zzgmv.b(bArr2, zzggf.f19179b) : bArr2);
                zzfwxVar.a();
                return;
            } catch (GeneralSecurityException e10) {
                zzggf.f19178a.logp(Level.INFO, "com.google.crypto.tink.mac.MacWrapper$WrappedMac", "verifyMac", "tag prefix matches a key, but cannot verify: ".concat(e10.toString()));
            }
        }
        for (zzfwx zzfwxVar2 : this.f19175a.e(zzfvt.f18764a)) {
            try {
                ((zzfws) zzfwxVar2.e()).a(bArr, bArr2);
                zzfwxVar2.a();
                return;
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new GeneralSecurityException("invalid MAC");
    }

    @Override // com.google.android.gms.internal.ads.zzfws
    public final byte[] a0(byte[] bArr) throws GeneralSecurityException {
        if (this.f19175a.a().c().equals(zzgme.LEGACY)) {
            bArr = zzgmv.b(bArr, zzggf.f19179b);
        }
        try {
            byte[] bArrB = zzgmv.b(this.f19175a.a().g(), ((zzfws) this.f19175a.a().e()).a0(bArr));
            this.f19175a.a().a();
            return bArrB;
        } catch (GeneralSecurityException e10) {
            throw e10;
        }
    }
}
