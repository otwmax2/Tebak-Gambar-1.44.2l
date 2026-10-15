package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzzt implements zzabb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f21212a = new byte[4096];

    @Override // com.google.android.gms.internal.ads.zzabb
    public final void a(zzen zzenVar, int i10, int i11) {
        zzenVar.g(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzabb
    public final /* synthetic */ int b(zzr zzrVar, int i10, boolean z10) {
        return zzaaz.a(this, zzrVar, i10, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzabb
    public final int c(zzr zzrVar, int i10, boolean z10, int i11) throws IOException {
        int iE = zzrVar.e(this.f21212a, 0, Math.min(4096, i10));
        if (iE != -1) {
            return iE;
        }
        if (z10) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.google.android.gms.internal.ads.zzabb
    public final /* synthetic */ void d(zzen zzenVar, int i10) {
        zzaaz.b(this, zzenVar, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzabb
    public final void e(zzaf zzafVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzabb
    public final void f(long j10, int i10, int i11, int i12, zzaba zzabaVar) {
    }
}
