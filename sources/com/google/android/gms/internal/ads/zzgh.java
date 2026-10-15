package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgh implements zzfg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfg f19198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f19199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Uri f19200c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map f19201d;

    public zzgh(zzfg zzfgVar) {
        Objects.requireNonNull(zzfgVar);
        this.f19198a = zzfgVar;
        this.f19200c = Uri.EMPTY;
        this.f19201d = Collections.emptyMap();
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        return this.f19198a.a();
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Map b() {
        return this.f19198a.b();
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void d() throws IOException {
        this.f19198a.d();
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) throws IOException {
        int iE = this.f19198a.e(bArr, i10, i11);
        if (iE != -1) {
            this.f19199b += (long) iE;
        }
        return iE;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void f(zzgi zzgiVar) {
        Objects.requireNonNull(zzgiVar);
        this.f19198a.f(zzgiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final long j(zzfl zzflVar) throws IOException {
        this.f19200c = zzflVar.f18368a;
        this.f19201d = Collections.emptyMap();
        long j10 = this.f19198a.j(zzflVar);
        Uri uriA = a();
        Objects.requireNonNull(uriA);
        this.f19200c = uriA;
        this.f19201d = b();
        return j10;
    }

    public final long n() {
        return this.f19199b;
    }

    public final Uri o() {
        return this.f19200c;
    }

    public final Map p() {
        return this.f19201d;
    }
}
