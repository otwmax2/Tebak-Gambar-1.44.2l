package com.google.android.gms.internal.ads;

import java.io.EOFException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzen f8313a = new zzen(10);

    public final zzbq a(zzzv zzzvVar, zzadm zzadmVar) throws Throwable {
        zzbq zzbqVarA = null;
        int i10 = 0;
        while (true) {
            try {
                ((zzzk) zzzvVar).k(this.f8313a.h(), 0, 10, false);
                this.f8313a.f(0);
                if (this.f8313a.u() != 4801587) {
                    break;
                }
                this.f8313a.g(3);
                int iR = this.f8313a.r();
                int i11 = iR + 10;
                if (zzbqVarA == null) {
                    byte[] bArr = new byte[i11];
                    System.arraycopy(this.f8313a.h(), 0, bArr, 0, 10);
                    ((zzzk) zzzvVar).k(bArr, 10, iR, false);
                    zzbqVarA = zzado.a(bArr, i11, zzadmVar, new zzacp());
                } else {
                    ((zzzk) zzzvVar).n(iR, false);
                }
                i10 += i11;
            } catch (EOFException unused) {
            }
        }
        zzzvVar.h();
        ((zzzk) zzzvVar).n(i10, false);
        return zzbqVarA;
    }
}
