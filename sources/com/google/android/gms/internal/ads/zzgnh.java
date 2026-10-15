package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgnh implements zzgnm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgnv f19314a;

    @Override // com.google.android.gms.internal.ads.zzgnm
    public final Object o(String str) throws GeneralSecurityException {
        Iterator it = zzgnn.b("GmsCore_OpenSSL", "AndroidOpenSSL").iterator();
        while (it.hasNext()) {
            try {
                return this.f19314a.a(str, (Provider) it.next());
            } catch (Exception unused) {
            }
        }
        return this.f19314a.a(str, null);
    }
}
