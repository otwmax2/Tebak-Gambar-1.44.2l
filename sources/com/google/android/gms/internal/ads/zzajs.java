package com.google.android.gms.internal.ads;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzajs extends zzajt {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final byte[] f9395p;

    public zzajs(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.f9395p = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzajt, java.security.cert.Certificate
    public final byte[] getEncoded() throws CertificateEncodingException {
        return this.f9395p;
    }
}
